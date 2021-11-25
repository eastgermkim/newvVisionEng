package com.newvisioneng.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import com.newvisioneng.domain.NewsVO;

public interface CompanyMapper {
	//뉴스 전체 목록
//	@Select("SELECT * FROM nv_news WHERE NEWSNUM > 0")
	public List<NewsVO> getNewsList();
	
	//뉴스 추가
	public void news_register(NewsVO news);
	
	//특정 뉴스 불러오기
	public NewsVO news_read(Long newsNum);
	
	//특정 뉴스 삭제
	public int news_delete(Long nesNum);
	
	//특정 뉴스 수정
	public int news_update(NewsVO news);
	
	//특정 뉴스 번호 가져오기
	public long getNewsNum(String newsWriter);
	
	//파일 첨부, 해시
	public void insertNewsFile(Map<String, Object> map);
}
