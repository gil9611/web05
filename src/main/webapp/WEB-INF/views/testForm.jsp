<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스프링 폼 연습</title>
</head>
<body>
<h2>스프링 폼 연습</h2>
<form:form modelAttribute="formDTO" action="save" method="post">
	<table>
		 <tr>
			<th><form:label path="name">이름</form:label></th>
			<th><form:input path="name"/></th>
		 </tr>
		 <tr>
			<th><form:label path="id">아이디</form:label></th>
			<th><form:input path="id"/></th>
		 </tr>
		 <tr>
			<th><form:label path="pw">패스워드</form:label></th>
			<th><form:input path="pw"/></th>
		 </tr>
		 <tr>
			<th><form:label path="email">이메일</form:label></th>
			<th><form:input path="email"/></th>
		 </tr>
		 <tr>
		 	<td><input type="submit" value="전송" /></td>
		 </tr>
	</table>
</form:form>
</body>
</html>