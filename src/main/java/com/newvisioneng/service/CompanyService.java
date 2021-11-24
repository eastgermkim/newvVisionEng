package com.newvisioneng.service;

import java.util.List;

import com.newvisioneng.domain.NewsVO;

public interface CompanyService {
	//전체 게시글 가져오기
	public List<NewsVO> getNewsList();
	
	//게시글 등록
	public void news_register(NewsVO news);

}
