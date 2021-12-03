package com.newvisioneng.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.newvisioneng.domain.AdminDTO;
import com.newvisioneng.service.AdminService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin/")
public class AdminController {
	
	@Setter(onMethod_=@Autowired)
	private AdminService adminservice;
	
	//관리자 로그인 페이지로 이동
	@GetMapping("/adminLogin")
	public void login() {
		
	}
	
	//관리자 로그인
	@PostMapping("/login_OK")	//form의 name과 완전히 일치하면 자동으로 DTO에 담긴다
	public String login_OK(AdminDTO admin,HttpSession session) throws Exception {
		
		System.out.println("아이디 : "+admin.getAdmin_ID());
		System.out.println("비밀번호 : "+admin.getAdmin_PW());
		
	    //로그인 체크를 하기위한 메소드, 로그인 체크후 결과를 result 변수에 넣는다.
        boolean result = adminservice.loginCheck(admin, session);
		
        System.out.println("컨트롤러 서비스 임플 세션 ID : "+session.getAttribute("admin_ID"));
        System.out.println("컨트롤러 서비스 임플 세션 PW : "+session.getAttribute("admin_PW"));
        
        session.setAttribute("admin_ID", session.getAttribute("admin_ID"));
        
         return "/admin/test";
        }
}
