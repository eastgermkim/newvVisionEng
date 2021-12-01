package com.newvisioneng.controller;


import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.activation.CommandMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
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
import com.newvisioneng.domain.EmailDTO;
import com.newvisioneng.domain.NewsVO;
import com.newvisioneng.domain.NoticeDTO;
import com.newvisioneng.domain.PageDTO;
import com.newvisioneng.service.SupportService;
import com.newvisioneng.util.FileUtils;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/support/*")
//고객지원 탭 
public class SupportController {
	
	@Setter(onMethod_=@Autowired)
	private SupportService service;
	
	//공지사항========================================================================================================================================================
	
	//공지사항 페이지로 연결(전체 목록 가져오기)
	@GetMapping("/notice")
	public void notice(Model model, Criteria cri, HttpServletRequest req) {
		log.info("------list-------");
		//DB 검색
		model.addAttribute("notice_list",service.getNoticeList(cri));
		model.addAttribute("pageMaker",new PageDTO(service.getNoticeTotal(cri), cri));
		
		//사용안된 이미지 삭제(파일,DB 함께)
		service.deleteUnusedImgs(req);
	}
	
	//공지사항 게시글 하나 클릭시 or 주소창에 /support/notice/글번호 쳤을시 
	@GetMapping("/notice/{noticeNum}")
	public String notice_detail(@PathVariable("noticeNum") Long noticeNum, Model model) throws Exception {
		NoticeDTO notice = service.noticeGet(noticeNum);
		model.addAttribute("notice",notice);
		
		List<Map<String, Object>> fileList = service.readNoticeFile(noticeNum);
		model.addAttribute("file", fileList);
		
		return "/support/notice_detail";
	}
	//공지사항 게시글 파일 다운로드시
	@PostMapping("/noticeFiledown")
	public void download(HttpServletRequest req, HttpServletResponse response, 
			@RequestParam(value="FILE_SYSTEMNAME") String systemName,  
			@RequestParam(value="FILE_ORGNAME") String orgName) 
		throws Exception {
		
			//다운로드 받을 파일이 위치한곳
			String location = "resources/files/notice_files/";
			
			//파일 다운로드 메소드
			FileUtils.fileDownload(location, systemName, orgName, req, response);
    }
	
	//페이지 벗어나면 ajax를 통해 unload로 사용 
	//글 등록에 사용안된 이미지 삭제(파일,DB 함께)
	@PostMapping("/deleteUnusedImgs")
	public void deleteUnusedImgs(HttpServletRequest req) {
		service.deleteUnusedImgs(req);
	}
	
	//공지사항 글 등록 view단으로 이동하는 요청
	@GetMapping("/notice_write")
	public void notice_write(HttpServletRequest req) {
	}
	
	
	
	//공지사항 글 등록 메소드
	@PostMapping("/notice_writeOK")
	public ModelAndView notice_writeOK(NoticeDTO noticedto,RedirectAttributes ra, MultipartFile[] file,HttpServletRequest req) throws Exception {
		
		ModelAndView mav = new ModelAndView();

		System.out.println("제목 : "+noticedto.getNoticeTitle());
		System.out.println("작성자 : "+noticedto.getNoticeWriter());
		System.out.println("내용 : "+noticedto.getNoticeContents());

		//글 등록, 등록한 글의 번호 담아주기
		long noticenum = service.noticeRegist(noticedto,file,req);
		
		//이미지 삽입시 이미지DB에 등록되었던 것 중
		//NoticeContents에 확정적으로 들어간 DB값에 noticenum 넣어주기
		service.updateNoticeNumToImgDB(noticedto.getNoticeContents(),noticenum);
		
		//새롭게 등록한 게시글의 번호를 같이 전달하기 위해서는
		//Model 대신 RedirectAttributes를 사용한다.
/*		ra.addFlashAttribute("notice",noticedto);
		ra.addFlashAttribute("noticenum",noticenum);*/
		
		mav = new ModelAndView("redirect:/support/notice/"+noticenum);
		
		//사용안된 이미지 삭제(파일,DB 함께)
		service.deleteUnusedImgs(req);
				
        return mav;
	}
	
	//공지사항 글 수정 view단으로 이동(현재글 noticenum 들고)
	@GetMapping("/notice_modify/{noticeNum}")
	public String notice_modify(@PathVariable("noticeNum") long noticeNum,Model model) throws Exception{
		NoticeDTO notice = service.noticeGet(noticeNum);
		model.addAttribute("notice",notice);
		
		List<Map<String, Object>> fileList = service.readNoticeFile(noticeNum);
		model.addAttribute("file", fileList);
		
		System.out.println("fileList....................."+fileList);
		
		return "/support/notice_modify";
	}
	
	//공지사항 글 수정 중에 기존 파일 삭제시
	@PostMapping("/notice_modify_fileDelete")
	public void notice_modify_fileDelete(@RequestParam(value = "FILESYSTEMNAME", required=false) String fileSystemName, HttpServletResponse response, HttpServletRequest req) throws Exception{
		
			File file = new File(req.getServletContext().getRealPath("/")
					+"resources/files/"+"notice_files/" + fileSystemName);
			Map<String, String> map = new HashMap<String,String>();
			
			log.info("삭제하려는 파일................." + fileSystemName);
			
			
			if(file.exists()){ 
				if(file.delete()){ 
					service.deleteNoticeFile(fileSystemName);
					log.info("삭제된 파일................." + fileSystemName);
					map.put("success","파일 삭제 성공");
				}else{
					log.info("삭제실패");
					map.put("fail","파일 삭제 실패");
				}
			}else{ 
				log.info("파일이 존재하지 않습니다." + fileSystemName);
				service.deleteNoticeFile(fileSystemName);
				map.put("not exist","존재하지 않는 파일");
		}
	}
	
	//공지사항 수정 완료 메소드
	@PostMapping("/notice_modifyOK")
	public ModelAndView notice_modifyOK(NoticeDTO notice, @RequestParam("noticeNum") Long noticenum,RedirectAttributes ra, MultipartFile[] file,HttpServletRequest req) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		//공지사항DB,파일DB수정
		//(+이미지DB의 noticenum 일단 다시 NULL로 변경)
		service.modifyNotice(notice,file,req);
		
		//이미지 삽입시 이미지DB에 등록되었던 것 중
		//NoticeContents에 확정적으로 들어간 DB값에 noticenum 넣어주기
		service.updateNoticeNumToImgDB(notice.getNoticeContents(),noticenum);
		
		mav = new ModelAndView("redirect:/support/notice/"+noticenum);
		
		//사용안된 이미지 삭제(파일,DB 함께) - DB에 글번호가 NULL인것들
		service.deleteUnusedImgs(req);
		
		return mav;
	}
	
	@PostMapping("/notice_delete")
	public String notice_delete(@RequestParam("noticeNum") Long noticenum, 
			@RequestParam(value = "file_systemname", required=false) String[] file_systemname, 
			RedirectAttributes ra, HttpServletRequest req) {
	
		log.info("notice_delete : " + noticenum);
		
		if(file_systemname != null) {
			for(int i = 0; i < file_systemname.length; i++) {
				File file = new File(req.getServletContext().getRealPath("/")+"resources/files/"+"notice_files/" + file_systemname[i]);
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
		
		if(service.removeNotice(noticenum)) {
			//Session의 Flash에 담아준다.
			ra.addFlashAttribute("result", "success");
		}
		
		return"redirect:/support/notice"; 
	}
	//============================================================================================================================================================
	
	//이메일 문의 페이지로 연결
	@GetMapping("/customer")
	public void email() {
	}
	 
	 //메일 발송 메소드
	 @RequestMapping("send.do") 
	 public String send(@ModelAttribute EmailDTO dto, RedirectAttributes attr) {
		 try {
			 
			 //수신받을 이메일 지정 nv3000@nate.com으로 바뀔 예정
			 dto.setToMail("eastgerm@nate.com");;
			/* System.out.println("내용:......................"+dto.getContent());*/
			 
			// dto(메일관련 정보)를 sendMail에 저장함
			 service.sendMail(dto); 
			 attr.addFlashAttribute("message","이메일 전송이 성공하였습니다!");
			 
		 } catch (Exception e) {
			 e.printStackTrace();
			 attr.addFlashAttribute("message","이메일 전송이 실패하였습니다! 잠시 후 다시 시도해주세요.");
		 }
		 
		// 실패했으므로 다시 write jsp 페이지로 이동함
		 return "redirect:/support/customer"; 
	 }
	}
