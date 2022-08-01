package com.oh.shop;


import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;
@Log4j
public class JDBCTest1 {
	
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			log.info("드라이버 로딩 성공");
		} catch (Exception e) {
			e.printStackTrace();
			log.info("드라이버 로딩 실패");
		}
	}

	@Test
	public void testConnection() {
		try {
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ohshop?useSSL=false&serverTimezone=UTC", "root","a1234");
			log.info("연결 성공");
		} catch (Exception e) {
			e.printStackTrace();
			log.info("연결 실패");
		}
	}

}
