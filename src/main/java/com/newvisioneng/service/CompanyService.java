package com.newvisioneng.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.newvisioneng.domain.Criteria;
import com.newvisioneng.domain.NewsVO;
import com.newvisioneng.domain.NoticeDTO;

public interface CompanyService {
	//전체 뉴스 가져오기
	public List<NewsVO> getNewsList(Criteria cri);
	
	//전체 뉴스 개수 가져오기
	public int getNewsTotal(Criteria cri);
	
	//뉴스 등록
	public void news_register(NewsVO news);
	
	//뉴스 불러오기
	public NewsVO news_get(Long newsNum);
	
	//뉴스 이전글
	public NewsVO news_get_prev(Long newsNum);
	
	//뉴스 다음글
	public NewsVO news_get_next(Long newsNum);
	
	//뉴스 수정
	public long news_modify(NewsVO newsvo, MultipartFile[] file,HttpServletRequest req) throws Exception;
	
	//뉴스 삭제
	public boolean news_remove(Long newsNum);
	
	//뉴스 등록 첨부파일포함
	public long newsRegist(NewsVO newsvo,MultipartFile[] file,HttpServletRequest req) throws Exception;
	
	//뉴스 파일첨부 불러오기
	public List<Map<String, Object>> readNewsFile(Long newsNum) throws Exception;
	
	//이미지 사입후 DB 저장
	public void insertNewsImg(Map<String, Object> map);
	
	//db 저장 유효검사
	public void updateNewsNumToImgDB(String newsContents, long newsnum);
	
	//파일 첨부 삭제
	public boolean deleteNewsFile(String file_systemname) throws Exception;
	
	//사용하지 않은 이미지 삭제
	public void deleteUnusedImgs(HttpServletRequest req);
	
}
