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

.sp-detail-info::before{
    content: "";
    display: inline-block;
    width: 1px;
    height: 13px;
    margin: 0 16px;
    background-color: #ddd;
}
.team-area{
	margin-top:50px;
}
.team-thumb{
	height:45%;
}
.team-thumb img{
	height:100%;
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
								<li class="nav-item"><a class="nav-link" id="tab"
									href="../business/business_cctv">CCTV 설치</a></li>

								<li class="nav-item"><a class="nav-link" id="tab"
									href="../business/business_com">정보통신공사</a></li>

								<li class="nav-item"><a class="nav-link active show"
									id="tab" href="../business/business_sp">전자파용 특수 CCTV SYSTEM</a></li>

								<li class="nav-item"><a class="nav-link" id="tab"
									href="../business/business_fo">광전송 SYSTEM</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
		<div class="container" style="margin-top: 3%;">
			<div class="row">
				<div class="single-details">
					<div class="tab-content" id="myTabContent">

						<!---------------------------------전자파용 특수 CCTV SYSTEM Ani------------------------------------>
						<div class="tab-pane fade show active" id="business3"
							role="tabpanel" aria-labelledby="contact-tab">
							<div class="details-wrap">
								<div class="details-info">
									<h3 class="main-title">전자파용 특수 CCTV SYSTEM</h3>
									<div class="details-info">
										<div class="sp-detail-list" style="text-align:center;">
											<video class="video" src="/resources/video/sp_ani.mp4" muted style="width:70%"></video>
										</div>
										
										<!---------------------------------------PTZ, 전자파용 특수 카메라, 광 방식-------------------------------------------->
										<div class="row team-area">
											<div class="col-xl-4 col-lg-4 col-md-6" data-aos="fade-up" data-aos-offset="100" data-aos-duration="1000">
												<div class="single-team">
													<div class="team-thumb">
														<img src="/resources/img/business/business.jpg" alt="">
														<div class="team-hover">
															<div class="team-link">
																<ul>
																	<li>
																	<a href="#"> 
																	<i class="fa fa-camera"></i>
																	</a>
																	</li>
																</ul>
															</div>
														</div>
													</div>
													
													<div class="text-center">
														<h3>PTZ CCTV</h3>
														<p>
															내용내용내용내용내용내용내용내용내용내용<br> 내용내용내용내용내용내용내용내용내용내용<br>
														</p>
													</div>
												</div>
											</div>
											
											<div class="col-xl-4 col-lg-4 col-md-6" data-aos="fade-up" data-aos-offset="100" data-aos-duration="1000" data-aos-delay="300">
												<div class="single-team">
													<div class="team-thumb">
														<img src="/resources/img/business/business.jpg" alt="">
														<div class="team-hover">
															<div class="team-link">
																<ul>
																	<li>
																	<a href="#"> 
																	<i class="fa fa-camera"></i>
																	</a>
																	</li>
																</ul>
															</div>
														</div>
													</div>
													
													<div class="text-center">
														<h3>전자파용 특수 카메라</h3>
														<p>
															내용내용내용내용내용내용내용내용내용내용<br> 내용내용내용내용내용내용내용내용내용내용<br>
														</p>
													</div>
												</div>
											</div>
											
											<div class="col-xl-4 col-lg-4 col-md-6" data-aos="fade-up" data-aos-offset="100" data-aos-duration="1000" data-aos-delay="600">
												<div class="single-team">
													<div class="team-thumb">
														<img src="/resources/img/business/optic-fiber.jpg" alt="">
														<div class="team-hover">
															<div class="team-link">
																<ul>
																	<li>
																	<a href="#"> 
																	<i class="fa fa-camera"></i>
																	</a>
																	</li>
																</ul>
															</div>
														</div>
													</div>
													
													<div class="text-center">
														<h3>광 방식 영상 전송</h3>
														<p>
															내용내용내용내용내용내용내용내용내용내용<br> 내용내용내용내용내용내용내용내용내용내용<br>
														</p>
													</div>
												</div>
											</div>
<!-- 											<div style="width:30%; margin-left:10px;">
											<h3 class="business-name" style="font-size: 24px; font-weight: 300;">EMC/EMI/EMS CCTV</h3>
											
											<p class="sp-detail-info" style="padding-top: 20px; font-size: 20px; font-weight: 100">
											Shield Room<br>
											</p>
											<p class="sp-detail-info" style="padding-top: 20px; font-size: 20px; font-weight: 100">
											Fiber Optical Video Transmission<br>
											</p>
											<p class="sp-detail-info" style="padding-top: 20px; font-size: 20px; font-weight: 100">
											PTZ CCTV<br>
											</p>
											</div> -->

									</div>
								</div>
							</div>
						</div>


						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- service-details-end -->


	<!-- ================ contact section start ================= -->
	<section class="contact-section">
		<div class="container"></div>
	</section>
	<!-- ================ contact section end ================= -->

	<c:import url="../footer.jsp" charEncoding="UTF-8"></c:import>


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