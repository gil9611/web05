<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품추가</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
<h2>상품 추가</h2>
<form:form modelAttribute="goods" action="add" method="post">
	<table>
		<tr>
			<th><form:label path="gname">이름</form:label></th>
			<td>
				<form:input path="gname" size="20"/><br>
				<form:errors cssStyle="color:deeppink; font-size:14px" path="gname" />
			</td>
		</tr>
		<tr>
			<th><form:label path="gprice">가격</form:label></th>
			<td>
				<form:input type="number" path="gprice" size="20"/><br>
				<form:errors cssStyle="color:deeppink; font-size:14px" path="gprice" />
			</td>
		</tr>
		<tr>
			<th><form:label path="gamount">재고</form:label></th>
			<td>
				<form:input type="number" path="gamount" size="20"/><br>
				<form:errors cssStyle="color:deeppink; font-size:14px" path="gamount" />
			</td>
		</tr>
		<tr>
			<th><form:label path="gcategory1">카테고리1</form:label></th>
			<td>
				<form:select id="gcategory1" path="gcategory1">
					<option value="">====선택====</option>
					<form:options items="${ccList1 }" itemLabel="cgcategory" itemValue="cgcategory" />
				</form:select>
				<form:errors cssStyle="color:deeppink; font-size:14px" path="gcategory1" />
			</td>
		</tr>
		<tr>
			<th><form:label path="gcategory2">카테고리2</form:label></th>
			<td id="gcategory2_td">
				
			</td>
		</tr>
		<tr>
			<th><form:label path="gcolor">색갈</form:label></th>
			<td>
				<form:input path="gcolor" size="20"/><br>
				<form:errors cssStyle="color:deeppink; font-size:14px" path="gcolor" />
			</td>
		</tr>
		<tr>
			<th><form:label path="gsize">사이즈</form:label></th>
			<td>
				<form:input path="gsize" size="20"/><br>
				<form:errors cssStyle="color:deeppink; font-size:14px" path="gsize" />
			</td>
		</tr>
		<tr>
			<th><form:label path="gmeterial">재질</form:label></th>
			<td>
				<form:input path="gmeterial" size="20"/><br>
				<form:errors cssStyle="color:deeppink; font-size:14px" path="gmeterial" />
			</td>
		</tr>
		<tr>
			<th><form:label path="gcomment">설명</form:label></th>
			<td>
				<form:textarea path="gcomment" cols="30" rows="5" />
			</td>
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
									$("#msg").html("<p> 결과 : "+ms.ms+"</p>");
									$("#gimg").val(ms.imgSave);
								}
							});
						});
						$('#gcategory1').change(function(){
							$('#msg').html("<p> 결과 :</p>");
						});
					});
				</script>
			</td>
		</tr>
		<tr>
			<td colspan="4">
				<input type="submit" value="작성">
				<input type="reset" value="취소">
			</td>
		</tr>		
	</table>
</form:form>
</body>
</html>