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
		<form action="${path }/board/insert" method="post">
			<table class="table" id="lst_tb">
				<tbody>
						<tr>
							<th class="item1">제목</th>
							<td colspan="5">
								<input type="text" name="btit" required>
							</td>
						</tr>
						<tr>
							<th class="item2">작성자</th>
							<td>${user.mname }<input type="hidden" name="bname" value="${user.mname }"></td>
						</tr>
						<tr>
							<th class="item5"></th>
							<td colspan="5">
								<textarea name="bnote" cols="80" rows="40"></textarea>
							</td>
						</tr>
					<tr>
						<td colspan="4">
							<input type="submit" value="작성">
							<input type="reset" value="취소">
							<a href="${path }/board/list">글 목록</a>
						</td>
					</tr>	
				</tbody>
			</table>
		</form>
	<%@ include file="../inc/footer.jsp" %>
	</div>
</div>
</div>
</body>
</html>