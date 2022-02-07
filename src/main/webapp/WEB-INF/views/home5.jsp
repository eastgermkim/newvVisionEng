<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>New Vision ENG</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="shortcut icon" type="image/x-icon"
	href="/resources/img/nvicon.png">
	
<!-- swiperjs. -->
<link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css"/>
<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

<!-- CSS here -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="/resources/css/magnific-popup.css">
<link rel="stylesheet" href="/resources/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/css/themify-icons.css">
<link rel="stylesheet" href="/resources/css/nice-select.css">
<link rel="stylesheet" href="/resources/css/flaticon.css">
<link rel="stylesheet" href="/resources/css/animate.css">
<link rel="stylesheet" href="/resources/css/slicknav.css">
<link rel="stylesheet" href="/resources/css/style.css">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

<!-- AOS -->
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>

<style>
#header_main_pc{
		display: none;
		position: fixed;
	    width: 100%;
	    z-index: 98;
	}

@media (min-width : 991.5px){
	#header_main_mobile{
		display: none;
	}
	#header_main_pc{
		display: block;
	}
}

.slider-area .single-slider {
	height:100vh;
}

.slider-area .slider-active .owl-dots{
	display:flex;
	width:40%;
	height:5%;
	top:40%;
	left:11%;
}

.slider-area .slider-active .owl-dots div{
	border:none;
	width: auto;
    height: 100%;
    background: transparent;
    display: block;
    margin: 0;
    color:#c9c9c9;
    font-size:1.1em;
    font-weight:300;
}
 
.slider-area .slider-active .owl-dots div.active{
	background:transparent;
	color:#fff;
	font-weight:500;
}

.slider-area .slider-active .owl-dots .owl-dot .business{
	color:#fff;
	font-size:1.5em;
}

