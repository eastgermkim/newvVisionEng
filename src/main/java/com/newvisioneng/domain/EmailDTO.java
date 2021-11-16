package com.newvisioneng.domain;

import lombok.Data;

@Data
public class EmailDTO {
	private String subject;		//메일주제
	private String fromCompany;		//발신자 회사
    private String fromName;    //발신자 이름
    private String fromPhone;		//발신자 핸드폰 번호
    private String fromMail;    //발신자 이메일 주소
    private String content;		//메일내용
    private String toMail;		//수신자 이메일 주소
    
    @Override
    public String toString() {
    	return "EmailDTO["
    			+"subject" + subject
    			+", fromCompany" + fromCompany
    			+", fromName" + fromName
    			+", fromPhone" + fromPhone
    			+", fromMail" + fromMail
    			+", content" + content 
    			+", toMail" + toMail
    			+ "]";
    			
    }
}
