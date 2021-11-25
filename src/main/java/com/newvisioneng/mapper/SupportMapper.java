package com.newvisioneng.mapper;

import java.util.List;
import java.util.Map;

import com.newvisioneng.domain.NoticeDTO;

public interface SupportMapper {

 public void insertNotice(NoticeDTO noticedto);
 public void insertNoticeFile(Map<String, Object> map);

 public NoticeDTO readNotice(Long noticeNum);
 public List<Map<String, Object>> readNoticeFile(Long noticeNum) throws Exception;
	
}
