<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path_hd" value="${pageContext.request.contextPath }"/>
<link href="${path_hd }/css/header2.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
<header class="header1">
    <div class="top">
        <div class="wrapper">
            <div class="brand">
                <a href="${path_hd }/" >오늘의집</a>
            </div>
            <div class="search_wrap">
                <div class="search">
                    <input type="text" placeholder="통합검색">
                    <i class="fa fa-search"></i>
                </div>
                <div class="hd_login">
                    <span>
                        <img src="" alt="">
                    </span>
                    <c:choose>
	                     <c:when test="${user==null }">
	                      <span>
	                          <a href="${path_hd }/member/loginForm">로그인</a>
	                      </span>
	                      <span>
	                          <a href="${path_hd }/member/join">회원가입</a>
	                      </span>
	                     </c:when>
	                     <c:when test="${user.mid=='admin' }">
	                     	<span>
	                          <a href="${path_hd }/member/updateForm">${user.mname }</a>
	                      </span>
	                      <span>
	                          <a href="${path_hd }/admin/adminPage">어드민페이지</a>
	                      </span>
	                      <span>
	                          <a href="${path_hd }/member/logout">로그아웃</a>
	                      </span>
	                     </c:when>
	                     <c:otherwise>
	                     	<span>
	                          <a href="${path_hd }/member/updateForm">${user.mname }</a>
	                      </span>
	                      <span>
	                          <a href="${path_hd }/basket/list">장바구니</a>
	                      </span>
	                      <span>
	                          <a href="${path_hd }/member/logout">로그아웃</a>
	                      </span>
	                     </c:otherwise>
                   	</c:choose>
                   	<span>
                        <a href="${path_hd }/board/list">공지사항</a>
                    </span>
                </div>
            </div>
        </div>
    </div>
    <div class="header2">
        <div class="wrapper">
            <nav>
                <ul>
                    <li>
                        <a href="${path_hd}/goods/pageList?search=gcategory1&keyword=가구&curPage=1">가구</a>
                        <div class="children">
                            <ul class="wrapper">
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=침대&curPage=1">침대</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=소파&curPage=1">소파</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=테이블&curPage=1">테이블·식탁·책상</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=서랍수납장&curPage=1">서랍·수납장</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=헹거옷장&curPage=1">행거·옷장</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=의자&curPage=1">의자</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=화장대콘솔&curPage=1">화장대·콘솔</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="${path_hd}/goods/pageList?search=gcategory1&keyword=패브릭&curPage=1">패브릭</a>
                        <div class="children">
                            <ul class="wrapper">
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=여름패브릭&curPage=1">여름패브릭</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=침구세트&curPage=1">침구세트</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=이불이불솜&curPage=1">이불·이불솜</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=베개베개커버&curPage=1">베개·베개커버</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=토퍼패드&curPage=1">토퍼·패드</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=러그카페트&curPage=1">러그·카페트</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=쿠션방석&curPage=1">쿠션·방석</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=소파생활커버&curPage=1">소파·생활커버</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="${path_hd}/goods/pageList?search=gcategory1&keyword=조명&curPage=1">조명</a>
                        <div class="children">
                            <ul class="wrapper">
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=LED평판등&curPage=1">LED평판등</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=천장등&curPage=1">천장등</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=장스탠드&curPage=1">장스탠드</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=단스탠드&curPage=1">단스탠드</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=무드등장식조명&curPage=1">무드등·장식조명</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=벽조명&curPage=1">벽조명</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="${path_hd}/goods/pageList?search=gcategory1&keyword=데코식물&curPage=1">데코·식물</a>
                        <div class="children">
                            <ul class="wrapper">
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=캔들디퓨저&curPage=1">캔들·디퓨저</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=플라워식물&curPage=1">플라워·식물</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=시계&curPage=1">시계</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=인테리어소품&curPage=1">인테리어소품</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=DIY취미공예&curPage=1">DIY·취미·공예</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=월데코장식&curPage=1">월데코·장식</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="${path_hd}/goods/pageList?search=gcategory1&keyword=수납정리&curPage=1">수납·정리</a>
                        <div class="children">
                            <ul class="wrapper">
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=서랍장트롤리&curPage=1">서랍장·트롤리</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=리빙박스수납함&curPage=1">리빙박스·수납함</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=바구니바스켓&curPage=1">바구니·바스켓</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=헹거&curPage=1">행거</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=선반&curPage=1">선반</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=화장대테이블정리&curPage=1">화장대·테이블정리</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=현관신발정리&curPage=1">현관·신발정리</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=후크수납걸이&curPage=1">후크·수납걸이</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="${path_hd}/goods/pageList?search=gcategory1&keyword=공구DIY&curPage=1">공구·DIY</a>
                        <div class="children">
                            <ul class="wrapper">
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=페인트부자재&curPage=1">페인트·부자재</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=벽지시트지&curPage=1">벽지·시트지</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=바닥재&curPage=1">바닥재</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=타일파벽돌&curPage=1">타일·파벽돌</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=목재&curPage=1">목재</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=공구&curPage=1">공구</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=수도&curPage=1">수도</a></li>
                                <li><a href="${path_hd}/goods/pageList?search=gcategory2&keyword=전기&curPage=1">전기</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </nav>
            <div class="toggle">
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>
    </div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.5.8/swiper-bundle.min.js"></script>
<script type="text/javascript">
$(".header2 .toggle").on("click", function() {
    $(this).closest(".header2").toggleClass("opened");
});

$(".header2 nav > ul > li > a").on("click", function() {
    $(this).closest("li").toggleClass("on");
});
</script>
</header>