<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>New Vision ENG</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="manifest" href="site.webmanifest"> -->
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
</style>
<style>
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video, button {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    border: 0;	
    font-size: 100%;
    vertical-align: baseline;
    -o-box-sizing: border-box;
    -ms-box-sizing: border-box;
}
body {
    position: relative;
    background: #fff;
    font-size: 14px;
    line-height: 1.7;
    color: #555555;
    word-wrap: break-word;
    word-break: keep-all;
    text-size-adjust: none;
    -webkit-text-size-adjust: none;
    -moz-text-size-adjust: none;
    font-weight: 400;
}
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
}
.BusinessOutlineTop-title {
    display: inline-block;
    margin-right: 20px;
    color: #000;
    font-size: 36px;
    font-weight: bold;
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
    width: 50%;
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
    font-weight: bold;
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
    max-width: 100%;
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
    font-weight: bold;
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
	    padding-top: 24px;
	}
	.BusinessOutlineList-item {
	    width: 100%;
	    float: none;
	    padding: 0;
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
</style>
</head>
<body>
	<script>
		AOS.init();
	</script>

	<!-- header.jsp import -->
	<c:import url="../header.jsp" charEncoding="UTF-8"></c:import>
	<script>
		addClassName2();
	</script>

	<!-- breadcrumb-start -->
	<section class="breadcrumb breadcrumb_bg banner-bg-1 overlay2 ptb200">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 offset-lg-1">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item">
							<h2>사업소개</h2>
							<p style="opacity: 0.6">New Vision ENG. 본사</p>
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
							<div class="container" style="margin-top: 3%;">
							<div class="PageContent">
								<div class="site-container">
									<article id="post-540"
										class="post-540 page type-page status-publish hentry">
										<div class="entry-content">
											<!-- 사업개요 -->
											<div class="BusinessOutline">
												<div class="BusinessOutlineTop">
													<h4 class="BusinessOutlineTop-title">정보통신공사</h4>
													<p class="BusinessOutlineTop-sub">글로벌 영상감시 분야의 리더 Total
														Security Solution!</p>
						
												</div>
												<div class="BusinessOutlineBtm">
													<div class="BusinessOutlineBtm-item">
						
														<span class="BusinessOutlineBtm-title mb20">정보를 통신하는 설비의 구축</span>
														<p class="BusinessOutlineBtm-text">당사는 1990년에 처음으로 감시용 카메라를
															출시한 이래 지난 30년간 영상감시 사업에 집중하여 세계 최고의 광학 설계/제조기술과 영상처리 기술을
															축적하였습니다. 감시카메라, 저장장치는 물론 통합관제 소프트웨어와 지능형 영상분석 소프트웨어까지
															영상감시(CCTV)부분 Full Line up을 구축하였습니다.</p>
						
													</div>
													<div class="BusinessOutlineBtm-item">
														<p class="BusinessOutlineBtm-text mb15">또한 최근 지능화, 고도화 되고 있는
															범죄로부터 안전하고 편안한 세상을 만들기 위해 단순 영상감시에서 나아가 IoT, Deep learning등
															신기술의 접목과 출입통제 등 기술의 융합과 통합을 통해 고객 맞춤형 Total Solution 체제를 구축해
															나가겠습니다.</p>
														<p class="BusinessOutlineBtm-text">지속적인 기술개발과 시장개척 노력으로 국내시장
															점유율 1위를 유지하고 있으며, 세계 60개국에 120개 대리점과 5000개 이상의 협력업체를 확보하여 국내
															1위에 안주하지 않고, 적극적인 해외시장 개척으로 글로벌 리더가 되겠습니다.</p>
						
													</div>
												</div>
												<div class="BusinessOutlineList">
													<ul class="BusinessOutlineList-list">
														<li class="BusinessOutlineList-item">
															<div class="BusinessItem">
																<div class="BusinessItem-thumb">
																	<span class="BusinessItem-num">01</span> <img
																		class="BusinessItem-img"
																		src="/resources/img/business/shield-room.jpg">
																</div>
																<div class="BusinessItem-cont">
																	<h5 class="BusinessItem-title">Shiled Room 맞춤형 CCTV</h5>
																	<p class="BusinessItem-text">Shield Room 용으로 제작광 방식의 영상전송으로 어떤 주파수 대역에서도 전자파 노이즈
																							발생하지 않음.ㅎㅎ </p>
						
																</div>
															</div>
														</li>
														<li class="BusinessOutlineList-item">
															<div class="BusinessItem">
																<div class="BusinessItem-thumb">
																	<span class="BusinessItem-num">02</span> <img
																		class="BusinessItem-img"
																		src="/resources/img/business/ptz.jpg">
																</div>
																<div class="BusinessItem-cont">
																	<h5 class="BusinessItem-title">PTZ CCTV</h5>
																	<p class="BusinessItem-text">얼굴인식, 이벤트 검출 등 지능형 분석 기술,
																		해킹/위변조 방지, 개인 사생활 보호</p>
						
																</div>
															</div>
														</li>
														<li class="BusinessOutlineList-item">
															<div class="BusinessItem">
																<div class="BusinessItem-thumb">
																	<span class="BusinessItem-num">03</span> <img
																		class="BusinessItem-img"
																		src="/resources/img/business/proofcctv.jpg">
																</div>
																<div class="BusinessItem-cont">
																	<h5 class="BusinessItem-title">전자파용 특수 카메라</h5>
																	<p class="BusinessItem-text">전자파 전자파 전자파 전자파 전자파 
																	전자파 전자파 전자파 전자파 전자파 전자파</p>
						
																</div>
															</div>
														</li>
														<li class="BusinessOutlineList-item">
															<div class="BusinessItem">
																<div class="BusinessItem-thumb">
																	<span class="BusinessItem-num">04</span> <img
																		class="BusinessItem-img"
																		src="/resources/img/business/opticfiber.jpg">
																</div>
																<div class="BusinessItem-cont">
																	<h5 class="BusinessItem-title">광 방식 영상 전송</h5>
																	<p class="BusinessItem-text">파트너 및 고객을 위한 교육 빠른 대응을 위한
																		Call Center 전국 A/S망 구축</p>
						
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


	<!--==========================스크롤 이미지 애니메이션============================-->
	<script>
	/* AOS 초기화 */
	$('.nav-link').on('click', function(){
		AOS.refresh();
	})
	</script>
	
</body>


</html>