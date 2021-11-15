package com.newvisioneng.service;

import com.newvisioneng.domain.EmailDTO;
import com.newvisioneng.domain.NoticeDTO;

public interface SupportService {

	public void sendMail(EmailDTO dto);

	public void noticeRegist(NoticeDTO noticedto);
}
