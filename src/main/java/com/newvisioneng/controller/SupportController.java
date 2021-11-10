package com.newvisioneng.controller;


import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.datasource.init.ScriptUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.newvisioneng.domain.EmailDTO;
import com.newvisioneng.domain.NoticeDTO;
import com.newvisioneng.service.SupportService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/support/*")
//고객지원 탭 
public class SupportController {
	
	 
	
	@Setter(onMethod_=@Autowired)
	private SupportService service;
	
	//공지사항 페이지로 연결
	@GetMapping("/notice")
	public void notice() {
		
	}

	//공지사항 게시글 하나 클릭시
	@GetMapping("/notice/{noticeNum}")
	public String notice_detail(@PathVariable("noticeNum") Long noticeNum,Model model) {
		model.addAttribute("noticeNum",noticeNum);
		System.out.println("11111111111");
		return "/support/notice_detail";
	}
	//공지사항 게시글 하나 클릭하면 자바스크립트로 
	@GetMapping(value="/notice/get/{noticeNum}",produces= {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<NoticeDTO> notice_detail(@PathVariable("noticeNum") Long noticeNum){
	
		//임시 Test용으로 일단 DTO 수동으로 작성
		NoticeDTO noticeDto = new NoticeDTO();
		noticeDto.setNoticeNum(noticeNum);
		noticeDto.setNoticeDate("2021.11.04");
		noticeDto.setNoticeTitle("제일 최근 공지사항 게시물이 가장 위에 오도록");
		noticeDto.setNoticeWriter("관리자");
		noticeDto.setNoticeContents("첫번째 공지사항의 내용 첫번째 공지사항의 내용 첫번째 공지사항의 내용 첫번째 공지사항의 내용 첫번째 공지사항의 내용 첫번째 공지사항의 내용 첫번째 공지사항의 내용 첫번째 공지사항의 내용 ");
		
		System.out.println("2222222222");
		System.out.println(noticeDto);
		
		return new ResponseEntity<>(noticeDto,HttpStatus.OK);
	}
	
	//이메일 문의 페이지로 연결
	@GetMapping("/email")
	public void email() {
		
	}
	 
	 //메일 발송 메소드
	 @RequestMapping("send.do") 
	 public String send(@ModelAttribute EmailDTO dto, RedirectAttributes attr) {
		 try {
			 
			 //수신받을 이메일 지정 nv3000@nate.com으로 바뀔 예정
			 dto.setToMail("eastgerm@nate.com");;
			 
			// dto(메일관련 정보)를 sendMail에 저장함
			 service.sendMail(dto); 
			 attr.addFlashAttribute("message","이메일 전송이 성공하였습니다!");
			 
		 } catch (Exception e) {
			 e.printStackTrace();
			 attr.addFlashAttribute("message","이메일 전송이 실패하였습니다! 잠시 후 다시 시도해주세요.");
		 }
		 
		// 실패했으므로 다시 write jsp 페이지로 이동함
		 return "redirect:/support/email"; 
	 }
	}
