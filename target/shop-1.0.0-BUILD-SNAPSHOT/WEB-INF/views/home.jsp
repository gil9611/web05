<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<link href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Parisienne&amp;display=swap" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.5.8/swiper-bundle.min.css" rel="stylesheet">
<!DOCTYPE>
<html>
<head>
	<title>Home</title>
	<link href="${path }/css/reset.css" rel="stylesheet">
	<link href="${path }/css/common.css" rel="stylesheet">
	<link href="${path }/css/home.css" rel="stylesheet">
	<%@ include file="inc/head.jsp" %>
	<style type="text/css">
	</style>
</head>
<body>
<div class="wrap">
	<div class="wrapper">
		<%@ include file="inc/header.jsp" %>
		        <div class="slider1">
            <div class="wrapper">
                <div class="texts">
                    <div class="top">이벤트</div>
                    <div class="title">오늘의 집은 처음이세요?</div>
                    <div class="desc">
                        첫 구매 최대 10만원 할인<br>
                        종합 모델링 간편상담 신청하면 100만 포인트 증정</div>
                    <button>보러가기</button>
                </div>
                <div class="slider">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img src="${path }/img/kakao/furniture-731449_640.jpg">
                            </div>
                            <div class="swiper-slide">
                                <img src="${path }/img/kakao/ryan.png">
                            </div>
                            <div class="swiper-slide">
                                <img src="${path }/img/kakao/apeach.png">
                            </div>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="icons1">
            <div class="wrapper">
                <div class="title">
                    <b>ENIM </b>
                    <span>A VIVAMUS</span>
                </div>
                <div class="menus">
                    <a class="item">
                        <span class="img">
                            <img src="img/window1-point-24.png">
                        </span>
                        <span class="text">AENEAN</span>
                    </a>
                    <a class="item">
                        <span class="img">
                            <img src="img/window1-point-24.png">
                        </span>
                        <span class="text">SED</span>
                    </a>
                    <a class="item">
                        <span class="img">
                            <img src="img/window1-point-24.png">
                        </span>
                        <span class="text">NEC</span>
                    </a>
                    <a class="item">
                        <span class="img">
                            <img src="img/window1-point-24.png">
                        </span>
                        <span class="text">PURUS</span>
                    </a>
                    <a class="item">
                        <span class="img">
                            <img src="img/window1-point-24.png">
                        </span>
                        <span class="text">IPSUM</span>
                    </a>
                    <a class="item">
                        <span class="img">
                            <img src="img/window1-point-24.png">
                        </span>
                        <span class="text">ELIT</span>
                    </a>
                    <a class="item">
                        <span class="img">
                            <img src="img/window1-point-24.png">
                        </span>
                        <span class="text">CONSEC</span>
                    </a>
                    <a class="item">
                        <span class="img">
                            <img src="img/window1-point-24.png">
                        </span>
                        <span class="text">UTOK</span>
                    </a>
                    <a class="item">
                        <span class="img">
                            <img src="img/window1-point-24.png">
                        </span>
                        <span class="text">IUPE</span>
                    </a>
                </div>
            </div>
        </div>
		<div nid="cards1" class="cards1">
		    <div class="wrapper">
		        <div class="header">
		            <div class="left">
		                <span class="title">오늘의 선택</span>
		                <span class="desc">당신만을 위한 오늘의 선택</span>
		            </div>
		            <div class="right">
		                <button><a href="${path }/goods/pageList?search=gcategory1&keyword=가구&curPage=1">MORA</a></button>
		            </div>
		        </div>
		        <div class="cards">
		            <div class="card">
		                <div class="inner1">
		                    <div class="inner2">
		                        <a class="background" style="background-image: url(/img/photos/chairs-2181994_640.jpg)"></a>
		                        <div class="texts">
		                            <span class="tag">venenatis</span>
		                            <a class="title">Purus Dolor</a>
		                            <div class="desc">Phasellus in ligula eu dui commodo.</div>
		                            <div class="date">2021-06-17</div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		            <div class="card">
		                <div class="inner1">
		                    <div class="inner2">
		                        <a class="background" style="background-image: url(/img/photos/home-5835289_640.jpg)"></a>
		                        <div class="texts">
		                            <span class="tag">venenatis</span>
		                            <a class="title">Purus Dolor</a>
		                            <div class="desc">Phasellus in ligula eu dui commodo.</div>
		                            <div class="date">2021-06-17</div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		            <div class="card">
		                <div class="inner1">
		                    <div class="inner2">
		                        <a class="background" style="background-image: url(/img/photos/apartment-406901_640.jpg)"></a>
		                        <div class="texts">
		                            <span class="tag">ligula</span>
		                            <a class="title">Nec Vivamus</a>
		                            <div class="desc">Quisque molestie in turpis nec vehicula.</div>
		                            <div class="date">2021-06-17</div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		            <div class="card">
		                <div class="inner1">
		                    <div class="inner2">
		                        <a class="background" style="background-image: url(/img/photos/living-room-2155376_640.jpg)"></a>
		                        <div class="texts">
		                            <span class="tag">magna</span>
		                            <a class="title">Dolor ligula</a>
		                            <div class="desc">Phasellus aliquam massa risus.</div>
		                            <div class="date">2021-06-17</div>
		                        </div>
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<%@ include file="inc/footer.jsp" %>
	</div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.5.8/swiper-bundle.min.js"></script>
<script>
(function() {
    var swiper = new Swiper(".slider1 .swiper-container", {
        autoHeight: true,
        loop: true,
        autoplay: {
            delay: 5000,
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        }
    });
})();
</script>
</body>
</html>