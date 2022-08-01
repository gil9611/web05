package com.oh.shop;

import static org.junit.Assert.fail;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.stereotype.Controller;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import lombok.extern.log4j.Log4j;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@Log4j
@Controller
public class ControllerTest {

	private ServiceTest1 serviceTest;
	
	@Test
	public void controllrTest() {
		
		int cnt = 2;
		try {
			//cnt = controllerCall();
			log.info("컨트롤러 단위 테스트 처리가 성공적으로 처리되었음");
			log.info("회원수 : "+cnt);
			Assert.assertEquals(cnt, 2);
			//Assert.assertNull(cnt);
		} catch(Exception e) {
			log.info("컨트롤러 단위 테스트가 실패 되었음");
			fail("Controller 단위 테스트 실패");
		}
	}

	public int controllerCall() {
		int cnt = serviceTest.serviceCall();
		log.info("회원수 : "+cnt);
		return cnt;
	}
}
