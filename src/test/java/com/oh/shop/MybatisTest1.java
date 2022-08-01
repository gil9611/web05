package com.oh.shop;

import java.sql.Connection;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import lombok.extern.log4j.Log4j;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@Log4j
public class MybatisTest1 {

	@Autowired
	SqlSessionFactory sqlSessionFactory;

	@Test
	public void test() {
		try {
			log.info("시작");
			SqlSession session = sqlSessionFactory.openSession();
			Connection con = session.getConnection();
			log.info("Mybatis 연결 성공");
			log.info("DB 연결 성공");
		} catch(Exception e) {
			log.info(e.getMessage());
		}
	}

}
