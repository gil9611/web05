<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품상세</title>
	<link href="${path }/css/reset.css" rel="stylesheet">
	<link href="${path }/css/common.css" rel="stylesheet">
	<%@ include file="../inc/head.jsp" %>
<style type="text/css">
	.goodsView {display: block; margin-top: 100px;}
	.img_div {height: 600px; width: 600px; float: left;}
	#img {height: 90%; margin: 30px;}
	.goodsView table {float: left;}
	.goodsView .table th, .goodsView .table td {height: 50px; width: 200px}
	.gv_butten {clear: both;}
</style>
</head>
<body>
<div class="wrap">
	<div class="wrapper">
	<%@ include file="../inc/header.jsp" %>
		<div class="goodsView">
			<div class="img_div">
				<img id="img" alt="제품이미지" src="<c:url value="${goods.gimg }"/>">
			</div>
			<table class="table" id="">
				<tbody>
					<tr>
						<th colspan="8">${goods.gname }</th>
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
						<td colspan="6">${goods.gcomment }</td>
					</tr>
					<c:if test="${sid=='admin' }">
						<tr>
							<td colspan="4">
								<button><a href="${path }/goods/goodsUpdateForm?gcode=${goods.gcode }">제품 수정</a></button>
							</td>
						</tr>
					</c:if>
				</tbody>
			</table>
			<div class="gv_butten">
			
				<ul>
				<c:if test="${user != null }">
					<li><button><a href="${path }/payment/addForm?gno=${goods.gno}">상품 주문</a></button></li>
					<li><button><a href="${path }/basket/add/?gcode=${goods.gcode}">장바구니 담기</a></button></li>
				</c:if>
					<li><button><a href="${path }/goods/pageList?search=gcategory2&keyword=${goods.gcategory2 }&curPage=1">카테고리 목록</a></button></li>
				</ul>
			</div>
		</div>
	<%@ include file="../inc/footer.jsp" %>
	</div>
</div>
</body>
</html>