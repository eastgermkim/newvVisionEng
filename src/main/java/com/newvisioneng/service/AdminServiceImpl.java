package com.newvisioneng.service;


import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.newvisioneng.domain.AdminDTO;
import com.newvisioneng.domain.Criteria;
import com.newvisioneng.domain.EmailDTO;
import com.newvisioneng.domain.NoticeDTO;
import com.newvisioneng.mapper.AdminMapper;
import com.newvisioneng.mapper.SupportMapper;
import com.newvisioneng.util.FileUtils;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class AdminServiceImpl implements AdminService {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminServiceImpl.class);
	
	@Setter(onMethod_ = @Autowired)
	private AdminMapper mapper;

	@Override
	public boolean loginCheck(AdminDTO admin, HttpSession session) throws Exception {
		boolean result = false;
		
		String Login_id = mapper.adminLoginCheck(admin);
		
		if(!(Login_id==null)&&!(Login_id.equals(""))) {
			System.out.println("로그인 SQL 성공.............");
			result = true;
		}
        
        if(result) {    //로그인 성공
            
        	System.out.println("로그인 성공.............");
            session.setAttribute("admin_ID", admin.getAdmin_ID());
            
        }
        
        return result;
	}
	

	
}


