package com.newvisioneng.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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
		return "support/notice_detail";
	}
	@GetMapping(value="/notice/{noticeNum}",produces= {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<NoticeDTO> notice_detail(@PathVariable("noticeNum") Long noticeNum){

		//임시 Test용으로 일단 DTO 수동으로 작성
		NoticeDTO noticeDto = new NoticeDTO();
		noticeDto.setNoticeNum(noticeNum);
		noticeDto.setNoticeDate("2021.11.04");
		noticeDto.setNoticeTitle("제일 최근 공지사항 게시물이 가장 위에 오도록");
		noticeDto.setNoticeWriter("관리자");
		noticeDto.setNoticeContents("첫번째 공지사항의 내용 첫번째 공지사항의 내용 첫번째 공지사항의 내용 첫번째 공지사항의 내용 첫번째 공지사항의 내용 첫번째 공지사항의 내용 첫번째 공지사항의 내용 첫번째 공지사항의 내용 ");
		
		return new ResponseEntity<>(noticeDto,HttpStatus.OK);
	}
	
	//이메일 문의 페이지로 연결
	@GetMapping("/email")
	public void email() {
		
	}

}
