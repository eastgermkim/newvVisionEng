package com.newvisioneng.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	//언론보도 페이지로 연결
	@GetMapping("/news")
	public void news() {
		
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
