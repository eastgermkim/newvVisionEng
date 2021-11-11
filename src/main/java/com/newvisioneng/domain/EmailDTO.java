package com.newvisioneng.domain;

import lombok.Data;

@Data
public class EmailDTO {
    private String fromName;    //발신자 이름
    private String fromMail;    //발신자 이메일 주소
    private String toMail;		//수신자 이메일 주소
    private String subject;		//메일주제
    private String content;		//메일내용
    private String uploadFile;
    
    @Override
    public String toString() {
    	return "EmailDTO[fromName=" + fromName
    			+ ", fromMail" + fromMail
    			+ ",toMail" + toMail
    			+",subject" + subject
    			+",content" +content 
    			+"uploadFile" + uploadFile
    			+ "]";
    			
    }
}
