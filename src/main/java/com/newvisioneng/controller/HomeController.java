package com.newvisioneng.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.newvisioneng.domain.Account;
import com.newvisioneng.domain.Criteria;
import com.newvisioneng.security.SecurityAccount;
import com.newvisioneng.service.AdminService;
import com.newvisioneng.service.BusinessService;
import com.newvisioneng.service.CompanyService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	BusinessService businessService;
	
	@Autowired
	CompanyService companyService;
	
	//관리자 로그인 페이지로 이동
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String goLogin(
			@RequestParam(value = "error", required = false) String error, 
		    @RequestParam(value="join", required=false) String join, 
		    Model model) {
		logger.info("error : " + error);
		
		if(error != null) {
			model.addAttribute("error", "관리자의 아이디 혹은 비밀번호가 일치하지 않습니다.");
		}
		
		return "/admin/adminLogin";
	}
	
	//회원가입(관리자) 페이지로 이동
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String goJoin() {
		return "join";
	}
	//회원가입 요청
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(Account account) {
		account.setPassword(new BCryptPasswordEncoder().encode(account.getPassword()));
		adminService.join(account);
		return "redirect:/?joinOK";
	}

//=============================================================================================	
	
	//메인페이지
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String goHome(Locale locale, Model model, 
			Authentication authentication,HttpSession session,
			@RequestParam(value="joinOK", required=false) String joinOK,
			@RequestParam(value="access_denied", required=false) String access_denied,
			@RequestParam(value="loginOK", required=false) String loginOK,
			@RequestParam(value="logoutOK", required=false) String logoutOK) {
		
		logger.info("Welcome New Vision ENG! The client locale is {}.", locale);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		
		if(authentication != null){
			SecurityAccount account = (SecurityAccount)authentication.getPrincipal();
			session.setAttribute("admin_Login_id", account.getUsername());
			/*model.addAttribute("username", account.getUsername());*/
		}
		
		if(access_denied != null) {
			logger.info("access_denied........." + access_denied);
			model.addAttribute("access_denied", "접근 권한이 없는 요청입니다.");
		}
		
		if(logoutOK != null) {
			logger.info("logout........." + logoutOK);
			model.addAttribute("logout", "로그아웃 완료");
		}
		
		if(loginOK != null) {
			logger.info("loginOK........." + loginOK);
			model.addAttribute("login", session.getAttribute("admin_Login_id")+"님 안녕하세요");
		}
		if(joinOK != null) {
			logger.info("joinOK........." + loginOK);
			model.addAttribute("joinOK", "회원가입 완료");
		}
		
		//메인등록된 사업실적들 리스트 담기
		model.addAttribute("business_list", businessService.getMainBusinessList());
		
		return "home";
	}
	
	//메인페이지
		@RequestMapping(value = "/home3", method = RequestMethod.GET)
		public String gohome3(Locale locale, Model model, Criteria cri, 
				Authentication authentication,HttpSession session,
				@RequestParam(value="joinOK", required=false) String joinOK,
				@RequestParam(value="access_denied", required=false) String access_denied,
				@RequestParam(value="loginOK", required=false) String loginOK,
				@RequestParam(value="logoutOK", required=false) String logoutOK) {
			
			logger.info("Welcome New Vision ENG! The client locale is {}.", locale);
			Date date = new Date();
			DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
			String formattedDate = dateFormat.format(date);
			model.addAttribute("serverTime", formattedDate );
			
			if(authentication != null){
				SecurityAccount account = (SecurityAccount)authentication.getPrincipal();
				session.setAttribute("admin_Login_id", account.getUsername());
				/*model.addAttribute("username", account.getUsername());*/
			}
			
			if(access_denied != null) {
				logger.info("access_denied........." + access_denied);
				model.addAttribute("access_denied", "접근 권한이 없는 요청입니다.");
			}
			
			if(logoutOK != null) {
				logger.info("logout........." + logoutOK);
				model.addAttribute("logout", "로그아웃 완료");
			}
			
			if(loginOK != null) {
				logger.info("loginOK........." + loginOK);
				model.addAttribute("login", session.getAttribute("admin_Login_id")+"님 안녕하세요");
			}
			if(joinOK != null) {
				logger.info("joinOK........." + loginOK);
				model.addAttribute("joinOK", "회원가입 완료");
			}
			
			//메인등록된 사업실적들 리스트 담기
			model.addAttribute("business_list", businessService.getMainBusinessList());
			
			//뉴스 리스트 담기
			model.addAttribute("news_list",companyService.getNewsList(cri));
			
			return "home3";
		}
		
		//메인페이지4
		@RequestMapping(value = "/home4", method = RequestMethod.GET)
		public String gohome4(Locale locale, Model model, Criteria cri, 
				Authentication authentication,HttpSession session,
				@RequestParam(value="joinOK", required=false) String joinOK,
				@RequestParam(value="access_denied", required=false) String access_denied,
				@RequestParam(value="loginOK", required=false) String loginOK,
				@RequestParam(value="logoutOK", required=false) String logoutOK) {
			
			logger.info("Welcome New Vision ENG! The client locale is {}.", locale);
			Date date = new Date();
			DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
			String formattedDate = dateFormat.format(date);
			model.addAttribute("serverTime", formattedDate );
			
			if(authentication != null){
				SecurityAccount account = (SecurityAccount)authentication.getPrincipal();
				session.setAttribute("admin_Login_id", account.getUsername());
				/*model.addAttribute("username", account.getUsername());*/
			}
			
			if(access_denied != null) {
				logger.info("access_denied........." + access_denied);
				model.addAttribute("access_denied", "접근 권한이 없는 요청입니다.");
			}
			
			if(logoutOK != null) {
				logger.info("logout........." + logoutOK);
				model.addAttribute("logout", "로그아웃 완료");
			}
			
			if(loginOK != null) {
				logger.info("loginOK........." + loginOK);
				model.addAttribute("login", session.getAttribute("admin_Login_id")+"님 안녕하세요");
			}
			if(joinOK != null) {
				logger.info("joinOK........." + loginOK);
				model.addAttribute("joinOK", "회원가입 완료");
			}
			
			//메인등록된 사업실적들 리스트 담기
			model.addAttribute("business_list", businessService.getMainBusinessList());
			
			//뉴스 리스트 담기
			model.addAttribute("news_list",companyService.getNewsList(cri));
			
			return "home4";
		}
	
}
