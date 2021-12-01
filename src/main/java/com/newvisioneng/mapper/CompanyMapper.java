package com.newvisioneng.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import com.newvisioneng.domain.Criteria;
import com.newvisioneng.domain.NewsVO;

public interface CompanyMapper {
	//뉴스 전체 목록
//	@Select("SELECT * FROM nv_news WHERE NEWSNUM > 0")
	public List<NewsVO> getNewsList(Criteria cri);
	
	//전체 뉴스 개수
	public int getNewsTotal(Criteria cri);
	
	//뉴스 추가
	public void news_register(NewsVO news);
	
	//특정 뉴스 불러오기
	public NewsVO news_read(Long newsNum);
	
	//특정 뉴스 삭제
	public int news_delete(Long nesNum);
	
	//특정 뉴스 수정
	public void news_update(NewsVO news);
	
	//특정 뉴스 번호 가져오기
	public long getNewsNum(String newsWriter);
	
	//파일 첨부, 해시
	public void insertNewsFile(Map<String, Object> map);
	
	//파일 첨부 가져오기
	public List<Map<String, Object>> readNewsFile(Long newsNum) throws Exception;
	
	//이미지 사입후 DB 저장
	public void insertNewsImg(Map<String, Object> map);
	
	//파일 첨부 삭제
	public boolean deleteNewsFile(String fileSystemName) throws Exception;
	
	//글 등록에 사용된 이미지만 업데이트
	public void updateNewsImg(Map<String, Object> map);
	
	//null인 이미지 systemName으로 불러오기
	public List<String> getNewsImgsNULL();
	
	//null인 이미지 삭제
	public void deleteNewsImgNULL();
	
	//newsNum null로 바꾸기
	public void emptyNewsImg(long newsNum);
	

}
