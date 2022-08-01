<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path_ft" value="${pageContext.request.contextPath }"/>
<link href="${path_ft }/css/footer.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Parisienne&amp;display=swap" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
<c:set var="path_ft" value="{pageContext.request.contextPath"/>
<footer class="footer">
	<div nid="footer1" class="footer1">
    
    <div class="wrapper clearfix">
        <a class="brand" href="${path_ft }/">오늘의 집</a>
        <div class="copyright">
            <div>고객센터 : 1670-0876</div>
            <div>09:00~18:00 (주말, 공휴일은 오늘의집 직접배송 및 맞춤업체찾기 문의에 한해 전화 상담 가능)</div>
            <div>© 2021. Publessing. All rights reserved.</div>
            <div>Copyright 2014. bucketplace, Co., Ltd. All rights reserved</div>
        </div>
        <div class="sns">
            <a class="fa fa-twitter"></a>
            <a class="fa fa-facebook"></a>
            <a class="fa fa-instagram"></a>
        </div>
    </div>
</div>
</footer>