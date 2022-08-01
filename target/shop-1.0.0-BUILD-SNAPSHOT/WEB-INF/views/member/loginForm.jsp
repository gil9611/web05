<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
	<link href="${path }/css/reset.css" rel="stylesheet">
	<link href="${path }/css/common.css" rel="stylesheet">
	<%@ include file="../inc/head.jsp" %>
</head>
<style>
#login{padding-top: 50px; margin: 100px auto; width: 560px; border: 1px solid; border-radius: 30px;}
#login h2{display: block; font-size: 30px; padding: 45px 0 25px; text-align: center; border-bottom: 1px solid #d5d5d5;}
#login fieldset{ padding: 25px 70px 60px;}
#login legend{ visibility: hidden;}
#login label{ display: block; margin: 15px 0 5px; font-size: 18px; font-weight: 500;}
.log_text{ width: 378px; height: 38px; border: 1px solid #d5d5d5; padding: 0 20px; font-size: 18px;}
.log_text::placeholder{ font-size: 18px; color: #d5d5d5;}
#login div{display: block; font-size: 18px;}
.log_ck{ margin-top: 40px;}
.log_ck p{display: inline-block;}
.log_find{ float: right;}
button{display: block; width: 420px; height: 50px; margin-top: 40px; font-size: 16px; background-color: #4374D9; color: #fff; border: 0;}
.log_joinGo{display: block; margin-top: 20px; width: 420px; height: 50px; text-align: center;}
</style>
<body>
<div class="wrap">
<div class="wrapper">
<%@ include file="../inc/header.jsp" %>
<div id="login">
	<h2>로그인</h2>
	<form action="${path }/member/login" method="get">
	     <fieldset class="loginField">
	         <legend>로그인</legend>
	      <label for="">아이디</label>
	      <input type="text" class="log_text" name="mid" placeholder="아이디를 입력해 주세요.">
	      <label for="">비밀번호</label>
	      <input type="password" class="log_text" name="mpw" placeholder="비밀번호를 입력해 주세요.">
	      <div>
	          <button type="submit">로그인</button>
	          <a href="${path}/member/join" class="log_joinGo">회원가입</a>
	      </div>
	     </fieldset>
	</form>
</div>
<%@ include file="../inc/footer.jsp" %>
</div>
</div>
</body>
</html>