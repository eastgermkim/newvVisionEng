package com.newvisioneng.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String get(@PathVariable("noticeNum") Long noticeNum,Model model) {
		model.addAttribute("noticeNum",noticeNum);
		return "/notice_detail";
	}
	
	//이메일 문의 페이지로 연결
	@GetMapping("/email")
	public void email() {
		
	}

}
