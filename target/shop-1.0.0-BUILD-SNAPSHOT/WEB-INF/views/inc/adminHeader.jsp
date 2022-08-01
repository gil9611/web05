<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path_hd" value="${pageContext.request.contextPath }"/>
<link href="${path_hd }/css/header2.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
<style>
.header2 nav>ul>li>.children {text-align: left;}
</style>
<header class="header1">
    <div class="top">
        <div class="wrapper">
            <div class="brand">
                <a href="${path_hd }/" >오늘의집</a>
            </div>
            <div class="search_wrap">
                <div class="search">
                    <input type="text" placeholder="통합검색">
                    <i class="fa fa-search"></i>
                </div>
                <div class="hd_login">
                    <span>
                        <img src="" alt="">
                    </span>
                    <c:choose>
	                     <c:when test="${user==null }">
	                      <span>
	                          <a href="${path_hd }/member/loginForm">로그인</a>
	                      </span>
	                      <span>
	                          <a href="${path_hd }/member/join">회원가입</a>
	                      </span>
	                     </c:when>
	                     <c:when test="${user.mid=='admin' }">
	                     	<span>
	                          <a href="${path_hd }/member/view?mid=${user.mid}">${user.mname }</a>
	                      </span>
	                      <span>
	                          <a href="${path_hd }/admin/adminPage">어드민페이지</a>
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
                   	<span>
                        <a href="${path_hd }/board/list">공지사항</a>
                    </span>
                </div>
            </div>
        </div>
    </div>
    <div class="header2">
        <div class="wrapper">
            <nav>
                <ul>
                    <li>
                        <a>유저관리</a>
                        <div class="children">
                            <ul class="wrapper">
								<li><a href="${path_hd }/member/list">유저목록</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a>상품관리</a>
                        <div class="children">
                            <ul class="wrapper">
                            	<li><a href="${path_hd }/goods/addForm">상품추가</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a>기타관리</a>
                        <div class="children">
                            <ul class="wrapper">
                               
                            </ul>
                        </div>
                    </li>
                </ul>
            </nav>
            <div class="toggle">
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>
    </div>
</header>