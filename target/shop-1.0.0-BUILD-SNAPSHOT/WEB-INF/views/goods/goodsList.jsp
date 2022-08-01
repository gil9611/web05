<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
	<link href="${path}/css/reset.css" rel="stylesheet">
	<link href="${path}/css/common.css" rel="stylesheet">
	<%@ include file="../inc/head.jsp" %>
</head>
<body>
<div class="wrap">
	<div class="wrapper">
	<%@ include file="../inc/header.jsp" %>
			<table class="table">
			    <thead class="thead">
			        <tr>
			            <th class="commu_th1">img</th>
			            <th class="commu_th2">이름</th>
			            <th class="commu_th3">가격</th>
			        </tr>
			    </thead>
			    <tbody class="commu_tbody">
					<c:forEach items="${goodsList }" var="goods">
				        <tr>
				            <td><img alt="상품이미지" src="<c:url value="${goods.gimg }"/>"></td>
				            <td><a href="${path }/goods/view?gcode=${goods.gcode }">${goods.gname }</a></td>
				            <td>${goods.gprice }</td>
				        </tr>
			        </c:forEach>
			    </tbody>
			</table>
	<%@ include file="../inc/footer.jsp" %>
	</div>
</div>
</body>
</html>