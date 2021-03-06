<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>뉴비젼이엔지</title>

<!-- google search -->
<meta name="google-site-verification" content="ACcIOBWX3_Sgcm_4XAJ7qz2Tzgf4z1qQDR1qJP2x4sM" />
<meta name="keyword" content="뉴비젼이엔지,newvisioneng,new vision eng,CCTV">
<meta name="description" content="(주)뉴비젼이엔지는 세계 최고 수준의 영상 기술을 기반으로 CCTV영상 주변기기 및 SYSTEM 설계와 설치 사업을 중심으로 하는 기업입니다.">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="shortcut icon" type="image/x-icon"
	href="/resources/img/nvicon.png">

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

<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<!-- <link rel="stylesheet" href="/resources/css/responsive.css"> -->

<style>
/* .service-details img{
	opacity:0;
} */
.down {
	display: none;
}

.service-details {
	padding-top: 0;
	padding-bottom: 0;
}

@media ( max-width : 767.5px) {
	.up {
		display: none;
	}
	.down {
		display: block;
	}
}

.col-xl-4 {
	max-width: 100%;
}

.nav {
	justify-content: space-between;
}

.nav-item {
	width: auto !important;
	border-bottom: none !important;
}

/* .business-name:before{
    content: "";
    display: inline-block;
    width: 2.5px;
    height: 30px;
    margin: 0 16px;
    background-color: #f36d20;
} */
.business-name {
	margin-top: 5%;
	color: #f36d20 !important;
	font-weight: 400 !important;
}

.cctv-main {
	margin-bottom: 3% !important;
}

.cctv-detail {
	margin-bottom: 10% !important;
}

.service-details .single-details .details-info {
	padding-right: 0;
}

.service-details .single-details .details-info h3 {
	font-size: 24px;
	margin-bottom: 0;
}

.service-details .single-details .details-info .main-title {
	font-size: 34px;
	font-weight: 500;
	text-align: center;
	margin-bottom: 2%
}

.single-team {
	box-shadow: 0 1px 10px lightgrey;
	height: 500px;
}

.cctv-kind {
	margin-bottom: 10% !important;
}

.cctv-detail1 {
	
}

.cctv-detail2 {
	margin-bottom: 2% !important;
}

.about-area {
	padding-top: 0;
}

.business-ul {
	display: flex;
}

.business-li {
	width: 50%;
	text-align: center;
}

.business-li img {
	width: 100px;
}

.business-li hr {
	width: 80%;
}
@media ( max-width : 767px) {
	.nav{
	display:block;
	}
	.nav-item{
	border-bottom:1px solid;
	}
	
	.single-team{
	width:100%;
	}
	
	.cctv-kind{
	margin-right:0px;
	margin-left:0px;
	}
	.cctv-kind .col-xl-4{
	padding-right:0px;
	padding-left:0px;
	}
	
	.service-details .details-nav ul li a{
	padding:10px 0;
	}
}
</style>
<style>
.site-container {
    max-width: 1280px;
    margin: 0 auto;
    position: relative;
    /* padding: 0 40px; */
}
.entry-content {
    min-height: 170px;
}
.BusinessOutlineTop {
    font-size: 0;
    line-height: 0;
    text-align: center;
}
.BusinessOutlineTop-title {
    display: inline-block;
    margin-right: 20px;
    color: #000;
    font-size: 36px;
    font-weight: 600;
    line-height: 1.2em;
}
.BusinessOutlineTop-sub {
    display: inline-block;
    margin-top: 8px;
    color: #000;
    font-size: 18px;
    line-height: 1.4em;
}
.BusinessOutlineBtm {
    margin: 38px -35px 0;
}
.BusinessOutlineBtm:after {
    content: '';
    display: block;
    clear: both;
}
.BusinessOutlineBtm-item {
    /* width: 50%; */
    float: left;
    padding: 0 35px;
}
body .mb20 {
    margin-bottom: 20px;
}
.BusinessOutlineBtm-title {
    display: block;
}
.BusinessOutlineBtm-title {
    color: #F37321;
    font-size: 28px;
    font-weight: 600;
    line-height: 1.4em;
}
.BusinessOutlineBtm-text {
    color: #4C4948;
    font-size: 16px;
    line-height: 1.8em;
}
body .mb15 {
    margin-bottom: 15px;
}
.BusinessOutlineList {
    margin-top: 64px;
}
.BusinessOutlineList-list {
    margin: 0 -35px;
}
ul, ol, li {
    margin: 0;
    padding: 0;
}
ol, ul {
    list-style: none;
}
.BusinessOutlineList-item:first-child {
    padding-top: 0;
}

