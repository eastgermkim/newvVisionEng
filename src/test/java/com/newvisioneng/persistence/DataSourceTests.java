package com.newvisioneng.persistence;

import static org.junit.Assert.fail;

import java.sql.Connection;

import javax.sql.DataSource;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class DataSourceTests {
//	@Setter(onMethod_ = {@Autowired})
//	private DataSource dataSource;
	
	@Setter(onMethod_ = @Autowired)
	private SqlSessionFactory SqlSessionFactory;
	
	@Test
	public void testConnection() {
		
		try(SqlSession sqlSession = SqlSessionFactory.openSession(true);
				Connection con = sqlSession.getConnection()){
			log.info("sqlSession:" + sqlSession);
			log.info("con:" + con);
		}catch (Exception e) {
			fail(e.getMessage());
		}
		
//		log.info(dataSource);
//		try(Connection con = dataSource.getConnection()){
//			log.info(con);
//		}catch(Exception e) {
//			fail(e.getMessage());
//		}
	}
}
