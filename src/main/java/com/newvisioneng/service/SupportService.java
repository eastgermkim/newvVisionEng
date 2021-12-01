package com.newvisioneng.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;
import org.w3c.dom.stylesheets.LinkStyle;

import com.newvisioneng.domain.Criteria;
import com.newvisioneng.domain.EmailDTO;
import com.newvisioneng.domain.NoticeDTO;

public interface SupportService {

	public void sendMail(EmailDTO dto);

	
	//공지사항 목록 가져오기
	public List<NoticeDTO> getNoticeList(Criteria cri);
	//공지사항 총 글 개수
	public int getNoticeTotal(Criteria cri);
	
	//공지사항 글 하나 정보 가져오기
	public NoticeDTO noticeGet(Long noticeNum);
	//그 글에 첨부된 파일 정보도 가져오기
	public List<Map<String, Object>> readNoticeFile(Long noticeNum) throws Exception;

	//공지사항 글 등록
	public long noticeRegist(NoticeDTO noticedto,MultipartFile[] file,HttpServletRequest req) throws Exception;
	//공지사항 글 작성 중에 이미지 삽입시
	public void insertNoticeImg(Map<String, Object> map);
	//공지사항 글 등록, 수정 시 최종적으로 삽입된 이미지들만 DB에 글번호 넣어주기
	public void updateNoticeNumToImgDB(String noticeContents,long noticenum);


	//공지사항 글 수정 중에 이미 첨부된 파일 삭제하기
	public boolean deleteNoticeFile(String fileSystemName) throws Exception;
	
	//결국 공지사항 글 작성에 사용안된 이미지들 삭제하기
	public void deleteUnusedImgs(HttpServletRequest req);

	//공지사항 수정완료
	public void modifyNotice(NoticeDTO notice, MultipartFile[] file, HttpServletRequest req) throws Exception;


}
