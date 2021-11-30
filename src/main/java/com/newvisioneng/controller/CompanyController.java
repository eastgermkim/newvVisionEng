package com.newvisioneng.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.mapper.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.newvisioneng.domain.Criteria;
import com.newvisioneng.domain.NewsVO;
import com.newvisioneng.domain.NoticeDTO;
import com.newvisioneng.domain.PageDTO;
import com.newvisioneng.service.CompanyService;
import com.newvisioneng.util.FileUtils;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/company/*")
//New Vision ENG 탭 
public class CompanyController {

	@Setter(onMethod_=@Autowired)
	private CompanyService service;
	
	//회사소개 페이지로 연결
	@GetMapping("/introduce")
	public void introduce() {
		
	}
	
	//언론보도 페이지로 연결
	@GetMapping("/news")
	public void news(Model model, Criteria cri) {
		model.addAttribute("news_list", service.getNewsList(cri));
		model.addAttribute("news_count", service.getNewsTotal(cri));
		model.addAttribute("pageMaker", new PageDTO(service.getNewsTotal(cri), cri));
	}
	
	//보도현황 게시글 하나 클릭시 상세 정보 조회
	@GetMapping("/news/{newsNum}")
	public String news_detail(@PathVariable("newsNum") Long newsNum,Model model) throws Exception {
		NewsVO news = service.news_get(newsNum);
		model.addAttribute("news",news);
		
		List<Map<String, Object>> fileList = service.readNewsFile(newsNum);
		model.addAttribute("file", fileList);
		
		if(news.getNewsLink() == null) {
			return "/company/news_detail";
		}else {
			return "redirect:"+news.getNewsLink();
		}
		
	}
	
	//보도자료 게시글 파일 다운로드시
	@PostMapping("/newsFiledown")
	public void download(HttpServletRequest req, HttpServletResponse response, 
			@RequestParam(value="FILE_SYSTEMNAME") String systemName,  
			@RequestParam(value="FILE_ORGNAME") String orgName) 
		throws Exception {
		
			//다운로드 받을 파일이 위치한곳
			String location = "resources/files/news_files/";
			
			//파일 다운로드 메소드
			FileUtils.fileDownload(location, systemName, orgName, req, response);
    }
	
	//언론보도 페이지 글 등록 view단으로 이동하는 요청
	@GetMapping("/news_write")
	public void news_write(HttpServletRequest req) {
		//남은 임시파일 삭제
		service.deleteUnusedImgs(req);
	}
	
	//찌꺼기 삭제 테스트하기
	@PostMapping("/news_tempDelete")
	public void news_tempDelete(HttpServletRequest req) {
		//남은 임시파일 삭제
		service.deleteUnusedImgs(req);
	}
	
	//글 작성 메소드
	@PostMapping("/news_writeOK")
	public ModelAndView notice_writeOK(NewsVO newsvo,RedirectAttributes ra, MultipartFile[] file,HttpServletRequest req) throws Exception {
		if(newsvo.getNewsLink().equals("")) {
			newsvo.setNewsLink(null);
		}
		
		ModelAndView mav = new ModelAndView();

		System.out.println("날짜 : ");
		System.out.println("제목 : "+newsvo.getNewsTitle());
		System.out.println("작성자 : "+newsvo.getNewsWriter());
		System.out.println("내용 : "+newsvo.getNewsContents());

		long newsnum = service.newsRegist(newsvo,file,req);
		
		//이미지 삽입시 이미지DB에 등록되었던 것 중
		//NewsContents에 확정적으로 들어간 DB값에 newsNum 넣어주기
		service.updateNewsNumToImgDB(newsvo.getNewsContents(),newsnum);
		
		//새롭게 등록한 게시글의 번호를 같이 전달하기 위해서는
		//Model 대신 RedirectAttributes를 사용한다.
		
		if(newsvo.getNewsLink() == null) {
			mav = new ModelAndView("redirect:/company/news/"+newsnum);
			return mav;
		}
		else {
			String url = "redirect:/company/news";
			return new ModelAndView(url);
		}
	}
	
	//언론보도 페이지 글 등록 view단으로 이동하는 요청
	@GetMapping("/news_modify/{newsNum}")
	public String news_modify(@PathVariable("newsNum") Long newsNum,Model model) throws Exception {
		NewsVO news = service.news_get(newsNum);
		model.addAttribute("news",news);
		
		List<Map<String, Object>> fileList = service.readNewsFile(newsNum);
		model.addAttribute("file", fileList);
		
		System.out.println("fileList....................."+fileList);
		
			return "/company/news_modify";
	}
	
	//보도자료 파일 삭제
		@PostMapping("/news_modify_delete")
		public void news_modify_delete(@RequestParam(value = "FILESYSTEMNAME", required=false) String fileSystemName, HttpServletResponse response, HttpServletRequest req) throws Exception{
			
					File file = new File(req.getServletContext().getRealPath("/")+"resources/files/"+"news_files/" + fileSystemName);
					Map<String, String> map = new HashMap<String,String>();
					
					log.info("삭제하려는 파일................." + fileSystemName);
					
					
					if(file.exists()){ 
						if(file.delete()){ 
							service.deleteNewsFile(fileSystemName);
							log.info("삭제된 파일................." + fileSystemName);
							map.put("success","파일 삭제 성공");
						}else{
							log.info("삭제실패");
							map.put("fail","파일 삭제 실패");
						}
					}else{ 
						log.info("파일이 존재하지 않습니다." + fileSystemName);
						service.deleteNewsFile(fileSystemName);
						map.put("not exist","존재하지 않는 파일");
				}
			}
	
		
	//수정 완료 메소드
		@PostMapping("/news_modifyOK")
		public ModelAndView news_modifyOK(NewsVO newsvo, @RequestParam("newsNum") Long newsnum,RedirectAttributes ra, MultipartFile[] file,HttpServletRequest req) throws Exception {
			if(newsvo.getNewsLink().equals("")) {
				newsvo.setNewsLink(null);
			}
			
			ModelAndView mav = new ModelAndView();
			
			service.news_modify(newsvo,file,req);
			
			if(newsvo.getNewsLink() == null) {
				mav = new ModelAndView("redirect:/company/news/"+newsnum);
				return mav;
			}
			else {
				String url = "redirect:/company/news";
				return new ModelAndView(url);
			}
		}
	
	
	//언론보도 페이지 삭제하기
	@PostMapping("/news_delete")
	public String news_delete(@RequestParam("newsNum") Long newsNum, @RequestParam(value = "file_systemname", required=false) String[] file_systemname, RedirectAttributes rttr, HttpServletRequest req) {
		log.info("news_delete : " + newsNum);
		
		if(file_systemname != null) {
			for(int i = 0; i < file_systemname.length; i++) {
				File file = new File(req.getServletContext().getRealPath("/")+"resources/files/"+"news_files/" + file_systemname[i]);
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
		
			if(service.news_remove(newsNum)) {
				//Session의 Flash에 담아준다.
				rttr.addFlashAttribute("result", "success");
			}
			return"redirect:/company/news"; 
	}
	

	
	//찾아오시는길 페이지로 연결
	@GetMapping("/location")
	public void location() {
		
	}
	//회사연혁 페이지로 연결
	@GetMapping("/history")
	public void history() {
		
	}
	//조직도 페이지로 연결
	@GetMapping("/organization")
	public void organization() {
		
	}
	//인증현황 페이지로 연결
	@GetMapping("/certification")
	public void certification() {
		
	}
}
