package com.newvisioneng.service;

import static org.junit.Assert.assertNotNull;

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
public class CompanyServiceTests {

	@Setter(onMethod_ = {@Autowired})
	private CompanyService service;
	
	@Test
	public void testExist() {
		assertNotNull(service);
		log.info(service);
	}
	
//	@Test
//	public void testGetList() {
//		service.getNewsList().forEach(board -> log.info(board));
//	}
	
//	@Test
//	public void testGet() {
//		Long newsNum = 2L;
//		log.info(service.news_get(newsNum));
//	}
	
//	@Test
//	public void testRegister() {
//		NewsVO news = new NewsVO();
//		news.setNewsTitle("new test for service");
//		news.setNewsContents("new test for service");
//		news.setNewsWriter("tester");
//		
//		service.news_register(news);
//		log.info("생성된 게시글의 번호: " + news.getNewsNum());
//	}
	
//	@Test
//	public void testModify() {
//		NewsVO news = service.news_get(1L);
//		if(news == null) {
//			return;
//		}
//		news.setNewsTitle("제목 수정합니다.");
//		log.info("Modify Result:" + service.news_modify(news));
//	}
	
//	@Test
//	public void testRemove() {
//		Long newsNum = 1L;
//		NewsVO news =service.news_get(newsNum);
//		
//		if(news == null) {
//			return;
//		}
//		log.info("Remove Result : " + service.news_remove(newsNum));
//	}
}
