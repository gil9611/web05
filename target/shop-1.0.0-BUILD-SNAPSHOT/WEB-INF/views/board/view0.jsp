<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
	<link href="${path}/css/reset.css" rel="stylesheet">
	<link href="${path}/css/common.css" rel="stylesheet">
	<%@ include file="../inc/head.jsp" %>
</head>
<body>
<div class="wrap">
	<div class="wrapper">
	<%@ include file="../inc/header.jsp" %>
<div id="content">
		<table class="table" id="lst_tb">
			<tbody>
				<tr>
					<th class="item1">제목</th>
					<td colspan="5">${board.btit }</td>
				</tr>
				<tr>
					<th class="item2">작성자</th>
					<td>${board.bname }</td>
					<th class="item3">작성일</th>
					<td><fmt:formatDate value="${board.regdate }" pattern="yyyy-MM-dd" /></td>
				</tr>
				<tr>
					<th class="item5">내용</th>
					<td colspan="5">${board.bnote }</td>
				</tr>
				
				<tr>
					<td colspan="4">
						<c:if test="${sid=='admin' }">
							<a href="${path }/board/updateForm?bno=${board.bno }">글 수정</a>
							<a href="${path }/board/delete?bno=${board.bno }">글 삭제</a>
						</c:if>
						<a href="${path }/board/list">글 목록</a>
					</td>
				</tr>
				
			</tbody>
		</table>
	<%@ include file="../inc/footer.jsp" %>
	</div>
</div>
</div>
</body>
</html>