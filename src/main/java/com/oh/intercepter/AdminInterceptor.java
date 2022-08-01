package com.oh.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.oh.dto.MemberDTO;

public class AdminInterceptor extends HandlerInterceptorAdapter {
	//servlet-context.xml에서 해당 인터셉터를 등록
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		System.out.println("어드민 인터셉터");
		//로그인을 하지 않았을 경우 로그인 페이지로 이동
		MemberDTO user = (MemberDTO) session.getAttribute("user");
		if(user == null) {
			response.sendRedirect("/shop/member/loginForm");
			return false;
		}
		System.out.println(user.getGrade());
		//관리자 등급이 아닌 사용자일 경우 메인 페이지로 이동
		if(user.getGrade() != 9) {
			response.sendRedirect("/shop/");
			return false;
		}
		return true;
	}
}
