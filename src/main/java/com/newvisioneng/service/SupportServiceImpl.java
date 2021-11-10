package com.newvisioneng.service;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.newvisioneng.domain.EmailDTO;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class SupportServiceImpl implements SupportService {
	@Autowired
	private JavaMailSender mailSender;
	
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
        
        
        mailHelper.setText(
        		"fromMail: "+dto.getFromMail()+ "\r\n"
        		+ "fromName: "+dto.getFromName()+"\r\n"
        		+"Content: "+dto.getContent()+"\r\n"
        		, true);
        // true는 html을 사용하겠다는 의미입니다.
        
        /*
         * 단순한 텍스트만 사용하신다면 다음의 코드를 사용하셔도 됩니다. mailHelper.setText(content);
         */
        
        mailSender.send(mail);
        
	    } catch(Exception e) {
	        e.printStackTrace();
	    }
	}
}

	
	//11.10 gmail 이메일 시도
//	@Inject
//	JavaMailSender mailSender;
//	
//	@Override
//	public void sendMail(EmailDTO dto) {
//		try {
//            // 이메일 객체
//            MimeMessage msg = mailSender.createMimeMessage();
//            MimeMessageHelper mailHelper = new MimeMessageHelper(msg,true,"UTF-8");
// 
//            // 받는 사람을 설정 (수신자, 받는사람의 이메일 주소 객체를 생성해서 수신자 이메일주소를 담음)
//            msg.addRecipient(RecipientType.TO, new InternetAddress(dto.getReceiveMail()));
// 
//            /*
//             * createMimeMessage() : MimeMessage객체를 생성시킴 (이것을 이용해서 메시지를 구성한 뒤 메일 발송)
//             * addRecipient() : 메시지의 발신자를 설정 InternetAddress() : 이메일 주소 getReceiveMail() :
//             * 수신자 이메일 주소
//             */
// 
//            // 보내는 사람(이메일주소+이름)
//            // (발신자, 보내는 사람의 이메일 주소와 이름을 담음)
//            // 이메일 발신자
//            mailHelper.setFrom(dto.getSenderMail());
//            msg.addFrom(new InternetAddress[] { new InternetAddress(dto.getSenderMail(), dto.getSenderName()) });
//            
//            
// 
//            // 이메일 제목 (인코딩을 해야 한글이 깨지지 않음)
//            msg.setSubject(dto.getSubject(), "utf-8");
//            
//            // 이메일 본문 (인코딩을 해야 한글이 깨지지 않음)
//            String mail_text= dto.getSenderMail() + dto.getSenderName() + dto.getMessage();
//            msg.setText(mail_text, "utf-8");
// 
//            mailHelper.setText(dto.getMessage(), true);
//            
////            html로 보낼 경우            
////            MimeMessage message = mailSender.createMimeMessage();
////            MimeMessageHelper helper 
////            = new MimeMessageHelper(message, true);
////            helper.setTo("test@host.com");
////            helper.setText("<html><body><img src='cid:identifier1234'></body></html>", true);
// 
//            // 이메일 보내기
//            mailSender.send(msg);
//		} catch(Exception e) {
//			e.printStackTrace();
//		}

