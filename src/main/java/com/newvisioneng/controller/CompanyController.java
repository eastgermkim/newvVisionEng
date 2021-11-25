package com.newvisioneng.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.newvisioneng.domain.NewsVO;
import com.newvisioneng.domain.NoticeDTO;
import com.newvisioneng.service.CompanyService;

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
	public void news(Model model) {
		log.info("list");
		model.addAttribute("news_list", service.getNewsList());
	}
	
	//보도현황 게시글 하나 클릭시
	@GetMapping("/news/{newsNum}")
	public String notice_detail(@PathVariable("newsNum") Long newsNum,Model model) {
		NewsVO news = service.news_get(newsNum);
		model.addAttribute("news",news);
		return "/company/news_detail";
	}
	
	//언론보도 페이지 글 등록 view단으로 이동하는 요청
	@GetMapping("/news_write")
	public void news_write() {
		
	}
	
	//공지사항 글 등록 메소드
	@PostMapping("/news_writeOK")
	public ModelAndView notice_writeOK(NewsVO newsvo,RedirectAttributes ra, MultipartFile[] file,HttpServletRequest req) throws Exception {
		
		ModelAndView mav = new ModelAndView();

		System.out.println("날짜 : ");
		System.out.println("제목 : "+newsvo.getNewsTitle());
		System.out.println("작성자 : "+newsvo.getNewsWriter());
		System.out.println("내용 : "+newsvo.getNewsContents());

		long newsnum = service.newsRegist(newsvo,file,req);
		
		//새롭게 등록한 게시글의 번호를 같이 전달하기 위해서는
		//Model 대신 RedirectAttributes를 사용한다.
		
/*		//등록한 글의 notice 들고 가자
		ra.addFlashAttribute("notice",noticedto);
		ra.addFlashAttribute("noticenum",noticenum);*/
		
		mav = new ModelAndView("redirect:/company/news/"+newsnum);
        return mav;
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
