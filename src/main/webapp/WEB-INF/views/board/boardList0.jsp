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
			            <th class="commu_th1">NO</th>
			            <th class="commu_th2">제목</th>
			            <th class="commu_th3">작성일</th>
			        </tr>
			    </thead>
			    <tbody class="commu_tbody">
					<c:forEach items="${boardList }" var="board">
				        <tr>
				            <td>${board.bno }</td>
				            <td><a href="${path }/board/view?bno=${board.bno }">${board.btit }</a></td>
				            <td><fmt:formatDate value="${board.regdate }" pattern="yyyy-MM-dd" /></td>
				        </tr>
			        </c:forEach>
			    </tbody>
			</table>
			<c:if test="${sid=='admin' }">
				<div>
					<button><a href="${path}/board/writeForm">글쓰기</a></button>
				</div>
			</c:if>
	<%@ include file="../inc/footer.jsp" %>
	</div>
</div>
</body>
</html>