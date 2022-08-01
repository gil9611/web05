<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
	<link href="${path }/css/reset.css" rel="stylesheet">
	<link href="${path }/css/common.css" rel="stylesheet">
	<%@ include file="../inc/head.jsp" %>
</head>
<style>
	#content {width: 800px; margin: auto;}
	.table thead th {color: red; padding: 0 10px;}
	.table tbody tr td {padding: 5px 10px;}
	.table tbody tr td:nth-child(2), .table tbody tr td:nth-child(3) {text-align: center;}
</style>
<body>
<div class="wrap">
	<div class="wrapper">
	<%@ include file="../inc/header.jsp" %>
	<div id="content" class="panel-body">
		<h2>장바구니 목록</h2>
		<hr>
		<table class="table" id="lst_tb">
			<thead>
				<tr>
					<th>제품 이름</th>
					<th>주문 갯수</th>
					<th>제품 가격</th>
				</tr>
			</thead>
			<tbody class="tb">
				<c:forEach items="${basketList }" var="basket" varStatus="status">
					<tr>
						<td><a href="${path }/goods/view?gcode=${basket.gno }">${basket.gname }</a></td>
						<td>${basket.bamount }개</td>
						<td>${basket.bprice }원</td>
						<td><button><a class="" href="${path }/payment/addForm?gno=${basket.gno}">주문하기</a></button></td>
						<td><button><a class="" href="${path }/basket/delete?bno=${basket.bno }">삭제</a></button></td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="6">
						
			        </td>
		        </tr>
			</tfoot>
		</table>
		<hr>
	</div>
	<%@ include file="../inc/footer.jsp" %>
	</div>
</div>
</body>
</html>