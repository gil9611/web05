<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path1" value="{pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버리스트</title>
</head>
<body>
<div class="wrap">
	<div class="wrapper">
<c:import url="../inc/header.jsp" />
<div class="commu_table_wrap">
    <table class="commu_table">
        <thead class="commu_thead">
            <tr>
            	<th class="commu_th0">NO</th>
                <th class="commu_th1">이름</th>
                <th class="commu_th2">ID</th>
                <th class="commu_th3">PW</th>
                <th class="commu_th4">전화번호</th>
                <th class="commu_th5">이메일</th>
                <th class="commu_th6">가입일</th>
            </tr>
        </thead>
        <tbody class="commu_tbody">
        	<c:forEach items="${memberList }" var="member" varStatus="no">
            <tr>
                <td>${no.count }</td>
                <td>${member.mname }</td>
				<td>${member.mid }</td>
				<td>${member.mpw }</td>
				<td>${member.mtell }</td>
				<td>${member.memail }</td>
				<td><fmt:formatDate value="${member.regdate }" pattern="yyyy-MM-dd" /></td>
            </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
<c:import url="../inc/footer.jsp" />
</div>
</div>
</body>
</html>