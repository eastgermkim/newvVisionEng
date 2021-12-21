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
								<a class="nav-link active show" id="tab" href="../business/business_cctv">CCTV 설치</a></li>
								
								<li class="nav-item">
								<a class="nav-link" id="tab" href="../business/business_com">정보통신공사</a></li>
								
								<li class="nav-item">
								<a class="nav-link" id="tab" href="../business/business_sp">전자파용 특수 CCTV SYSTEM</a></li>
								
								<li class="nav-item">
								<a class="nav-link" id="tab" href="../business/business_fo">광전송 SYSTEM</a></li>
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

						<!-----------------------------------CCTV 설치------------------------------------>
						<div class="tab-pane fade show active" id="business1"
							role="tabpanel" aria-labelledby="home-tab">
							<div class="details-wrap">
								<!-----------------------------------3Tier----------------------------------------->
								<div class="details-info">
									<h3 class="main-title">CCTV 설치</h3>
									<div data-aos="fade-up" data-aos-offset="200"
										data-aos-duration="1000">
										<div class="cctv-detail1 details-info">
											<h3 class="business-name"
												style="font-size: 24px; font-weight: 300;">CCTV 카메라 영상
												주변기기 및 SYSTEM 설계</h3>
											<p
												style="padding-top: 20px; font-size: 20px; font-weight: 100">
												15년 경력의 보안 전문가와의 상담을 통해 맞춤형 서비스 설계와 신속,정확한 유지보수를 제공합니다.<br>
												사용자의 환경을 고려한 동영상 자료를 남기기 위해 고화질, 적외선 감지 와 인공지능형 CCTV등 을 통하여<br>
												니즈에 맞는 제품 선택과 설치를 진행합니다.
											</p>
										</div>
										<div class="about-area section-padding">
											<div class="container">
												<div class="row align-items-center"
													style="justify-content: space-between;">
													<div class="col-xl-5 col-md-12 col-lg-6"
														style="max-width: 55%; flex: 0 0 53%;">
														<div class="section-title mb-65 p-0">
															<span>부 제목</span>
															<h3>3Tier 주 제목</h3>
															<p class="para-text">내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
																내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
																내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
																내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
																내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용</p>
														</div>
													</div>
													<div class="col-xl-7 col-md-12 col-lg-6"
														style="max-width: 45%;">
														<div class="about-thumb">
															<img src="/resources/img/business/cctv_3tier.png"
																alt="">
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>

									<!--------------------------------------CCTV 분야----------------------------------------->
									<div class="cctv-kind row team-area">
										<div class="col-xl-4 col-lg-4 col-md-6" data-aos="fade-up"
											data-aos-offset="100" 
											data-aos-duration="1000">
											<div class="single-team">
												<div class="team-thumb">
													<img src="/resources/img/business/business.jpg" alt="">
													<div class="team-hover">
														<div class="team-link">
															<ul>
																<li><a href="#"> <i class="fa fa-camera"></i>
																</a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="team-info text-center">
													<h3>군사시설 CCTV</h3>
													<p>
														내용내용내용내용내용내용내용내용내용내용<br> 내용내용내용내용내용내용내용내용내용내용<br>
													</p>
												</div>
											</div>
										</div>
										<div class="col-xl-4 col-lg-4 col-md-6" data-aos="fade-up"
											data-aos-offset="100" 
											data-aos-delay="300" data-aos-duration="1000">
											<div class="single-team">
												<div class="team-thumb">
													<img src="/resources/img/business/service1.jpg" alt="">
													<div class="team-hover">
														<div class="team-link">
															<ul>
																<li><a href="#"> <i class="fa fa-camera"></i>
																</a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="team-info text-center">
													<h3>공공기관 CCTV</h3>
													<p>내용내용내용내용</p>
												</div>
											</div>
										</div>
										<div class="col-xl-4 col-lg-4 col-md-6" data-aos="fade-up"
											data-aos-offset="100" 
											data-aos-delay="600" data-aos-duration="1000">
											<div class="single-team">
												<div class="team-thumb">
													<img src="/resources/img/business/service2.jpg" alt="">
													<div class="team-hover">
														<div class="team-link">
															<ul>
																<li><a href="#"> <i class="fa fa-camera"></i>
																</a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="team-info text-center">
													<h3>민간시설 CCTV</h3>
													<p>내용내용내용내용</p>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="cctv-detail2 details-info">
									<h3 class="business-name"
										style="font-size: 24px; font-weight: 300;">CCTV 설치 및 설계
										예시</h3>
								</div>
								<div class="cctv-main details-thumb" data-aos="fade-up"
									data-aos-offset="200" 
									data-aos-duration="1000">
									<img src="/resources/img/business/system.png" alt="">
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
	</script>
</body>


</html>