package com.newvisioneng.mapper;

import java.util.List;
import java.util.Map;

import com.newvisioneng.domain.Criteria;
import com.newvisioneng.domain.NoticeDTO;

public interface SupportMapper {

//공지사항 등록
 public void insertNotice(NoticeDTO noticedto);
 public void insertNoticeFile(Map<String, Object> map);

//공지사항 글 조회
 public NoticeDTO readNotice(Long noticeNum);
 public List<Map<String, Object>> readNoticeFile(Long noticeNum) throws Exception;

//공지사항 전체 목록 불러오기
 public List<NoticeDTO> getNoticeList(Criteria cri);
 //전체개수
 public int getNoticeTotal(Criteria cri);

 //이미지 삽입시 DB 저장
 public void insertNoticeImg(Map<String, Object> map);
 //글 등록에 사용된 이미지의 DB에만 noticenum 업데이트
 public void updateNoticeImg(Map<String, Object> map);
 
 //noticenum이 NULL인 이미지들 systemname 불러오기
 public List<String> getNoticeImgsNULL();
 //noticenum이 NULL인 이미지들 DB에서 전체 삭제
 public void deleteNoticeImgNULL();
}
