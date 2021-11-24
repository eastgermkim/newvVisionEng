package com.newvisioneng.persistence;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTests {
	//프로그래밍 시작될 때 딱 한 번만 실행되어 유지된다.
	static {
		try {
			Class.forName("org.mariadb.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void testConnection() {
		//try(Statement) : 소괄호 안에 close를 필요로 하는 인스턴스를 작성하면 자동 close() 된다.
		try(Connection con=
				DriverManager.getConnection("jdbc:mariadb://localhost:3306/newVisionEng",
						"root",
						"nveng3000")){
			log.info(con);
		}catch(Exception e) {
			fail(e.getMessage());
		}
	}
}
