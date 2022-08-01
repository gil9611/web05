<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE>
<html>
<head>
	<title>Home</title>
	<link href="${path }/css/reset.css" rel="stylesheet">
	<link href="${path }/css/common.css" rel="stylesheet">
	<%@ include file="../inc/head.jsp" %>
	<style type="text/css">
	</style>
</head>
<body>
<div class="wrap">
	<div class="wrapper">
		<%@ include file="../inc/adminHeader.jsp" %>
		<h1>
			Hello admin!
		</h1>
		<h2><a href="${path }/test">go test</a></h2>
		<%@ include file="../inc/footer.jsp" %>
	</div>
</div>
</body>
</html>