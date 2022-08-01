<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link href="${path }/css/reset.css" rel="stylesheet">
	<link href="${path }/css/common.css" rel="stylesheet">
	<%@ include file="../inc/head.jsp" %>
</head>
<body>
<div class="wrap">
	<div class="wrapper">
	<c:import url="../inc/header.jsp" />
	<form action="update" method="post">
		<table>
		    <tbody>
		    	<tr>
                    <th>아이디</th>
                    <td><input type="text" class="text" name="mid" value="${member.mid}" readonly></td>
                </tr>
		        <tr>
		             <th>이름</th>
                    <td><input type="text" class="text" name="mname" value="${member.mname}" required></td>
		        </tr>
		        <tr>
		            <th>이메일</th>
                    <td><input type="text" id="email" name="memail" class="text" value="${member.memail}" required></td>
		        </tr>
		        <tr>
		            <th>휴대폰</th>
                    <td><input type="text" id="mtell" name="mtell" class="text" value="${member.mtell}" required></td>
		        </tr>
		    </tbody>
		</table>
		<div class="">
		    <div class="">
		        <button type="submit">
		            <span>수정완료</span>
		        </button>
		    </div>
		</div>
	</form>
	<c:import url="../inc/footer.jsp" />
	</div>
</div>
</body>
</html>