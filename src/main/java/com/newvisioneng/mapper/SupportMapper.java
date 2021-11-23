package com.newvisioneng.mapper;

import java.util.Map;

import com.newvisioneng.domain.NoticeDTO;

public interface SupportMapper {

	void insertNotice(NoticeDTO noticedto);

	int getNoticeNum(String noticeWriter);

	void insertFile(Map<String, Object> map);

}
