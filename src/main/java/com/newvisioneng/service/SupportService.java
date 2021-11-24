package com.newvisioneng.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.newvisioneng.domain.EmailDTO;
import com.newvisioneng.domain.NoticeDTO;

public interface SupportService {

	public void sendMail(EmailDTO dto);

	public long noticeRegist(NoticeDTO noticedto,MultipartFile[] file,HttpServletRequest req) throws Exception;

	public NoticeDTO noticeGet(Long noticeNum);
}
