<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제페이지</title>
	<link href="${path }/css/reset.css" rel="stylesheet">
	<link href="${path }/css/common.css" rel="stylesheet">
	<%@ include file="../inc/head.jsp" %>
</head>
<style type="text/css">
	.goodsView {display: block; margin-top: 100px;}
	.img_div {height: 600px; width: 600px; float: left;}
	#img {height: 90%; margin: 30px;}
	.goodsView table {float: left;}
	.goodsView .table th, .goodsView .table td {height: 50px; width: 200px}
	.gv_butten {clear: both;}
</style>
<body>
<div class="wrap">
	<div class="wrapper">
	<%@ include file="../inc/header.jsp" %>
	<div class="goodsView">
		<form  action="add" method="post">
			<div class="img_div">
				<img id="img" alt="제품이미지" src="<c:url value="${goods.gimg }"/>">
			</div>
			<table class="table" id="">
				<tbody>
					<tr>
						<th colspan="8"><label name="gname">${goods.gname }</label>
						<input type="hidden" name="gname" value="${goods.gname }"/>
						<input type="hidden" name="gcode" value="${goods.gcode }"/></th>
					</tr>
					<tr>
						<th class="item">가격</th>
						<td>${goods.gprice }원</td>
					</tr>
					<tr>
						<th class="item">색갈</th>
						<td>${goods.gcolor }</td>
					</tr>
					<c:if test="${goods.gsize }">
					<tr>
						<th class="item">사이즈</th>
						<td>${goods.gsize }</td>
					</tr>
					</c:if>
					<c:if test="${goods.gmeterial }">
					<tr>
						<th class="item">재질</th>
						<td>${goods.gmeterial }</td>
					</tr>
					</c:if>
					<tr>
						<th class="item">남은재고</th>
						<td>${goods.gamount }</td>
					</tr>
					<tr>
						<th class="item"><label name="pamount">주문갯수</label></th>
						<td><input type="number" name="pamount" size="20" value="1"/></td>
					</tr>
					<tr>
						<th class="item"><label name="pmoney">결제 가격</label></th>
						<td><input type="number" name="pmoney" id="pmoney" size="20" readonly="readonly"/></td>
					</tr>
				</tbody>
			</table>
			<div class="gv_butten">
					<ul>
						<li><input type="submit" value="상품주문"></li>
					</ul>
				</div>
		</form>
	</div>
	<%@ include file="../inc/footer.jsp" %>
	</div>
</div>
</body>
</html>