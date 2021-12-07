package com.newvisioneng.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	@GetMapping("/login")
	public String login(HttpServletRequest request, HttpSession session) {
		if (session == null || !request.isRequestedSessionIdValid()) {
		    System.out.println("세션이 무효화 상태입니다.");
		}else {
			System.out.println("세션 있습니다.");
		}
		return "/admin/adminLogin";
	}
	//관리자 로그인
	@PostMapping("/login")	//form의 name과 완전히 일치하면 자동으로 DTO에 담긴다
	public ModelAndView login_OK(AdminDTO admin,HttpSession session,ModelAndView mav) throws Exception {
		
		System.out.println("입력한 아이디 : "+admin.getAdmin_ID());
		
		//로그인 체크를 하기위한 메소드, 로그인 체크후 결과를 result 변수에 넣는다.
		boolean result = adminservice.loginCheck(admin, session);
		
		System.out.println("컨트롤러 서비스 임플 세션 ID : "+session.getAttribute("admin_ID"));
		
		//로그인이 성공했을시 출력되는 구문
		if(result)    {
			mav.setViewName("redirect:/admin/sessionLogin");    //로그인이 성공했을시 이동하게되는 뷰의 이름
			mav.addObject("admin_ID", session.getAttribute("admin_ID"));
			
			//로그인 실패 했을시 출력
		}else if(session.getAttribute("admin_ID") == null) {    
			
			//로그인이 실패했을 시에 다시 관리자 로그인 페이지로 이동함
			mav.setViewName("/admin/adminLogin");
			//뷰에 전달할 값
			mav.addObject("message", "관리자의 아이디 혹은 비밀번호가 일치하지 않습니다.");
		}
		return mav;
		
	}

	
	
	
	//로그아웃
	@GetMapping("/sessionLogout")
	public void Logout() {
		System.out.println("sessionLogout.............");
		System.out.println("sessionLogout페이지로 이동......");
	}
	//로그인
	@GetMapping("/sessionLogin")
	public String Login() {
		System.out.println("sessionLogin.............");
		System.out.println("sessionLogin페이지로 이동......");
		return "/admin/sessionLogin";
	}
	
}
