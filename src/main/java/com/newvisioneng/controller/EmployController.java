package com.newvisioneng.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.newvisioneng.service.EmployService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/employ/*")
//New Vision ENG 탭 
public class EmployController {

	@Setter(onMethod_=@Autowired)
	private EmployService service;
	
	//고용안내 페이지 연결
	@GetMapping("/list")
	public void list() {
		
	}

}