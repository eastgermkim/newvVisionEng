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
.row2{
	margin-left:0px;
	margin-right:0px;
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

.video-caution{
    background: rgba(0,0,0,0.35);
    text-align: center;
    width: 100%;
    height: 50%;
    margin: 0 auto;
    position: relative;
    bottom: 500px;
}

.video-caution-text{
	padding-top: 82px;
    padding-bottom: 82px;
    font-size: 30px!important;
    color: #fff!important;
    font-weight: 600!important;
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

.unordered-list li{
	padding-left: 20px;
}
.unordered-list li:before{
	top:7px;
}

</style>

<style>
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
								<a class="nav-link active show" id="tab" href="../business/business_army">군사시설 CCTV SYSTEM</a></li>
								
								<li class="nav-item">
								<a class="nav-link" id="tab" href="../business/business_sp">전자파용 특수 CCTV SYSTEM</a></li>
								
								<li class="nav-item">
								<a class="nav-link" id="tab" href="../business/business_com">정보통신공사</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
		<div class="container" style="margin-top: 3%;">
			<div class="row row2">
				<div class="single-details">
					<div class="tab-content" id="myTabContent">
						<div class="tab-pane fade show active" id="business4" role="tabpanel"
							aria-labelledby="contact-tab">
							<div class="details-wrap">
								<div class="details-info">
									<div class="BusinessOutlineTop">
										<h4 class="BusinessOutlineTop-title">군사시설 CCTV SYSTEM</h4>
									</div>
									<div class="BusinessOutlineBtm">
										<div class="BusinessOutlineBtm-item">
											<span class="BusinessOutlineBtm-title mb20">요청한 환경에 맞는 적합한 솔루션을 적시에 제공</span>
											<p
												style="font-size: 16px; font-weight: 400">
												육군, 해군, 공군 등 수 많은 군부대와 지속적인 파트너쉽을 통해 오랜기간 다양한 솔루션을 제공해왔습니다.
												<br>
												당사는 그러한 노하우를 바탕으로 더욱 향상된, 요청한 환경에 맞는 적합한 서비스를 적시에 설계 및 제공하고 있습니다.
											</p>
										</div>
									</div>
									<div>
										<div>
											<video class="video" id="video" src="/resources/video/army_ani.mp4" style="width:100%;" muted="muted"></video>
											<p style="padding-top: 20px; font-size: 14px; font-weight: 400; text-align:right;">※클릭 시 재생을 생략할 수 있습니다.</p>
											<div class="video-caution">
												<h3 class="video-caution-text">클릭 시 재생을 생략할 수 있습니다.<br>(재생화면 밖으로 마우스가 벗어나면 해당 창은 없어집니다.)</h3>
											</div>
										</div>
										<div style="text-align:center;">
											<img src="/resources/img/business/army_3part6.png" style="width:60%; margin:0 auto;">
												<table style="width:60%; margin:0 auto;">
													<tr>
														<th style="width: 33%; font-size:22px; background: linear-gradient(to right, #FF823D, #FD753A); color: transparent;-webkit-background-clip: text;">납품</th>
														<th style="width:33%; font-size:22px;  background: linear-gradient(to right, #FD753A, #F75732); color: transparent;-webkit-background-clip: text;">설치</th>
														<th style="width: 33%; font-size:22px;  background: linear-gradient(to right, #F75732, #ED1E23); color: transparent;-webkit-background-clip: text;">유지보수</th>
													</tr>
													<tr>
														<td style="padding-left: 2%; padding-right: 2%;text-align:left; border-right:1px dotted #eee">부대 별 감시 체계에 맞는 CCTV 제공을 위한 계획 수립 후, 보안성과 호환성이 검증된 최적의 제품을 납품합니다.</td>
														<td style="padding-left: 2%; padding-right: 2%;text-align:left; border-right:1px dotted #eee">감시 체계 반경, 특수성 과 보안성을 고려한 제품을 다년간의 구축경험의 노하우를 더해 안정적이고 신속하게 설치합니다.</td>
														<td style="padding-left: 2%; padding-right: 2%;text-align:left;">CCTV별 정기, 비정기적 유지관리를 통해 예방과 정비를 보장하고 사전에 문제가 될 수 있는 요소를 식별 및 제거합니다.</td>
													</tr>
												</table>
										</div>
									</div>
									<div class="BusinessOutlineBtm">
										<div class="BusinessOutlineBtm-item">
											<span class="BusinessOutlineBtm-title mb20">Process</span>
											<p style="font-size: 16px; font-weight: 400"></p>
												<ul class="unordered-list">
													<li>최적의 CCTV 납품 및 설치 계획 수립</li>
													<li>단계별 정상 가동여부 확인(Double Check) 수행</li>
													<li>철저한 사후 관리를 통한 상시 지원체제 유지</li>
												</ul>
										</div>
										<table>
											<colgroup>
												<col style="width:20%;">
												<col style="width:40%;">
												<col style="width:40%;">
											</colgroup>
											<thead>
												<tr>
													<th>수행 단계</th>
													<th>단계별 고려사항</th>
													<th>작업 내용</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th>
													1
													</th>
													<td>
													2
													</td>
													<td>
													3
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- 										<div style="text-align:center;">
											<img src="/resources/img/business/army_3part3.png" style="width:60%;">
											<table>
												<tr>
													<th>납품</th>
													<th>설치</th>
													<th>유지보수</th>
												</tr>
												
											</table>
										</div> -->
	<!-- service-details-end -->


	<!-- ================ contact section start ================= -->
	<section class="contact-section">
		<div class="container"></div>
	</section>
	<!-- ================ contact section end ================= -->

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
		
		//army_ani와 caution 둘 다 지정하지 않으면 caution이 깜빡거림
		$('#video, .video-caution').click(function(){
			//army_ani 끝으로 이동해서
            $('#video').get(0).currentTime = 41;
			//일시정지
            $('#video').get(0).pause();
		})
		
		//기존 안내 문구 hide
		$('.video-caution').hide();
		//army_ani에 마우스 올리면
		$('#video, .video-caution').hover(function(){
			//army_ani가 정지된 상태(완료 상태)라면
			if($("#video").get(0).paused){
				//안내 문구 hide
				$('.video-caution').hide();
			
			//army_ani가 재생중 이라면
			}else{
				//안내 문구 출력
				$('.video-caution').show();
			}
		}, 
		//army_ani에서 마우스 떠나면
		function(){
			$('.video-caution').hide();
		})
		
	</script>
</body>


</html>