.BusinessOutlineList-item:nth-child(odd) {
    clear: both;
}
.BusinessOutlineList-item:nth-child(even) {
    padding-top: 50px;
}
.BusinessOutlineList-item {
    width: 50%;
    float: left;
    padding: 20px 35px 0;
}

.BusinessItem-thumb {
    position: relative;
    /* height: 284px; */
}
.BusinessItem-thumb:after {
    content: '';
    display: block;
    padding-bottom: 56.78%;
}
.BusinessItem-num {
    display: block;
    padding: 12px 14px;
    position: absolute;
    bottom: -22px;
    left: 22px;
    z-index: 5;
    color: #fff;
    line-height: 1.2em;
    font-size: 30px;
    font-weight: 500;
    font-family: 'Jost';
    background-color: #F37321;
}
img {
   /*  max-width: 100%; */
}
.BusinessItem-img {
    display: block;
    width: 100%;
    position: absolute;
    top: 0;
    left: 0;
}
.BusinessItem-cont {
    margin-top: 46px;
}
.BusinessItem-title {
    color: #000;
    font-size: 26px;
    font-weight: 600;
    line-height: 1.4em;
}
.BusinessItem-text {
    margin-top: 16px;
    color: #4C4948;
    font-size: 16px;
    line-height: 1.4em;
}


