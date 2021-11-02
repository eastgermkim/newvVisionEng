package com.newvisioneng.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
