<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path_hd" value="${pageContext.request.contextPath }"/>
<header class="header">
		 <div class="hd_top_wrap">
            <div class="hd_top_area">
                <a href="${path_hd }/" class="hd_logo">
                    <img src="" alt="로고">
                </a>
                <div class="hd_top_r">

                    <div class="hd_login">
                        <span>
                            <img src="" alt="아이콘">
                        </span>
                        <c:choose>
	                            <c:when test="${sid==null }">
		                            <span>
		                                <a href="${path_hd }/member/loginForm">로그인</a>
		                            </span>
		                            <span>
		                                <a href="${path_hd }/member/join">회원가입</a>
		                            </span>
	                            </c:when>
	                            <c:when test="${sid=='admin' }">
	                            	<span>
		                                <a href="${path_hd }/member/view?mid=${user.mid}">${user.mname }</a>
		                            </span>
		                            <span>
		                                <a href="${path_hd }/member/list">유저목록</a>
		                            </span>
		                            <span>
		                                <a href="${path_hd }/member/logout">로그아웃</a>
		                            </span>
	                            </c:when>
	                            <c:otherwise>
	                            	<span>
		                                <a href="${path_hd }/member/view?mid=${user.mid}">${user.mname }</a>
		                            </span>
		                            <span>
		                                <a href="${path_hd }/member/logout">로그아웃</a>
		                            </span>
	                            </c:otherwise>
                            </c:choose>
                    </div>
                </div>
            </div>
            <hr>
        </div>
</header>