@media screen and (max-width: 1440px) and (min-width: 1025px){
	.BusinessOutlineTop-title {
	    margin-right: 16px;
	    font-size: 32px;
	}
	.BusinessOutlineTop-sub {
	    margin-top: 8px;
	    font-size: 17px;
	}
	.BusinessOutlineBtm {
	    margin: 25px -30px 0;
	}
	.BusinessOutlineBtm-item {
	    padding: 0 30px;
	}
	body .mb20 {
	    margin-bottom: 20px;
	}
	.BusinessOutlineBtm-title {
	    font-size: 24px;
	}
	.BusinessOutlineBtm-text {
	    font-size: 16px;
	}
	body .mb15 {
	    margin-bottom: 15px;
	}
	.BusinessOutlineList {
	    margin-top: 50px;
	}
	.BusinessOutlineList-list {
	    margin: 0 -30px;
	}
	.BusinessItem-num {
	    padding: 9px 11px;
	    bottom: -20px;
	    left: 20px;
	    font-size: 26px;
	}
	.BusinessItem-cont {
	    margin-top: 40px;
	}
	.BusinessItem-title {
	    font-size: 24px;
	}
	.BusinessItem-text {
	    margin-top: 10px;
	    font-size: 15px;
	}
	
	.BusinessOutlineList-item:nth-child(even) {
	    padding-top: 50px;
	}
	.BusinessItem-thumb:after {
    padding-bottom: 56.78%;
	}
	
}
@media screen and (max-width: 1024px) and (min-width: 768px){
	.BusinessOutlineTop-title {
	    margin-right: 10px;
	    font-size: 24px;
	}
	.BusinessOutlineTop-sub {
	    margin-top: 8px;
	    font-size: 16px;
	}
	.BusinessOutlineBtm {
	    margin: 16px -15px 0;
	}
	.BusinessOutlineBtm-item {
	    padding: 0 15px;
	}
	body .mb20 {
	    margin-bottom: 20px;
	}
	.BusinessOutlineBtm-title {
	    font-size: 18px;
	}
	.BusinessOutlineBtm-text {
	    font-size: 14px;
	}
	body .mb15 {
	    margin-bottom: 15px;
	}
	.BusinessOutlineList {
	    margin-top: 30px;
	}
	.BusinessOutlineList-list {
	    margin: -15px 0;
	}
	.BusinessOutlineList-item {
	    padding: 0 15px;
	}
	.BusinessItem-num {
	    padding: 8px 8px;
	    bottom: -16px;
	    left: 16px;
	    font-size: 16px;
	}
	.BusinessItem-cont {
	    margin-top: 26px;
	}
	.BusinessItem-title {
	    font-size: 18px;
	}
	.BusinessItem-text {
	    margin-top: 10px;
	    font-size: 14px;
	}
	
	.BusinessOutlineList-item:nth-child(even) {
	    padding-top: 30px;
	}
}
@media screen and (max-width: 767px) and (min-width: 1px){
	.BusinessOutlineTop-title {
   		display: block;
	    margin-right: 0;
	    font-size: 18px;
	}
	.BusinessOutlineTop-sub {
	    display: block;
	    margin-top: 6px;
	    font-size: 14px;
	}
	.BusinessOutlineBtm {
	    margin: 0;
	}
	.BusinessOutlineBtm-item {
	    width: 100%;
	    float: none;
	    padding: 15px 0 0;
	}
	body .mb20 {
	    margin-bottom: 20px;
	}	
	.BusinessOutlineBtm-title {
	    font-size: 16px;
	}
	.BusinessOutlineBtm-text {
	    font-size: 14px;
	}
	body .mb15 {
	    margin-bottom: 15px;
	}
	.BusinessOutlineList {
	    margin-top: 30px;
	}
	.BusinessOutlineList-list {
	    margin: 0;
	}
	.BusinessOutlineList-item {
	    width: 100%;
	    float: none;
	    padding: 0;
	}
	.BusinessOutlineList-item {
	    padding-top: 24px;
	}
	.BusinessItem-num {
	    padding: 8px 8px;
	    bottom: -10px;
	    left: 10px;
	    font-size: 15px;
	}
	.BusinessItem-cont {
	    margin-top: 26px;
	}
	.BusinessItem-title {
	    font-size: 16px;
	}
	.BusinessItem-text {
	    margin-top: 10px;
	    font-size: 14px;
	}
	
	
	.BusinessOutlineList-item:nth-child(even) {
	    padding-top: 24px;
	}
}
@media screen and (max-width: 1024px) and (min-width: 640px){
	.site-container {
	    max-width: 100%;
	    /* padding: 0 20px; */
	}
}
@media screen and (max-width: 639px) and (min-width: 1px){
	.site-container {
	    max-width: 100%;
	    /* padding: 0 20px; */
	}
	
}
@media screen and (max-width: 767px){
	.br1 {
		display: none;
	}
	
}
</style>
</head>
<body>
	<script>
		AOS.init();
	</script>

	<!-- header.jsp import -->
	<c:import url="../header.jsp" charEncoding="UTF-8"></c:import>

	<!-- breadcrumb-start -->
	<section class="breadcrumb breadcrumb_bg banner-bg-2 overlay2 ptb200">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 offset-lg-1">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item">
							<h2>사업소개</h2>
							<p style="opacity: 0.6">New Vision ENG. Business</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb-end -->

	<!-- service-details-start -->
	<div class="service-details">
		<div
			style="background: #f8f8f8; margin-top: 25px; box-shadow: 0 0.5px 5px lightgrey;">
			<div class="container" style="padding: 0;">
				<div class="col-xl-4">
					<div class="details-nav">
						<nav>
							<ul class="nav" id="myTab" role="tablist">
								<li class="nav-item">
								<a class="nav-link" id="tab" href="../business/business_cctv">CCTV 설치</a></li>

								<li class="nav-item">
								<a class="nav-link " id="tab" href="../business/business_army">군사시설 CCTV SYSTEM</a></li>

								<li class="nav-item">
								<a class="nav-link active show" id="tab" href="../business/business_sp">전자파용 특수 CCTV SYSTEM</a></li>

								<li class="nav-item">
								<a class="nav-link" id="tab" href="../business/business_com">정보통신공사</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
		<div class="container" style="margin-top: 3%;margin-bottom: 3%;">
			<div class="row">
				<div class="single-details">
					<div class="tab-content" id="myTabContent">

							<!-- //////////////////////////////////////////////////////////////////////////////////////////////////// -->
							<div class="container">
							<div class="PageContent">
								<div class="site-container">
									<article id="post-540"
										class="post-540 page type-page status-publish hentry">
										<div class="entry-content">
											<!-- 사업개요 -->
											<div class="BusinessOutline">
												<div class="BusinessOutlineTop">
													<h4 class="BusinessOutlineTop-title">전자파용 특수 CCTV SYSTEM</h4>
						
												</div>
												<div class="BusinessOutlineBtm" data-aos="fade-up"
													data-aos-offset="200" data-aos-duration="1000">
													<div class="BusinessOutlineBtm-item">
						
														<span class="BusinessOutlineBtm-title mb20">특수 환경을 위한 맞춤형 영상 장비 설비 구축</span>
														<p style="font-size: 16px; font-weight: 400">
															당사는 일반적인 CCTV영상 주변기기 및 SYSTEM 설계·설치 사업뿐만 아니라 Shield Room 등의 특수한 환경에서
															<br class="br1">
															사용되는 전자파용 특수 카메라, PTZ CCTV 등 맞춤형 영상 장비를 설치하는 다각적인 사업을 수행하고 있습니다.
														</p>
													</div>
													<div class="sp-detail-list" style="text-align:center;">
														<video playsinline class="video" src="/resources/video/sp_animation.mp4" muted style="width: 65%;margin-top: 40px"></video>
													</div>
												</div>
												<div class="BusinessOutlineList">
													<ul class="BusinessOutlineList-list">
														<li class="BusinessOutlineList-item">
															<div class="BusinessItem">
																<div class="BusinessItem-thumb">
																	<span class="BusinessItem-num">01</span> <img
																		class="BusinessItem-img"
																		src="https://nv3000nv.cdn3.cafe24.com/business/shield-room.jpg">
																</div>
																<div class="BusinessItem-cont">
																	<h5 class="BusinessItem-title">Shield Room 맞춤형 CCTV</h5>
																	<p class="BusinessItem-text">Shield Room 용으로 제작, 고객의 필요 상황에 목적 적합한 카메라를 제공합니다. 
																							</p>
						
																</div>
															</div>
														</li>
														<li class="BusinessOutlineList-item">
															<div class="BusinessItem">
																<div class="BusinessItem-thumb">
																	<span class="BusinessItem-num">02</span> <img
																		class="BusinessItem-img"
																		src="https://nv3000nv.cdn3.cafe24.com/business/ptz.jpg">
																</div>
																<div class="BusinessItem-cont">
																	<h5 class="BusinessItem-title">PTZ CCTV</h5>
																	<p class="BusinessItem-text">팬틸트줌 카메라(pan–tilt–zoom camera, PTZ 카메라)는 방향과 확대/축소를 원격으로 제어할 수 있는 카메라입니다.</p>
						
																</div>
															</div>
														</li>
														<li class="BusinessOutlineList-item">
															<div class="BusinessItem">
																<div class="BusinessItem-thumb">
																	<span class="BusinessItem-num">03</span> <img
																		class="BusinessItem-img"
																		src="https://nv3000nv.cdn3.cafe24.com/business/proofcctv.jpg">
																</div>
																<div class="BusinessItem-cont">
																	<h5 class="BusinessItem-title">전자파용 특수 카메라</h5>
																	<p class="BusinessItem-text">어떤 주파수 대역에서도 전자파 노이즈가 발생하지 않는 특수 설계된 카메라를 사용합니다.
															</div>
														</li>
														<li class="BusinessOutlineList-item">
															<div class="BusinessItem">
																<div class="BusinessItem-thumb">
																	<span class="BusinessItem-num">04</span> <img
																		class="BusinessItem-img"
																		src="https://nv3000nv.cdn3.cafe24.com/business/opticfiber.jpg">
																</div>
																<div class="BusinessItem-cont">
																	<h5 class="BusinessItem-title">광 방식 영상 전송</h5>
																	<p class="BusinessItem-text">OTDR을 통해 광섬유 케이블의 무결성을 테스트하는 등 광전송장비 설치시험을 진행합니다.
																	</p>
						
																</div>
															</div>
														</li>
													</ul>
												</div>
											</div>
											<!-- .사업개요 -->
											<br>
											<br>
										</div>
										<!-- .entry-content -->
									</article>
								</div>
								<!-- .site-container -->
							</div>
							</div>
							<!-- //////////////////////////////////////////////////////////////////////////////////////////////////// -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- service-details-end -->

	<c:import url="../footer.jsp" charEncoding="UTF-8"></c:import>
	
<script>
$(function () { 
	
	addClassName2();
	
	$( '.header-area' ).on( "mouseleave", function () {
		addClassName2();
	})

});
</script>

	<!--==========================스크롤 이미지 애니메이션============================-->
	<script>
	/* AOS 초기화 */
	$('.nav-link').on('click', function() {
		AOS.refresh();
	})
	
	$(document).ready(function () {
		
        $(window).on('scroll', function() {
            /* var scrollTop = window.innerHeight / 2; */
            /* var videoTop = $('.video')[0].getBoundingClientRect().top; */
            
            if($('.video').length != 0 ){
	            var scrollBottom = window.innerHeight;
	            var videoBottom = $('.video')[0].getBoundingClientRect().bottom;
            
	            if(videoBottom < scrollBottom) {
	                $(".video").get(0).play();
	                $(".video").attr('class','video_played');
	            }
            }
        });
	})
	</script>
	
</body>


</html>