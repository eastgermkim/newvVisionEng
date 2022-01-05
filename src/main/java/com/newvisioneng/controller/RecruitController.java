package com.newvisioneng.controller;


import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.newvisioneng.domain.Criteria;
import com.newvisioneng.domain.NoticeDTO;
import com.newvisioneng.domain.RecruitDTO;
import com.newvisioneng.domain.PageDTO;
import com.newvisioneng.service.RecruitService;
import com.newvisioneng.util.FileUtils;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/recruit/*")
//고객지원 탭 
public class RecruitController {
	
	@Setter(onMethod_=@Autowired)
	private RecruitService service;
	
	//채용공고========================================================================================================================================================

	//채용공고 페이지로 연결(전체 목록 가져오기)
	@GetMapping("/list")
	public String recruit(Model model, Criteria cri, HttpServletRequest req) {
		log.info("------recruit_list-------");
		
		//DB 검색
		int recruitTotal = service.getRecruitTotal(cri);
		List<RecruitDTO> recruitList = service.getRecruitList(cri);
		
		//DB 검색
		model.addAttribute("recruit_list",recruitList);
		model.addAttribute("pageMaker",new PageDTO(recruitTotal, cri));
		
		if(cri.getS_keyword()!=null) {
			log.info("검색............."+cri.getS_type()+"..."+cri.getS_keyword());
		}
		log.info("글 개수..................."+recruitTotal);
		
		return "/recruit/recruit";
	}
	
	//채용공고 게시글 하나 클릭시 or 주소창에 /support/recruit/글번호 쳤을시 
	@GetMapping("/list/{recruitNum}")
	public String recruit_detail(@PathVariable("recruitNum") Long recruitNum,@ModelAttribute("cri") Criteria cri, Model model) throws Exception {
		RecruitDTO recruit = service.recruitGet(recruitNum);
		model.addAttribute("recruit",recruit);
		
		List<Map<String, Object>> fileList = service.readRecruitFile(recruitNum);
		model.addAttribute("file", fileList);
		
		RecruitDTO prevRecruit = service.recruitGet(recruit.getPrevRecruitNum());
		RecruitDTO nextRecruit = service.recruitGet(recruit.getNextRecruitNum());
		model.addAttribute("prevRecruit",prevRecruit);
		model.addAttribute("nextRecruit",nextRecruit);
		
		return "/recruit/recruit_detail";
	}
	
	//채용공고 게시글 파일 다운로드시
	@PostMapping("/recruitFiledown")
	public void download(HttpServletRequest req, HttpServletResponse response, 
			@RequestParam(value="FILE_SYSTEMNAME") String systemName,  
			@RequestParam(value="FILE_ORGNAME") String orgName) 
		throws Exception {
		
			//다운로드 받을 파일이 위치한곳
			String location = "resources/files/recruit_files/";
			
			//파일 다운로드 메소드
			FileUtils.fileDownload(location, systemName, orgName, req, response);
    }
	
	//페이지 벗어나면 ajax를 통해 unload로 사용 
	//글 등록에 사용안된 이미지 삭제(파일,DB 함께)
	@PostMapping("/deleteUnusedImgs")
	public void deleteUnusedImgs(HttpServletRequest req) {
		service.deleteUnusedImgs(req);
	}
	
	//채용공고 글 등록 view단으로 이동하는 요청
	@GetMapping("/recruit_write")
	public void recruit_write(@ModelAttribute("cri") Criteria cri, HttpServletRequest req) {
	}
	
	
	//채용공고 글 등록 메소드
	@PostMapping("/recruit_writeOK")
	public ModelAndView recruit_writeOK(RecruitDTO recruitDTO, RedirectAttributes ra, MultipartFile[] file,HttpServletRequest req) throws Exception {
		
		ModelAndView mav = new ModelAndView();

		System.out.println("제목 : "+recruitDTO.getRecruitTitle());
		System.out.println("작성자 : "+recruitDTO.getRecruitWriter());
		System.out.println("내용 : "+recruitDTO.getRecruitContents());

		//글 등록, 등록한 글의 번호 담아주기
		long recruitnum = service.recruitRegist(recruitDTO,file,req);
		
		//이미지 삽입시 이미지DB에 등록되었던 것 중
		//RecruitContents에 확정적으로 들어간 DB값에 recruitnum 넣어주기
		service.updateRecruitNumToImgDB(recruitDTO.getRecruitContents(),recruitnum);
		
		try {
			Thread.sleep(300);
			System.out.println("0.3초후............등록안된 이미지 삭제...");
			//사용안된 이미지 삭제(파일,DB 함께) - DB에 글번호가 NULL인것들
			service.deleteUnusedImgs(req);
			
		}catch(InterruptedException e){
			//sleep 메소드가 발생하는 InterruptedException 
			System.out.println(e.getMessage());
		}
		
		mav = new ModelAndView("redirect:/recruit/list/"+recruitnum);
				
        return mav;
	}
	
	//채용공고 글 수정 view단으로 이동(현재글 recruitnum 들고)
	@GetMapping("/recruit_modify/{recruitNum}")
	public String recruit_modify(@PathVariable("recruitNum") long recruitNum, @ModelAttribute("cri") Criteria cri, Model model) throws Exception{
		RecruitDTO recruit = service.recruitGet(recruitNum);
		model.addAttribute("recruit",recruit);
		
		List<Map<String, Object>> fileList = service.readRecruitFile(recruitNum);
		model.addAttribute("file", fileList);
		
		System.out.println("fileList....................."+fileList);
		
		return "/recruit/recruit_modify";
	}
	
	//채용공고 글 수정 중에 기존 파일 삭제시
	@PostMapping("/recruit_modify_fileDelete")
	public void recruit_modify_fileDelete(@RequestParam(value = "FILESYSTEMNAME", required=false) String fileSystemName, HttpServletResponse response, HttpServletRequest req) throws Exception{
		
			File file = new File(req.getServletContext().getRealPath("/")
					+"resources/files/"+"recruit_files/" + fileSystemName);
			Map<String, String> map = new HashMap<String,String>();
			
			log.info("삭제하려는 파일................." + fileSystemName);
			
			
			if(file.exists()){ 
				if(file.delete()){ 
					service.deleteRecruitFile(fileSystemName);
					log.info("삭제된 파일................." + fileSystemName);
					map.put("success","파일 삭제 성공");
				}else{
					log.info("삭제실패");
					map.put("fail","파일 삭제 실패");
				}
			}else{ 
				log.info("파일이 존재하지 않습니다." + fileSystemName);
				service.deleteRecruitFile(fileSystemName);
				map.put("not exist","존재하지 않는 파일");
		}
	}
	
	//채용공고 수정 완료 메소드
	@PostMapping("/recruit_modifyOK")
	public ModelAndView recruit_modifyOK(RecruitDTO recruit, @RequestParam("recruitNum") Long recruitnum, Criteria cri,RedirectAttributes ra, MultipartFile[] file,HttpServletRequest req) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		//채용공고DB,파일DB수정
		//(+이미지DB의 recruitnum 일단 다시 NULL로 변경)
		service.modifyRecruit(recruit,file,req);
		
		//이미지 삽입시 이미지DB에 등록되었던 것 중
		//RecruitContents에 확정적으로 들어간 DB값에 recruitnum 넣어주기
		service.updateRecruitNumToImgDB(recruit.getRecruitContents(),recruitnum);
		
		
		try {
			Thread.sleep(300);
			System.out.println("0.3초후............등록안된 이미지 삭제...");
			//사용안된 이미지 삭제(파일,DB 함께) - DB에 글번호가 NULL인것들
			service.deleteUnusedImgs(req);
			
		}catch(InterruptedException e){
			//sleep 메소드가 발생하는 InterruptedException 
			System.out.println(e.getMessage());
		}

		mav = new ModelAndView("redirect:/recruit/list/"+recruitnum + cri.getListLink());
		return mav;
	}
	
	@PostMapping("/recruit_delete")
	public String recruit_delete(@RequestParam("recruitNum") Long recruitnum, 
			@RequestParam(value = "file_systemname", required=false) String[] file_systemname, Criteria cri,
			RedirectAttributes ra, HttpServletRequest req) {
	
		log.info("recruit_delete : " + recruitnum);
		
		if(file_systemname != null) {
			for(int i = 0; i < file_systemname.length; i++) {
				File file = new File(req.getServletContext().getRealPath("/")+"resources/files/"+"recruit_files/" + file_systemname[i]);
				System.out.println(file);
				
				if(file.exists()){ 
					if(file.delete()){ 
						System.out.println((i+1)+"번째 "+"파일삭제 성공"); 
					}else{
						System.out.println((i+1)+"번째 "+"파일삭제 실패"); 
					}
				}else{ 
					System.out.println((i+1)+"번째  "+"파일이 존재하지 않습니다."); 
				}
			}
		}
		
		if(service.removeRecruit(recruitnum)) {
			//Session의 Flash에 담아준다.
			ra.addFlashAttribute("result", "success");
		}

		return"redirect:/recruit/list" + cri.getListLink(); 
	}
}
