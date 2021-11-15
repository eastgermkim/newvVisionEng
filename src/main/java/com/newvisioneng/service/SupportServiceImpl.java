package com.newvisioneng.service;


import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.newvisioneng.domain.EmailDTO;
import com.newvisioneng.domain.NoticeDTO;
import com.newvisioneng.mapper.SupportMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class SupportServiceImpl implements SupportService {
	
	@Setter(onMethod_ = @Autowired)
	private SupportMapper mapper;
	
	@Autowired
	private JavaMailSender mailSender;

//11.11 이메일 재시도
	@Override
	public void sendMail(EmailDTO dto) {
    try {
        MimeMessage mail = mailSender.createMimeMessage();
        MimeMessageHelper mailHelper = new MimeMessageHelper(mail,true,"UTF-8");
        // true는 멀티파트 메세지를 사용하겠다는 의미
        
        mailHelper.setFrom(new InternetAddress(dto.getFromMail()));
        // 빈에 아이디 설정한 것은 단순히 smtp 인증을 받기 위해 사용 따라서 보내는이(setFrom())반드시 필요
        // 보내는이와 메일주소를 수신하는이가 볼때 모두 표기 되게 원하신다면 아래의 코드를 사용하시면 됩니다.
        //mailHelper.setFrom("보내는이 이름 <보내는이 아이디@도메인주소>");
        
        mailHelper.setTo(dto.getToMail());
        mailHelper.setSubject(dto.getSubject());
        System.out.println("test1................."+dto.getContent());
        System.out.println("test2................."+dto.getContent());
        /*
         * 여기까지 계속 줄바꿈 된 상태로 들어옴.
         * System.out.println("content.........."+dto.getContent());*/
        
        
       mailHelper.setText(
        		"문의종류: " +dto.getSubject()+ "<br>"
        		+"회사명: "+dto.getCompany()+ "<br>"
        		+ "담당자: "+dto.getFromName()+"<br>"
        		+ "핸드폰 번호: "+dto.getPhone()+"<br>"
        		+"이메일: "+dto.getFromMail()+ "<br>"
        		+"내용"+"<br>"
        		+dto.getContent(),true);
       
        
        // true는 html을 사용하겠다는 의미입니다.
        
        /*
         * 단순한 텍스트만 사용하신다면 다음의 코드를 사용하셔도 됩니다. mailHelper.setText(content);
         */
        mailSender.send(mail);
        
	    } catch(Exception e) {
	        e.printStackTrace();
	    }
	}

	@Override
	public void noticeRegist(NoticeDTO noticedto) {
		/*log.info("------regist------");
		mapper.insertNotice(noticedto);*/
		
		
	}
}


