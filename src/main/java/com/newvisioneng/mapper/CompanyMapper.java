package com.newvisioneng.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.newvisioneng.domain.NewsVO;

public interface CompanyMapper {
	//게시글 전체 목록
//	@Select("SELECT * FROM nv_news WHERE NEWSNUM > 0")
	public List<NewsVO> getNewsList();
	
	
//	//게시글 추가
//	public void news_insert(NewsVO news);

}
