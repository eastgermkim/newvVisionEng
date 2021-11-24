package com.newvisioneng.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.newvisioneng.domain.NewsVO;

public interface CompanyMapper {
	//뉴스 전체 목록
//	@Select("SELECT * FROM nv_news WHERE NEWSNUM > 0")
	public List<NewsVO> getNewsList();
	
	//뉴스 추가
	public int news_register(NewsVO news);
	
	//특정 뉴스 불러오기
	public NewsVO news_read(Long newsNum);
	
	//특정 뉴스 삭제
	public int news_delete(Long nesNum);
	
	//특정 뉴스 수정
	public int news_update(NewsVO news);
}
