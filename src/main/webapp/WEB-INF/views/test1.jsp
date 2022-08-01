<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE>
<html>
<head>
	<title>Test</title>
	<%@ include file="inc/head.jsp" %>
</head>
<body>
<div class="wrap">
<%@ include file="inc/header.jsp" %>
<h1>
	Hello test!
</h1>
<h2><a href="${path}/notice/list.do">공지사항</a></h2>
<h2><a href="${path}/notice/pageList.do?curPage=1">공지사항2</a></h2>
<h2><a href="${path}/goods/list?search=gcategory1&keyword=가구">굿즈리스트</a></h2>
<h2><a href="${path}/goods/pageList?search=gcategory1&keyword=가구&curPage=1">페이지리스트</a></h2>
<h2><a href="/shop/upload/uploadFormAjax">업로드테스트</a></h2>
<h2><a href="${path}/admin/adminPage">어드민페이지</a></h2>
<%@ include file="inc/footer.jsp" %>
</div>
</body>
</html>