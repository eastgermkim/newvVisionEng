package com.newvisioneng.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.newvisioneng.domain.NewsVO;
import com.newvisioneng.domain.NoticeDTO;

public interface CompanyService {
	//전체 뉴스 가져오기
	public List<NewsVO> getNewsList();
	
	//뉴스 등록
	public void news_register(NewsVO news);
	
	//뉴스 불러오기
	public NewsVO news_get(Long newsNum);
	
	//뉴스 수정
	public boolean news_modify(NewsVO news);
	
	//뉴스 삭제
	public boolean news_remove(Long newsNum);
	
	//뉴스 등록 첨부파일포함
	public long newsRegist(NewsVO newsvo,MultipartFile[] file,HttpServletRequest req) throws Exception;



}
