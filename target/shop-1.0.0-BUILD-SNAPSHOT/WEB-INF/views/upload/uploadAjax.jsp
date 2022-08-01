<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일업로드</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
	<link href="${path }/css/reset.css" rel="stylesheet">
	<link href="${path }/css/common.css" rel="stylesheet">
	<%@ include file="../inc/head.jsp" %>
</head>
<body>
<div class="wrap">
	<div class="wrapper">
		<div>
			<h2>Ajax 파일 업로드</h2>
			<input type="file" name="uploadFile" id="uploadFile" multiple/>
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
						url: "/shop/upload/uploadAjax",
						processData : false,
						contentType : false,
						data : formData,
						type : "POST",
						success : function(ms) {
							$("#msg").html("<p> 결과 : "+ms.ms+"<p>");
						}
					});
				});
			});
		</script>
	</div>
</div>
</body>
</html>