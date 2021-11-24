package com.newvisioneng.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.newvisioneng.domain.NewsVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CompanyMapperTests {
	@Setter(onMethod_ = @Autowired)
	private CompanyMapper mapper;
	
	//DB 에서 news 테이블 가져오기
//	@Test
//	public void testGetList() {
//		mapper.getNewsList().forEach(news -> log.info(news));
//	}
	
	//DB 에서 news 테이블에  값 입력하기
//	@Test
//	public void testRegister() {
//		NewsVO news = new NewsVO();
//		news.setNewsWriter("TESTER4");
//		news.setNewsTitle("TEST4");
//		news.setNewsContents("TEST4");
//		System.out.println(news);
//		mapper.news_register(news);
//		//결과(bno가 null) 작업은 완료되지만 현재 추가된 데이터의 pk값은 알 수 없다.
//		log.info(news);
//	}
	
	//DB에서 특정 뉴스 가져오기
//	@Test
//	public void testRead() {
//		NewsVO news = mapper.news_read(3L);
//		log.info(news);
//	}
	
	//DB에서 특정 뉴스 삭제하기
//	@Test
//	public void testDelete() {
//		int deleteCnt = mapper.news_delete(3L);
//		if(deleteCnt > 0) {
//			log.info("DELETE COUNT:" + deleteCnt);
//		}else {
//			log.info("DELETE FAILURE");
//		}
//	}
	
	@Test
	public void testUpdate() {
		Long bno = 1L;
		if(mapper.news_read(bno) != null) {
			NewsVO news = new NewsVO();
			news.setNewsNum(3L);
			news.setNewsTitle("수정된 제목2");
			news.setNewsContents("수정된 내용2");
			news.setNewsWriter("user12345");
			
			log.info("UPDATE COUNT:" + mapper.update(news));
		}else {
			log.info("게시글이 없습니다.");
		}
	}
}
