package com.oh.memberTest;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;

import com.oh.service.MemberService;

@Controller
public class LoginTest {

	@Autowired
	MemberService ms;
	@Bean
    public PasswordEncoder pwdEncoder() {
        return new BCryptPasswordEncoder();
    }
	
	@Test
	public void loginTest() throws Exception {  //로그인 테스트
		System.out.println("로그인 테스트");
		String mid = "admin";
		String mpw = "1234";
		System.out.println(mid+", "+mpw);
		Boolean login;
		if(mid.equals("admin")&&mpw.equals("1234")) {
			login = true;
		} else {
			login = false;
		}
		if(login==true) {
			System.out.println("로그인 성공");
		} else {
			System.out.println("로그인 실패");
		}
		System.out.println("로그인 테스트 끝");
	}
}