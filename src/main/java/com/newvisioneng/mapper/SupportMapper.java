package com.newvisioneng.mapper;

import java.util.List;
import java.util.Map;

import com.newvisioneng.domain.NoticeDTO;

public interface SupportMapper {

 void insertNotice(NoticeDTO noticedto);
 long getNoticeNum(String noticeWriter);
 void insertNoticeFile(Map<String, Object> map);

 NoticeDTO readNotice(Long noticeNum);
 List<Map<String, Object>> readNoticeFile(Long noticeNum) throws Exception;
	
}
