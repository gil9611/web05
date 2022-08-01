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
	#img {height: 600px; width: 600px;}
	.goodsView .table th, .goodsView .table td {height: 100px; width: 100px}
</style>
</head>
<body>
<div class="wrap">
	<div class="wrapper">
	<%@ include file="../inc/header.jsp" %>
		<div class="goodsView">
			<table class="table" id="">
				<tbody>
					<tr>
						<th colspan="8">${goods.gname }</th>
					</tr>
					<tr>
						<td colspan="6" rowspan="6" align="center" valign="middle"><img id="img" alt="제품이미지" src="<c:url value="${goods.gimg }"/>"></td>
						<th class="item">가격</th>
						<td>${goods.gprice }원</td>
					</tr>
					<tr>
						<th class="item">색갈</th>
						<td>${goods.gcolor }</td>
					</tr>
					<tr>
						<th class="item">사이즈</th>
						<td>${goods.gsize }</td>
					</tr>
					<tr>
						<th class="item">재질</th>
						<td>${goods.gmeterial }</td>
					</tr>
					<tr>
						<td colspan="6">${goods.gcomment }</td>
					</tr>
					<tr>
						<td colspan="4">
							<a href="">상품 주문</a>
							<a href="${path }/InsertBasketCtrl?gcode=${goods.gcode}">장바구니 담기</a>
							<a href="${path_hd}/goods/pageList?search=gcategory2&keyword=${gcategory2 }&curPage=1">카테고리 목록</a>
						</td>
						<th>남은 재고</th>
						<td>${goods.gamount }</td>
					</tr>
					<c:if test="${sid=='admin' }">
						<tr>
							<td colspan="4">
								<a href="${path }/GetEditGoodsFormCtrl?gcode=${goods.gcode }">제품 수정</a>
							</td>
						</tr>
					</c:if>
				</tbody>
			</table>
		</div>
	<%@ include file="../inc/footer.jsp" %>
	</div>
</div>
</body>
</html>