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
import com.newvisioneng.security.SecurityAccount;
import com.newvisioneng.service.AccountServiceImpl;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
/*	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome New Vision ENG! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}*/
	
	@Autowired
	AccountServiceImpl accountService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String goLogin(
			@RequestParam(value = "error", required = false) String error, 
		    @RequestParam(value="join", required=false) String join, 
		    Model model) {
		logger.info("error : " + error);
		
		if(error != null) {
			model.addAttribute("error", "관리자의 아이디 혹은 비밀번호가 일치하지 않습니다.");
		}
		
		if(join != null) {
			model.addAttribute("join", "회원가입 완료");
		}
		return "/admin/adminLogin";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String goJoin() {
		return "join";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(Account account) {
		account.setPassword(new BCryptPasswordEncoder().encode(account.getPassword()));
		accountService.join(account);
		return "redirect:/login?join";
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String goHome(Locale locale, Model model, 
			Authentication authentication,HttpSession session,
			@RequestParam(value="login", required=false) String login,
			@RequestParam(value="logout", required=false) String logout) {
		
		logger.info("logout : " + logout);
		logger.info("Welcome New Vision ENG! The client locale is {}.", locale);
		
		
		if(authentication != null){
			SecurityAccount account = (SecurityAccount)authentication.getPrincipal();
			session.setAttribute("admin_Login_id", account.getUsername());
			/*model.addAttribute("username", account.getUsername());*/
		}
		
		if(logout != null) {
			model.addAttribute("logout", "로그아웃 완료");
		}
		
		if(login != null) {
			model.addAttribute("login", session.getAttribute("admin_Login_id")+"님, 안녕하세요");
		}
		return "home";
	}
	
}
