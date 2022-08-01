<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
	<link href="${path }/css/reset.css" rel="stylesheet">
	<link href="${path }/css/common.css" rel="stylesheet">
	<%@ include file="../inc/head.jsp" %>
</head>
<body>
<div class="wrap">
	<div class="wrapper">
	<c:import url="../inc/header.jsp" />
	<div id="contents" class="contents">
		<h2 class="tit">회원가입</h2>
		<form action="${path }/member/add" method="post">
        <table>
            <tbody>
                <tr>
                    <th>아이디</th>
                    <td><input type="text" class="text" name="mid" pattern="(?=.*[a-zA-Z]).{4,}" placeholder="아이디 4자 이상" required></td>
                </tr>
                <tr>
                    <th>비밀번호</th>
                    <td><input type="password" class="text" name="mpw" pattern="(?=.*\d)(?=.*[a-zA-Z]).{6,}" placeholder="영문 + 숫자조합 6자이상" required></td>
                </tr>
                <tr>
                    <th>비밀번호 확인</th>
                    <td><input type="password" class="text" placeholder="비밀번호를 다시 입력해 주세요."></td>
                </tr>
                <tr>
                    <th>이름</th>
                    <td><input type="text" class="text" name="mname" placeholder="이름을 입력하세요." required></td>
                </tr>
                <tr>
                    <th>이메일</th>
                    <td><input type="text" id="email" name="memail" class="text" placeholder="이메일"></td>
                </tr>
                <tr>
                    <th>휴대폰</th>
                    <td><input type="text" id="mtell" name="mtell" class="text" placeholder="휴대폰번호"></td>
                </tr>
            </tbody>
        </table>
        <div class="jo_submit">
        	<input type="submit" value="가입하기">
    	</div>
    </form>
	</div>
	<c:import url="../inc/footer.jsp" />
</div>
</div>
</body>
</html>