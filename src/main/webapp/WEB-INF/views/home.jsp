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

<!-- <link rel="manifest" href="site.webmanifest"> -->
<link rel="shortcut icon" type="image/x-icon"
	href="/resources/img/nvicon.png">
<!-- Place favicon.ico in the root directory -->

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
<!-- <link rel="stylesheet" href="/resources/css/responsive.css"> -->

<style>
/* @media ( max-width : 991px) {
	.project-active.owl-carousel.bottom {
		width: 100% !important;
	}
}
 */
/* footer 관련 스타일 */
.mobile {
	display: none;
}

.cta-area .cta-content p {
	font-size: 18x;
	padding-top: 20px;
}

@media ( max-width : 767.5px) {
	.desktop {
		display: none;
	}
	.mobile {
		display: block;
	}
	.cta-area .cta-content h3 {
		font-size: 44px !important;
	}
}

@media ( max-width : 991.5px) {
	.desktop-contact {
		display: none;
	}
}

@media ( min-width :991.5px) {
	.cta-content {
		background: none !important;
	}
	.cta-content .cta-content-inner {
		margin-left: 0 !important;
		width: max-content;
	}
	.cta-content .cta-content-inner h3 {
		color: #fff !important;
	}
	.cta-content .cta-content-inner p {
		color: #fff !important;
	}
	.cta-content .cta-btn {
		position: initial !important;
	}
}

.footer_li {
	display: inline-block;
	vertical-align: middle;
	margin-right: 20px;
}

