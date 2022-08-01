<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
<link href="${path}/css/reset.css" rel="stylesheet">
<link href="${path}/css/common.css" rel="stylesheet">
<link href="${path}/css/goodsCard2.css" rel="stylesheet">
<%@ include file="../inc/head.jsp" %>
<style>
.tit { text-align:center; padding-top:2rem; padding-bottom:0.8rem; }
#myTable { height:278px; }
#myTable tr { height:30px; }
#myTable td { line-height:30px; height:30px; }
#myTable td:nth-child(1) { width:10%; }
#myTable td:nth-child(2) { width:80%; }
.paging { width:500px; height:80px; margin:20px auto; }
.paging td { text-align:center; line-height:80px; }
.paging .item1, .paging .item2, .paging .item4, .paging .item5 { width:12%; }
.paging .item3 { width:50%; }
</style>
</head>
<body>
<div class="wrap">
	<div class="wrapper">
		<%@ include file="../inc/header.jsp" %>
		<div id="contents" class="contents">
			<div class="container px-4 px-lg-5 mt-5">
				<div class="row">
					<br><br>		
					<div class="cards1">
		            <div class="wrapper">
		                <div class="header">
		                    <div class="left">
		                        <span class="title">당신의 집을 한껏 꾸며줄 인테리어 모음</span>
		                        <span class="desc">오늘 당신의 컬러는 어떤 색인가요</span>
		                    </div>
		                    <div class="right">
		                        <button>검색</button>
		                    </div>
		                </div>
		                <div class="cards">
							<c:choose>
								<c:when test="${cnt gt 0 }">	
									<c:forEach items="${goodsPageList}" var="goods" varStatus="status">
					                    <div class="card">
					                        <div class="inner1">
					                        	<a href="view?gcode=${goods.gcode }">
				                           			<div class="inner2">
						                                <p class="background" style="background-image:url(<c:url value="${goods.gimg }"/>)"></p>
						                                <div class="texts">
						                                    <span class="tag">${goods.gcategory2 }</span>
						                                    <p class="title">${goods.gname }</p>
						                                    <div class="desc">${goods.gcomment }</div>
						                                    <div class="price">${goods.gprice }원</div>
				                                		</div>
				                                	</div>
				                                </a>
					                        </div>
					                    </div>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<tr>
										<td colspan="3">상품이 없습니다.</td>
									</tr>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
		            </div>
		        </div>
				<div class="row">
					<table class="paging">
						<tbody>
						<tr>
							<td class="item1">
								<c:if test="${page.curPage > 1}">
								<a href="javascript:;" onclick="list('1')">[처음]</a>
								</c:if>
							</td>
							<td class="item2">
								<c:if test="${page.curPage > 1}">
								<a href="javascript:;" onclick="list('${page.curPage-1}')">[이전]</a>
								</c:if>
							</td>
							<td class="item3">
							<c:forEach var="num" begin="${page.startPage }" end="${page.endPage }">
								<c:choose>
									<c:when test="${num == page.curPage}">
										<span style="color:red; font-weight:bold">${num }</span>
									</c:when>
									<c:otherwise>
										<a href="javascript:;" onclick="list('${num }')">${num }</a>&nbsp;
									</c:otherwise>
								</c:choose>
							</c:forEach>
							</td>
							<td class="item4">
								<c:if test="${page.curBlock < page.totBlock}">
								<a href="javascript:;" onclick="list('${page.nextPage}')">[다음]</a>
								</c:if>
							</td>
							<td class="item5">
								&nbsp;<c:if test="${page.curPage < page.totPage}">
								<a href="javascript:;" onclick="list('${page.totPage}')">[끝]</a>
								</c:if>
							</td>
						</tr>
						</tbody>
					</table>
					<script>
					$(function(){
						
					});
					function list(page){
						location.href="../goods/pageList.do?curPage="+page;
					}
					</script>
				</div>
			</div>
		</div>
		<div class="blank" style="min-height:350px"></div>
		<%@ include file="../inc/footer.jsp" %>
	</div>
</div>
</body>
</html>