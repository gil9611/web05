<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
	<form:form modelAttribute="goods" action="update" method="post">
		<div class="goodsView">
			<div class="img_div">
				<img id="img" alt="제품이미지" src="<c:url value="${goods.gimg }"/>">
			</div>
			<table class="table" id="">
				<tbody>
					<tr>
						<th colspan="8"><form:input path="gname" size="20" value="${goods.gname }"/></th>
					</tr>
					<tr>
						<th class="item"><form:label path="gprice">가격</form:label></th>
						<td><form:input type="number" path="gprice" size="20" value="${goods.gprice }"/>원</td>
					</tr>
					<tr>
						<th class="item"><form:label path="gcolor">색갈</form:label></th>
						<td><form:input path="gcolor" size="20" value="${goods.gcolor }"/></td>
					</tr>
					<tr>
						<th class="item"><form:label path="gsize">사이즈</form:label></th>
						<td><form:input path="gsize" size="20" value="${goods.gsize }"/></td>
					</tr>
					<tr>
						<th class="item"><form:label path="gmeterial">재질</form:label></th>
						<td><form:input path="gmeterial" size="20" value="${goods.gmeterial }"/></td>
					</tr>
					<tr>
						<th class="item"><form:label path="gamount">재고</form:label></th>
						<td><form:input type="number" path="gamount" size="20" value="${goods.gamount }"/></td>
					</tr>
					<tr>
						<td colspan="6">${goods.gcomment }</td>
					</tr>
					<tr>
						<th><form:label path="gimg">이미지 업로드</form:label></th>
						<td>
							<div>
								<input type="file" name="uploadFile" id="uploadFile" multiple/>
								<form:input id="gimg" path="gimg" size="20" value=""/>
								<br>
								<hr>
								<br>
								<input type="button" name="uploadBtn" id="uploadBtn" value="파일 업로드"><br><br>
								<div id="msg"></div>
							</div>
							<script>
								$(document).ready(function(){
									$("#uploadBtn").on("click", function(){
										var formData = new FormData();
										var inputFile = $("#uploadFile");
										var files = inputFile[0].files;
										//console.log(files);
										for(var i=0;i<files.length;i++){
											formData.append("uploadFile", files[i]);
										}
										$.ajax({
											url: "/shop/upload/uploadImg",
											processData : false,
											contentType : false,
											data : formData,
											type : "POST",
											success : function(ms) {
												$("#msg").html("<p> 결과 : "+ms.ms+"<p>");
												$("#gimg").val(ms.imgSave);
											}
										});
									});
									$("#gcategory1").chang(function(){
										$("#gcategory2_td").html();
									});
								});
							</script>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="gv_butten">
				<ul>
					<li><button><a href="">상품 업데이트</a></button></li>
					<li><button><a href="${path}/goods/pageList?search=gcategory2&keyword=${goods.gcategory2 }&curPage=1">카테고리 목록</a></button></li>
				</ul>
			</div>
		</div>
	</form:form>
	<%@ include file="../inc/footer.jsp" %>
	</div>
</div>
</body>
</html>