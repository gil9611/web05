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
<style>
	.board_table_wrap {margin: auto; margin-top: 30px;}
	.board_table {font-size: 18px;}
	.board_thead {text-align: center;}
	.board_thead tr {height: 60px; line-height: 60px;}
	.board_thead th {border-top: 2px solid #1f75b0; border-bottom: 1px solid #ddd; background: #fbfbfc;}
	.board_th1 {width: 100px;}
	.board_th2 {width: 890px;}
	.board_th3 {width: 130px;}
	.board_tbody tr td:first-child {text-align: center;}
	.board_tbody tr td:last-child {text-align: center;}
	.board_table td {border-bottom: 1px solid #ddd; padding: 20px 10px;}
	
	.board_form_bt {margin-top: 40px;}
    .board_button_wrap {width: 200px; height: 50px; margin: auto;}
    .board_button_wrap button {width: 100%; height: 100%; background: #1f75b0; border: 0; color: #fff;}
    .board_button_wrap button a {color: #fff;}
    .board_button_wrap span {font-size: 18px;}
</style>
<body>
<div class="wrap">
	<div class="wrapper">
	<%@ include file="../inc/header.jsp" %>
			<div class="board_table_wrap">
	             <table class="board_table">
	                 <thead class="board_thead">
	                     <tr>
	                         <th class="board_th1">NO</th>
	                         <th class="board_th2">제목</th>
	                         <th class="board_th3">작성일</th>
	                     </tr>
	                 </thead>
	                 <tbody class="board_tbody">
	                 	<c:forEach items="${boardList }" var="board">
		                     <tr>
		                         <td>${board.bno }</td>
		                         <td><a href="${path }/board/view?bno=${board.bno }">${board.btit }</a></td>
		                         <td><fmt:formatDate value="${board.regdate }" pattern="yyyy-MM-dd" /></td>
		                     </tr>
                     	</c:forEach>
	                 </tbody>
	             </table>
            </div>
			<c:if test="${user.mid=='admin' }">
				<div class="board_form_bt">
                    <div class="board_button_wrap">
                        <button type="submit" >
                            <span><a href="${path}/board/writeForm">글쓰기</a></span>
                        </button>
                    </div>
                </div>
			</c:if>
	<%@ include file="../inc/footer.jsp" %>
	</div>
</div>
</body>
</html>