.slider-area .slider-active .owl-dots .owl-dot:not(:first-child)::before{
    content: "";
    display: inline-block;
    width: 1px;
    height: 13px;
    margin: 0 2em;
    background-color: #c9c9c9;
}

 
</style>
<!-- 마우스 스크롤 -->
<style>
.scroll {
  padding-top: 60px;
}
.scroll span {
  position: fixed;
  top: 90%;
  left: 90%;
  width: 30px;
  height: 50px;
  border: 2px solid #fff;
  border-radius: 50px;
  box-sizing: border-box;
  z-index:98;
  background:rgba(248,248,248,0.3);
}
.scroll span::before {
  position: absolute;
  top: 10px;
  left: 50%;
  content: '';
  width: 6px;
  height: 6px;
  margin-left: -3px;
  background-color: #fff;
  border-radius: 100%;
  -webkit-animation: sdb 2s infinite;
  animation: sdb 2s infinite;
  box-sizing: border-box;
}
@-webkit-keyframes sdb {
  0% {
    -webkit-transform: translate(0, 0);
    opacity: 0;
  }
  40% {
    opacity: 1;
  }
  80% {
    -webkit-transform: translate(0, 20px);
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}
@keyframes sdb {
  0% {
    transform: translate(0, 0);
    opacity: 0;
  }
  40% {
    opacity: 1;
  }
  80% {
    transform: translate(0, 20px);
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}

/* 글씨 & 글씨 애니미에션 */
.scroll-text{
    position: fixed;
    z-index: 98;
    left: 89.6%;
    color: #fff;
    top: 96%;
 }

.main_sentence{
	z-index:98; 
	color:#fff; 
	margin-left:10%; 
	font-weight:700; 
	font-size:3.5em; 
	line-height:1em;
/* 	transform: translateY(6rem);
	animation: up 500ms linear forwards; */
}

.main_sentence_sub{
	z-index:98; 
	color:#fff; 
	margin-left:10%; 
	font-weight:300; 
	font-size:1.5em; 
	line-height:1em;
/* 	transform: translateY(6rem);
	animation: up 500ms linear forwards; */
}

.position1 .sentence_ani{
	transform: translateY(6rem);
	animation: up 500ms linear forwards;
}

.owl-item.active .sentence_ani{
	transform: translateY(6rem);
	animation: up 500ms linear forwards;
}

@keyframes up {
	100% {
		transform: translateY(0);
	}
}

.sentence-container{
	width:100%;
	overflow:hidden;
	position:absolute;
	z-index:3;
	top:45%;
 }
 
 .sentence-wrapper{
 	overflow:hidden;
 }
 
.position2{
	top:20%;
	position:relative;
}

.position2 .main_sentence, .position2 .main_sentence_sub{
	color:#4C4646!important;
}

/* 뉴스 */
 
.news_container{
	width:40%;
	overflow:hidden;
	position:absolute;
	z-index:98;
	top:90%;
	display:flex;
	justify-content:space-between;
	margin-left:80px;
	border-bottom:1px solid #fff;
	height:1.7em;
}

.news_group{
	width:70%;
	position:relative;
	bottom:1.4em;
}

.news_group li{
	overflow:hidden;
	text-overflow: ellipsis;
    white-space: nowrap;
	color:#fff!important; 
}

.news_sentence{
	font-weight:300; 
	font-size:1.3em; 
	line-height:1em;
}

.news_navi{
	width:20%;
	overflow:hidden;
	z-index:98;
	top:90%;
	color:#fff;
	display:flex;
	justify-content:space-evenly;
}

/* 페이지 바 표시 */
.homePageGroup{
	position: sticky;
    z-index: 98;
    top: 20%;
    margin-left:85%;
}

.homePageGroup .pageGroup{
	display:flex;
	background: transparent;
	color: #fff; 
}

.homePageGroup .pageGroup h3{
	color:#fff;
	font-size: 2.5em;
    font-weight: 700;
    display: flex;
    align-items: center;
    margin-right: 0.3em;
}

.homePageGroup .pageGroup .pageNumber{
	margin-top:0.7em;
	margin-right:0.5em;
    display: block;
    text-indent: -999em;
    overflow: hidden;
    background-color: #fff;
    width: 2px;
    height: 2em;
    transition: width .2s ease-out,background .2s;
}

.homePageGroup .pageGroup .pageNumber.active{
    width: 4px;
    background: #f36d20!important;
}

/* 슬라이드 버튼 */
.owl-carousel .owl-nav div{
	border:1px solid #c9c9c9;
	color:#c9c9c9;
	opacity:0.5;
}

.owl-carousel .owl-nav{
	left:5em;
}

.owl-carousel .owl-nav .owl-prev, .owl-carousel .owl-nav .owl-next{
	width: 3em;
    height: 3em;
    border-radius: 50%;
    line-height: 3.25em;
}
.owl-carousel .owl-nav i{
	font-size:2em;
}

.owl-carousel .owl-dots.disabled, .owl-carousel .owl-nav.disabled{
	position: absolute;
    display: block;
    top: 65%;
    left: 10%;
}

.owl-carousel:hover .owl-nav div:hover{
	color:#fff;
	line-height:3.25em;
}

}

</style>
   <!-- Demo styles -->
<style>
.swiper {
	width: 100%;
	height: 100%;
	/* margin-top: 125px; */
	/* margin-top: 60px; */
	margin-top: 80px;
	padding-right: 5%;
	padding-left: 5%;
}
@media (max-width: 768px){
	.swiper{
	    margin-top: 45px;
	}
}
@media (max-width: 640px){
	.swiper{
	    margin-top: 25px;
	}
}
.swiper-slide {
	text-align: center;
	font-size: 18px;
	background: #fff;
	/* Center slide text vertically */
	display: -webkit-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	-webkit-align-items: center;
	align-items: center;
}

.swiper-slide img {
	display: block;
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.swiper-button-next, .swiper-button-prev {
    font-weight: bold;
    color: white;
 	text-shadow: 0px 0px 10px black;
 	top: 47%;
}
.swiper-button-prev{
    left: 4%;
}
.swiper-button-next{
    right: 4%;
}
.swiper-pagination {
    position: initial;
    margin-top: 6px;
}
:root {
    --swiper-theme-color: #f36d20;
}

.img-wrapper {
	position: relative;
} 

.img-wrapper img {
	position: absolute;
	top: 0;
	left: 0;
	transform: translate(50, 50);
	width: 100%;
	height: 100%;
	object-fit: cover;
	margin: auto;
}

.mySwiper2{
	display: none;
}
.mySwiper3{
	display: none;
}
.mySwiper4{
	display: none;
}
@media (max-width : 2500px){
	.mySwiper{
		display: none;
	}
	.mySwiper2{
		display: block;
	}
}
@media (max-width : 991.5px){
	.mySwiper{
		display: none;
	}
	.mySwiper2{
		display: none;
	}
	.mySwiper3{
		display: block;
	}
}
@media (max-width : 767.5px){
	.mySwiper{
		display: none;
	}
	.mySwiper2{
		display: none;
	}
	.mySwiper3{
		display: none;
	}
	.mySwiper4{
		display: block;
	}
</style>
<style>
/* ====================================================================================== */
.inner_ZZ {
    position: relative;
}

.main__tit {
    font-size: 60px;
    position: relative;
    line-height: 1em;
    font-weight: bold;
    margin-left: 10%;
}
.main__tit::before {
    content: "";
    height: 9px;
    width: 34px;
    background-color: #f36d20;
    position: absolute;
    top: 8px;
    left: -40px;
    -webkit-transform: skew(-45deg);
    transform: skew(-45deg);
}
.main__stit {
    line-height: 1.5em;
    font-size: 20px;
    color: #555;
    word-break: keep-all;
    margin-left: 10%;
}
@media (max-width: 767.5px){
	.main__tit {
	    font-size: 35px;
	}
	.main__tit::before {
	    height: 5px;
	    width: 21px;
	    left: -24px;
	    top: 5px;
	}
	.main__stit {
	    font-size: 14px;
	}
}
@media (max-width: 450px){
	.main__tit::before {
		width: 15px;
	    left: -15px;
	}
}
.animated {
  transition: all ease 1.5s;
}

.animated.on {
  transform: translateY(0);
  opacity: 1;
}
</style>

<style>
.business-text{
    width: 100%;
	position: absolute;
    bottom: 15px;
}
.business-text>p{
    color: #fff;
	font-size: 1em;
    line-height: 1em;
    text-shadow: 0px 0px 3px black;
    font-weight: 500;
    margin: 1%;
    
}
.business-text>p:last-child {
    color: #fff;
    margin-bottom: 0px;
    margin-top: 7px;
}
</style>

</head>
	<body>
        <script> 
            AOS.init(); 
        </script>
		<!-- header-start -->
		<c:import url="header.jsp" charEncoding="UTF-8"></c:import>
		<!-- header-end -->
		
		
		<!-- number -->
		<div class="homePageGroup">
			<div class="pageGroup sentence-container">
				<h3>Page.</h3>
				<a class="pageNumber active" id="num1" href="#top">1</a>
				<a class="pageNumber" id="num2" href="#page2">2</a>
				<a class="pageNumber" id="num3">3</a>
			</div>
		</div>
		
		<!-- scroll -->
		<a class="scroll"><span> </span></a>
		<span class="scroll-text">Scroll</span>
		
		<!-- slider-area-start -->
		<div class="slider-area">
			<div class="sentence-container position1">
				<div class="sentence-wrapper">
					<h3 class="main_sentence sentence_ani">새로운 비전</h3>
				</div>
				<div class="sentence-wrapper">
					<h3 class="main_sentence sentence_ani" style="animation-delay:0.5s;">새로운 가능성</h3>
				</div>
				<h4 class="main_sentence_sub sentence_ani" style="animation-delay:1s;">고객들에게 새로운 시각과 노하우 있는 솔루션을 제공합니다.</h4>
			</div>
			
			<div class="news_container">
				<h3 style="margin-right:2%; color:#fff;">news>></h3>
					<ul class="news_group" id="news_group">
						<c:forEach var="news" items="${news_list}">
							<li>
								<a class="news_sentence sentence_ani" href="/company/news" style="color:#fff;">
									${news.newsTitle}
								</a>
							</li>
						</c:forEach>
					</ul>
				<div class="news_navi">
					<a class="prev">
						<i class="fa fa-backward"></i>
					</a>
					<a class="next">
						<i class="fa fa-forward"></i>
					</a>
					<a class="pause" id="pause" >
						<i class="fa fa-pause" id="pause_icon"></i>
					</a>
				</div>
			</div>
			
			<c:import url="header_main_pc.jsp" charEncoding="UTF-8"></c:import>
			<div class="single-slider bg-img-main">
			</div>
		</div>
		
		
		 <div class="slider-area" style="background: #fff; height: 100vh;">
			<div class="sentence-container position2">
				<div class="inner_ZZ">
					<p class="main__tit animated on">주요사업실적</p>
					<p class="main__stit animated on">
						CCTV 설치 및 관리 솔루션 전문 기업<br>(주)뉴비젼이엔지의 주요 프로젝트 실적입니다.
					</p>
				</div>
				<!-- 4개씩 -->
				<div class="swiper mySwiper">
				      <div class="swiper-wrapper">
							<c:forEach items="${business_list}" var="business">
							<div class="swiper-slide">
								<div class="img-wrapper" style="width: inherit;">
									<img src="/resources/img/business_result/main_imgs/${business.imgName}">
									<div class="business-text">
										<p>${business.resultClass}</p>
										<p>${business.resultContnents}</p>
									</div>
								</div>
							</div>
							</c:forEach>
				      </div>
				      <!-- 네비게이션 -->
						<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
						<div class="swiper-button-prev"></div><!-- 이전 버튼 -->
				      <div class="swiper-pagination"></div>
			    </div>
			    <!-- 3개씩 -->
				<div class="swiper mySwiper2">
				      <div class="swiper-wrapper">
							<c:forEach items="${business_list}" var="business">
							<div class="swiper-slide">
								<div class="img-wrapper" style="width: inherit;">
									<img src="/resources/img/business_result/main_imgs/${business.imgName}">
									<div class="business-text">
										<p>${business.resultContnents}</p>
										<p>${business.resultClass}</p>
									</div>
								</div>
							</div>
							</c:forEach>
				      </div>
				      <!-- 네비게이션 -->
						<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
						<div class="swiper-button-prev"></div><!-- 이전 버튼 -->
				      <div class="swiper-pagination"></div>
			    </div>
			    <!-- 2개씩 -->
				<div class="swiper mySwiper3">
				      <div class="swiper-wrapper">
							<c:forEach items="${business_list}" var="business">
							<div class="swiper-slide">
								<div class="img-wrapper" style="width: inherit;">
									<img src="/resources/img/business_result/main_imgs/${business.imgName}">
									<div class="business-text">
										<p>${business.resultContnents}</p>
										<p>${business.resultClass}</p>
									</div>
								</div>
							</div>
							</c:forEach>
				      </div>
				      <!-- 네비게이션 -->
						<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
						<div class="swiper-button-prev"></div><!-- 이전 버튼 -->
				      <div class="swiper-pagination"></div>
			    </div>
			    <!-- 1개씩 -->
				<div class="swiper mySwiper4">
				      <div class="swiper-wrapper">
							<c:forEach items="${business_list}" var="business">
							<div class="swiper-slide">
								<div class="img-wrapper" style="width: inherit;">
									<img src="/resources/img/business_result/main_imgs/${business.imgName}">
									<div class="business-text">
										<p>${business.resultContnents}</p>
										<p>${business.resultClass}</p>
									</div>
								</div>
							</div>
							</c:forEach>
				      </div>
				      <!-- 네비게이션 -->
						<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
						<div class="swiper-button-prev"></div><!-- 이전 버튼 -->
				      <div class="swiper-pagination"></div>
			    </div>
			</div>	
		</div>
		
		 <div class="slider-area">
			<div class="slider-active owl-carousel">
				<div class="single-slider bg-img-1">
				 	<div class="sentence-container position2">
						<div class="sentence-wrapper" id="page2">
							<h3 class="main_sentence sentence_ani">CCTV 설치</h3>
						</div>
						<div class="sentence-wrapper">
							<h3 class="main_sentence sentence_ani" style="animation-delay:0.5s;">CCTV</h3>
						</div>
						<h4 class="main_sentence_sub sentence_ani" style="animation-delay:1s;">15년 경력의 보안 전문가와의 상담을 통해 맞춤형 서비스 설계와 신속,정확한 유지보수를 제공합니다.</h4>
					</div>
				</div>
				<div class="single-slider bg-img-2">
					<div class="sentence-container position2">
						<div class="sentence-wrapper">
							<h3 class="main_sentence sentence_ani">군사시설 CCTV SYSTEM</h3>
						</div>
						<div class="sentence-wrapper">
							<h3 class="main_sentence sentence_ani" style="animation-delay:0.5s;">CCTV</h3>
						</div>
						<h4 class="main_sentence_sub sentence_ani" style="animation-delay:1s;">15년 경력의 보안 전문가와의 상담을 통해 맞춤형 서비스 설계와 신속,정확한 유지보수를 제공합니다.</h4>
					</div>
				</div>
				<div class="single-slider bg-img-2">
					<div class="sentence-container position2">
						<div class="sentence-wrapper">
							<h3 class="main_sentence sentence_ani">CCTV 설치</h3>
						</div>
						<div class="sentence-wrapper">
							<h3 class="main_sentence sentence_ani" style="animation-delay:0.5s;">CCTV</h3>
						</div>
						<h4 class="main_sentence_sub sentence_ani" style="animation-delay:1s;">15년 경력의 보안 전문가와의 상담을 통해 맞춤형 서비스 설계와 신속,정확한 유지보수를 제공합니다.</h4>
					</div>
				</div>
				<div class="single-slider bg-img-3">
					<div class="sentence-container position2">
						<div class="sentence-wrapper">
							<h3 class="main_sentence sentence_ani">CCTV 설치</h3>
						</div>
						<div class="sentence-wrapper">
							<h3 class="main_sentence sentence_ani" style="animation-delay:0.5s;">CCTV</h3>
						</div>
						<h4 class="main_sentence_sub sentence_ani" style="animation-delay:1s;">15년 경력의 보안 전문가와의 상담을 통해 맞춤형 서비스 설계와 신속,정확한 유지보수를 제공합니다.</h4>
					</div>
				</div>
			</div>
		</div>
		
		

		
		
		<!-- footer-start -->
		<c:import url="footer.jsp" charEncoding="UTF-8"></c:import>
		<!-- footer-end -->
	</body>
	<script src="/resources/js/jquery-ui.min.js"></script> 
<script>
/* 새로고침 시 스크롤 상단 이동 */
window.onload = function() {
	setTimeout (function () {
		scrollTo(0,0);

	},100);

}

/* 스크롤 */
window.addEventListener("wheel", function(e){
	e.preventDefault();
},{passive : false});

var $html = $("html");

var page = 1;
 
var lastPage = $(".slider-area").length;
 
$html.animate({scrollTop:0},0);

$(window).on("wheel", function(e){
	 
	if($html.is(":animated")) return;
 
	if(e.originalEvent.deltaY > 0){
		if(page== lastPage) return;
 
		page++;
	}else if(e.originalEvent.deltaY < 0){
		if(page == 1) return;
 
		page--;
	}
	var posTop = (page-1) * $(window).height()+1;
 
	$html.animate({scrollTop : posTop},1000,'easeInQuart');
 	
 	/* 페이지 표시 */
 	if(page == "1"){
 		$("#num1").addClass("active");
 		$("#num2").removeClass("active");
 	}else if(page == "2"){
 		$("#num1").removeClass("active");
 		$("#num2").addClass("active");
 		$("#num3").removeClass("active");
 	}else if(page == "3"){
 		$("#num1").removeClass("active");
 		$("#num2").removeClass("active");
 		$("#num3").addClass("active");
 	}
 	
 	/* 2페이지 */
 	if(page == "2"){
 		/* $('.position2 div .main_sentence').removeClass("main_sentence");
 		$('.position2 div .main_sentence').addClass("main_sentence"); */
 		
 		/* $('.position2 .main_sentence').removeClass("sentence_ani");
 		$('.position2 .main_sentence_sub').removeClass("sentence_ani");
 		setTimeout(function() { 
	 		$('.position2 .main_sentence').addClass("sentence_ani");
	 		$('.position2 .main_sentence_sub').addClass("sentence_ani");
 		}, 700);
 		console.log(page); */
		$( '#header_main_pc' ).addClass("mousein");
		$( '.main-menu ul li a' ).addClass("mousein");
		$( '.ti-angle-down_main_pc' ).addClass("mousein");
		$( '#nv_logo_white' ).removeClass("mousein");
		$( '#nv_logo_black' ).addClass("mousein");
 		$(".homePageGroup .pageGroup h3").css('opacity','0').stop().css("color","#4C4646").animate({opacity: "1"}, 700);
 		$(".homePageGroup .pageGroup .pageNumber").css('opacity','0').stop().css("background-color","#4C4646").animate({opacity: "1"}, 700);
 	}else{
 		$( '#header_main_pc' ).removeClass("mousein");
		$( '.main-menu ul li a' ).removeClass("mousein");
		$( '.ti-angle-down_main_pc' ).removeClass("mousein");
		$( '#nv_logo_white' ).addClass("mousein");
		$( '#nv_logo_black' ).removeClass("mousein");
 		$(".homePageGroup .pageGroup h3").css('opacity','0').stop().css("color","#fff").animate({opacity: "1"}, 700);
 		$(".homePageGroup .pageGroup .pageNumber").css('opacity','0').stop().css("background-color","#fff").animate({opacity: "1"}, 700);
 	}
});

	/* owl-dot 글씨 변경 */
	$(function(){
		$(".owl-dot span").addClass("business");
		
		$(".owl-dot").eq(0).text('CCTV 설치');
		$(".owl-dot").eq(1).text('군사시설 CCTV');
		$(".owl-dot").eq(2).text('전자파용 CCTV');
		$(".owl-dot").eq(3).text('정보통신공사');
	});
	
	
	/* 뉴스 애니메이션 */
	jQuery(function($){
	    var news_group = function(){
	        timer = setTimeout(function(){
	            $('#news_group li:first').animate( {marginTop: '-20px'}, 800, function(){
	                $(this).detach().appendTo('ul#news_group').removeAttr('style');
	            });
	            news_group();
	        }, 2000);         
	      };
	      
	// 0번 이전 기능
	      $(document).on('click','.prev',function(){
	        clearTimeout(timer);
	       $('#news_group li:first').prependTo($('#news_group')).animate({marginTop: '+20px'}, 500, function(){
                  $('#news_group li:last').detach().prependTo('ul#news_group').removeAttr('style');
                   $(this).removeAttr('style');
               });
	        news_group();
	        if($('#pause_icon').hasClass("fa-play") == true){
	          $('#pause_icon').addClass('fa-pause');
	          $("#pause_icon").removeClass("fa-play");
	        };
	      }); // 0번 기능 끝
	  
	// 1. 클릭하면 다음 요소 보여주기... 클릭할 경우 setTimeout 을 clearTimeout 해줘야 하는데 어떻게 하지..
	      $(document).on('click','.next',function(){
	            clearTimeout(timer);
	            $('#news_group li:first').animate( {marginTop: '-20px'}, 500, function()
	                    {
	                        $(this).detach().appendTo('ul#news_group').removeAttr('style');
	                    });
	            news_group();
	            //3 함수와 연계 시작
	            if($('#pause_icon').hasClass("fa-play") == true){
			          $('#pause_icon').addClass('fa-pause');
			          $("#pause_icon").removeClass("fa-play");
	            }; //3 함수와 연계
	          }); // next 끝. timer 를 전연변수보다 지역변수 사용하는게 나을 것 같은데 방법을 모르겠네요.

	  //2. 재생정지기능 시작, 아직 다음 기능과 연동은 안됨...그래서 3을 만듦
	  var autoplay = true;
	      $(document).on('click','#pause',function(){
	            if(autoplay==true){
	              clearTimeout(timer);
	              $('#pause_icon').removeClass('fa-pause');
		          $("#pause_icon").addClass("fa-play");
	              autoplay=false;
	              clearTimeout(timer);
	            }else{
	              autoplay=true;
	              $('#pause_icon').addClass('fa-pause');
		          $("#pause_icon").removeClass("fa-play");
	              news_group();
	              clearTimeout(timer);
	            }
	          }); 
	  // 재생정지기능 끝  
	   
	          
	  // 3. 재생정지 함수 시작. 2와 기능 동일함.
	    var news_group_pause = function()
	  {
	    $('#pause').click(function(){
	      $this = $(this);
	      if($('#pause_icon').hasClass("fa-pause") == true){
              $('#pause_icon').removeClass('fa-pause');
	          $("#pause_icon").addClass("fa-play");
	        clearTimeout(timer);
	      }
	      else {
	        clearTimeout(timer);
	        news_group();
              $('#pause_icon').addClass('fa-pause');
	          $("#pause_icon").removeClass("fa-play");
	      }
	    });
	   
	  };
	  news_group_pause();
	  //3 재생정지 함수 끝
	  
	  //4 마우스를 올렸을 때 기능 정지
	  var news_group_over = function()
	  {
	    $('#news_group').mouseover(function(){
	      clearTimeout(timer);
	    });
	    $('#news_group').mouseout(function(){
	      news_group();
	    });  
	  };
 		news_group_over();
	  // 4 끝
    news_group();
	    
	});
		
</script>
 <script>
 /* 사업실적의 이미지 정사각형 고정 */
 $(document).ready(function () {
 	$('.img-wrapper').each(function() {
 		$(this).height($(this).width()*(0.75));
 	});
 });
 
 var delay = 300;
 var timer = null;

 $(window).on('resize', function(){
 	clearTimeout(timer);
 	timer = setTimeout(function(){
 		console.log('resize event!');
 		
 		console.log("project-active의 owl-item의 width : "+$('.project-active').find('.owl-item.active').width());
 		var owl_item_width = $('.project-active').find('.owl-item.active').width();
 		
 		$('.img-wrapper').each(function() {
 			$(this).width(owl_item_width);
 			$(this).height($(this).width()*(0.75));
 		});
 		$('.project-info').each(function() {
 			$(this).width(owl_item_width);
 		});
 	}, delay);
 });
 
      var swiper = new Swiper(".mySwiper", {
        slidesPerView: 4,
        spaceBetween: 30,
        
        loop : true,
        
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        navigation : { // 네비게이션
    		nextEl : '.swiper-button-next', // 다음 버튼 클래스명
    		prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
    	},
      });
      
      var swiper2 = new Swiper(".mySwiper2", {
        slidesPerView: 3,
        spaceBetween: 30,
        
        loop : true,
        
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        navigation : { // 네비게이션
    		nextEl : '.swiper-button-next', // 다음 버튼 클래스명
    		prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
    	},
      });
      
      var swiper3 = new Swiper(".mySwiper3", {
        slidesPerView: 2,
        spaceBetween: 30,
        
        loop : true,
        
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        navigation : { // 네비게이션
    		nextEl : '.swiper-button-next', // 다음 버튼 클래스명
    		prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
    	},
      });
      
      var swiper4 = new Swiper(".mySwiper4", {
        slidesPerView: 1,
        spaceBetween: 30,
        
        loop : true,
        
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        navigation : { // 네비게이션
    		nextEl : '.swiper-button-next', // 다음 버튼 클래스명
    		prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
    	},
      });
    </script>
</html>