.project-thumb {
	max-width: fit-content;
}
</style>
<style>
.project-area {
    padding-top: 7%;
    padding-bottom: 5%;
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
/* .project-area .owl-item{
	margin-right: 15px !important;
	width:600px!important;
}
.project-area .owl-item .project-info{
	overflow:hidden;
	text-overflow:ellipsis;
	white-space:nowrap;
} */
</style>
<style>
	.project-active .owl-nav.disabled{
		display: block !important;
		position: relative !important;
	}
	.project-active .owl-dots.disabled{
		display: block !important;
	}
	
@media(max-width : 767.5px){
	.brbr{
		display: none;
	}
	.owl-nav.disabled{
		left: -330px !important;
	}
	
}

@media screen and (min-width : 767.5px) and (max-width:991px){
	.owl-nav.disabled{
		left: -330px !important;
	}
}

@media screen and (min-width :991px) and (max-width:1199px){
	.owl-nav.disabled{
		left: -470px !important;
	}
}
</style>
</head>

<body>
	<!-- Internet Explorer접속 방지(Edge로 자동전환) -->
	<script>
		if (navigator.userAgent.indexOf("Trident") > 0) {
			window.location = "microsoft-edge:" + window.location.href;
			window.location = 'https://go.microsoft.com/fwlink/?linkid=2135547';
		} else if (/MSIE \d |Trident.*rv:/.test(navigator.userAgent)) {
			window.location = "microsoft-edge:" + window.location.href;
			window.location = 'https://go.microsoft.com/fwlink/?linkid=2135547';
		} else if (window.navigator.userAgent
				.match(/MSIE|Internet Explorer|Trident/i)) {
			window.location = "microsoft-edge:" + window.location.href;
			window.location = 'https://go.microsoft.com/fwlink/?linkid=2135547';
		}
	</script>
	
	<!-- header.jsp import -->
	<c:import url="header.jsp" charEncoding="UTF-8"></c:import>


	<!-- slider-area-start -->
	<div class="slider-area">
		<div class="slider-active owl-carousel">
			<div class="single-slider bg-img-1">
				<div class="container">
					<div class="row">
						<div class="col-xl-7 offset-xl-1 col-lg-7">
							<div class="slider-content" style="opacity: 0.7">
								<p>CCTV 카메라 영상 주변기기 및 SYSTEM 설계</p>
								<h3 style="font-size: 24px; line-height: inherit;">내용을
									입력해주세요.</h3>
								<div class="slider-btn">
									<a class="boxed-btn2" href="#">Our Services <i
										class="Flaticon flaticon-right-arrow"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- hi  -->
			<!-- test -->
			<div class="single-slider bg-img-2">
				<div class="container">
					<div class="row">
						<div class="col-xl-7 offset-xl-1 col-lg-7">
							<div class="slider-content" style="opacity: 0.7">
								<p>Quality work. Trustable service. Dedicated team</p>
								<h3>We provide your Industrial solution</h3>
								<div class="slider-btn">
									<a class="boxed-btn2" href="#">Our Services <i
										class="Flaticon flaticon-right-arrow"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="single-slider bg-img-3">
				<div class="container">
					<div class="row">
						<div class="col-xl-7 offset-xl-1 col-lg-7">
							<div class="slider-content" style="opacity: 0.7">
								<p>Quality work. Trustable service. Dedicated team</p>
								<h3>We provide your Industrial solution</h3>
								<div class="slider-btn">
									<a class="boxed-btn2" href="#">Our Services <i
										class="Flaticon flaticon-right-arrow"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- slider-area-end -->

	<!-- brand-area-start -->
	<div class="brand-area gray-bg">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="brand-active owl-carousel">
						<div class="single-brand">
							<img src="/resources/img/brand/idis.png" alt="" style="">
						</div>
						<div class="single-brand">
							<img src="/resources/img/brand/commax.png" alt=""
								style="margin-top: 0.5rem;">
						</div>
						<div class="single-brand">
							<img src="/resources/img/brand/kwea.png" alt="">
						</div>
						<div class="single-brand">
							<img src="/resources/img/brand/cudo.png" alt=""
								style="width: auto; margin-top: 0.5rem;">
						</div>
						<div class="single-brand">
							<img src="/resources/img/brand/kica.png" alt=""
								style="margin-bottom: 0.5rem; width: auto;">
						</div>
						<div class="single-brand">
							<img src="/resources/img/brand/hanwha.png" alt=""
								style="margin-top: 0.5rem;">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- brand-area-end -->

	<!-- service-area-start -->
	<div class="service-area">
		<div class="container">
			<div class="row align-items-center justify-content-center">
				<div class="section-title text-center mb-65">
					<span>OUR SERVICES</span>
					<!--                     <h3>We provide all of your <br>
                        industrial solution</h3> -->
				</div>
			</div>
			<div class="row">
				<div class="col-xl-4 col-md-4">
					<div class="single-service">
						<div class="service-thumb">
							<img src="/resources/img/service/service1.jpg" alt="">
						</div>
						<h3>CCTV</h3>
						<p>내용을 입력해 주세요.내용을 입력해 주세요.내용을 입력해 주세요.내용을 입력해 주세요.내용을 입력해
							주세요.</p>
						<a href="#" class="read-more">Read More</a>
					</div>
				</div>
				<div class="col-xl-4 col-md-4">
					<div class="single-service">
						<div class="service-thumb">
							<img src="/resources/img/service/service2.jpg" alt="">
						</div>
						<h3>Digital Connection System</h3>
						<p>내용을 입력해 주세요.내용을 입력해 주세요.내용을 입력해 주세요.내용을 입력해 주세요.내용을 입력해
							주세요.</p>
						<a href="#" class="read-more">Read More</a>
					</div>
				</div>
				<div class="col-xl-4 col-md-4">
					<div class="single-service">
						<div class="service-thumb">
							<img src="/resources/img/service/service3.jpg" alt="">
						</div>
						<h3>광전송 SYSTEM</h3>
						<p>내용을 입력해 주세요.내용을 입력해 주세요.내용을 입력해 주세요.내용을 입력해 주세요.내용을 입력해
							주세요.</p>
						<a href="#" class="read-more">Read More</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- service-area-end -->

	<!-- project-area-start -->
	<div class="project-area bg-img-3 overlay"
		style="background-repeat: no-repeat; background-size: cover; background-position: center; overflow: hidden;">
		<div class="container">
			<div class="container-fluid p-lg-0">
				<div class="row justify-content-end no-gutters"
					style="justify-content: space-between !important;">
					<div class="col-xl-4 col-md-6">
						<div class="section-title text-white mb-65 ml-80"
							style="margin-left: 0;">
							<h3 style="font-weight: 500;">주요 사업 실적</h3>
							<p>
								<span>&nbsp;Major Business Performance</span>
							</p>
						</div>
					</div>
					<div class="col-xl-6 col-md-6">
						<div class="project-active owl-carousel bottom">

							<c:choose>
								<c:when
									test="${business_list != null and business_list.size()>0}">
									<c:forEach items="${business_list}" var="business">
										<div class="single-project" style="width: inherit;">
											<div class="project-thumb" style="width: inherit;">
												<div class="img-wrapper" style="width: inherit;">
												<img
													src="/resources/img/business_result/main_imgs/${business.imgName}"
													alt="">
												</div>
											</div>
											<div class="project-info">
												<span>${business.resultClass}</span>
												<h3 style="font-size: 17px">${business.resultContnents}</h3>
											</div>
										</div>
									</c:forEach>
								</c:when>

								<c:otherwise>
									<div class="single-project">
										<div class="project-thumb">
											<img
												src="/resources/img/business_result/basic_publicOrg/1.jpg"
												alt="">
										</div>
										<div class="project-info">
											<span>공공기관</span>
											<h3>사업실적 예시입니다. 예시1</h3>
										</div>
									</div>
									<div class="single-project">
										<div class="project-thumb">
											<img
												src="/resources/img/business_result/basic_publicOrg/4.jpg"
												alt="">
										</div>
										<div class="project-info">
											<span>공공기관</span>
											<h3>사업실적 예시입니다. 예시2</h3>
										</div>
									</div>
									<div class="single-project">
										<div class="project-thumb">
											<img
												src="/resources/img/business_result/basic_military/2.jpg"
												alt="">
										</div>
										<div class="project-info">
											<span>군사시설</span>
											<h3>사업실적 예시입니다. 예시3</h3>
										</div>
									</div>
									<div class="single-project">
										<div class="project-thumb">
											<img
												src="/resources/img/business_result/basic_military/1.jpg"
												alt="">
										</div>
										<div class="project-info">
											<span>군사시설</span>
											<h3>사업실적 예시입니다. 예시4</h3>
										</div>
									</div>
								</c:otherwise>
							</c:choose>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- project-area-end -->

	<!-- cta-area-start -->
	<div class="cta-area cta-bg-1"
		style="padding-bottom: 120px !important;">
		<div class="container">
			<div class="col-xl-6 col-lg-7">
				<div class="cta-content"
					style="background: rgba(255, 255, 255, 0.7);">
					<div class="cta-content-inner"
						style="margin-left: 10%; height: 200px;">
						<h3 style="color: #f36d20;font-weight: 500;">찾아오시는 길</h3>
						<p style="color: #020c26">
							서울시 금천구 가산디지털1로 88, 704-C (가산동,IT프리미어타워) <br>
							<br> 704-C, 88, Gasan digital 1-ro, Geumcheon-gu, Seoul,
							Republic of Korea
						</p>
						<div class="cta-btn" style="position: absolute; right: 50px;">
							<a class="boxed-btn2 black-bg" href="/company/location"
								style="background: #f36d20 !important;"> 상세보기 <i
								class="Flaticon flaticon-right-arrow"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- cta-area-end -->



	<!-- footer-start -->
	<c:import url="footer.jsp" charEncoding="UTF-8"></c:import>
	<!-- footer-end -->



	<script>
		$(function() {
			var responseMessage = "<c:out value="${login}" />";
			if (responseMessage != "") {
				alert(responseMessage)
			}
			var responseMessage2 = "<c:out value="${logout}" />";
			if (responseMessage2 != "") {
				alert(responseMessage2)
			}
			var responseMessage2 = "<c:out value="${access_denied}" />";
			if (responseMessage2 != "") {
				alert(responseMessage2)
			}
			var responseMessage2 = "<c:out value="${joinOK}" />";
			if (responseMessage2 != "") {
				alert(responseMessage2)
			}
		})
	</script>
	
<script>
/* 사업실적의 이미지 정사각형 고정 */
$(document).ready(function () {
	$('.img-wrapper').each(function() {
		$(this).height($(this).width());
	});
});

/* 사업실적의 이미지 정사각형 고정 - 반응형*/
/* $(window).resize(function(){
	$('.img-wrapper').each(function() {
		console.log("project-active의 owl-item의 width : "+$('.project-active').find('.owl-item.active').width());
		$(this).width($('.project-active').find('.owl-item.active').width());
		$(this).height($(this).width());
	});
}).resize(); */

//jQuery
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
			$(this).height($(this).width());
		});
		$('.project-info').each(function() {
			$(this).width(owl_item_width);
		});
	}, delay);
});

</script>

</body>
</html>