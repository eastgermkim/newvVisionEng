<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
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
	href="resources/img/nvicon.png">
<!-- Place favicon.ico in the root directory -->

<!-- CSS here -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css/magnific-popup.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/themify-icons.css">
<link rel="stylesheet" href="resources/css/nice-select.css">
<link rel="stylesheet" href="resources/css/flaticon.css">
<link rel="stylesheet" href="resources/css/animate.css">
<link rel="stylesheet" href="resources/css/slicknav.css">
<link rel="stylesheet" href="resources/css/style.css">
<!-- <link rel="stylesheet" href="resources/css/responsive.css"> -->

<style>
@media (max-width : 991px){
	.project-active.owl-carousel.bottom {
		width:100%!important;
	}
}

/* footer 관련 스타일 */
	.mobile{
		display: none;
	}

  	@media ( max-width : 767.5px) {
		.desktop{
			display: none;
		}
		.mobile{
			display:block;
		}
	}
  	@media ( max-width : 991.5px) {
		.desktop-contact{
			display: none;
		}
	}
	.footer_li{
		display: inline-block;
  		vertical-align: middle;
		margin-right: 20px;
	}

</style>


</head>

<body>
	<!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

	<!-- header-start -->
	<header>
		<div class="header-area ">
			
			<div class="header-top black-bg d-none d-md-block">
				<div class="container">
					<div class="row">
						<div class="col-xl-6 col-md-6 col-lg-6">
							<div class="header-contact">
								<a href="#"><i class="fa fa-phone"></i> 02 – 743 – 6977~8</a> <a
									href="#"><i class="fa fa-envelope"></i>nv3000@nate.com</a>
							</div>
						</div>
						<div class="col-xl-6 col-md-6 col-lg-6">
							<div class="header-top-menu">
								<nav>
									<ul>
										<!-- <li><a href="blog.html">News & media</a></li>
										<li><a href="review.html">Review</a></li> -->
										<li><a href="">Admin</a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div id="sticky-header" class="main-header-area white-bg">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-xl-2 col-lg-2">
							<div class="logo-img">
								<a href="/"> <img src="resources/img/nv_logo.png"
									alt="" style="width: 107%;">
								</a>
							</div>
						</div>
						<div class="col-xl-7 col-lg-7">
							<div class="main-menu d-none d-lg-block">
								<nav>
									<ul id="navigation">
									
										<li><br>
											
										</li>
									
										<li><a href="/company/introduce">New Vision ENG</a>
											<ul class="submenu">
												<li><a href="/company/introduce">회사소개</a></li>
												<li><a href="">CEO인사말</a></li>
												<li><a href="/company/history">연혁</a></li>
												<li><a href="/company/organization">조직도</a></li>
												<li><a href="/company/certification">인증현황</a></li>
												<li><a href="/company/location">오시는 길</a></li>
											</ul>
										</li>
										
										<li><a href="">사업분야</a>
											<ul class="submenu">
												<li><a href="">감시기기(CCTV)</a></li>
												<li><a href="">전자제품</a></li>
												<li><a href="">광학기기</a></li>
												<li><a href="">방송수신기</a></li>
												<li><a href="">영상음향기기</a></li>
											</ul>
										</li>
										
										<li><a href="">사업실적</a>
											<ul class="submenu">
												<li><a href="blog.html">사업현황</a></li>
												<li><a href="blog.html">주요 취급품목</a></li>
											</ul>
										</li>
										
										<li><a href="/support/notice">고객지원</a>
											<ul class="submenu">
												<li><a href="/support/notice">공지사항</a></li>
												<li><a href="/support/customer">고객문의</a></li>
											</ul>
										</li>
										
										<li><a href="">채용정보</a>
											<ul class="submenu">
												<li><a href="/employ/list">채용안내</a></li>
											</ul>
										</li>
										
									</ul>
								</nav>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3">
							<div class="quote-area">
								<div class="search-bar">
									<a id="search_1" href="javascript:void(0)"><i
										class="fa fa-search"></i></a>
								</div>
								
								<!-- 버튼 일단 숨김 -->
								<div class="get-quote d-none d-lg-block">
									<a class="boxed-btn" href="#">버튼임</a>
								</div>
							
							</div>
						</div>
						<div class="col-12">
							<div class="mobile_menu d-block d-lg-none"></div>
						</div>
					</div>
					<div class="search_input" id="search_input_box">
						<div class="container ">
							<form class="d-flex justify-content-between search-inner">
								<input type="text" class="form-control" id="search_input"
									placeholder="Search Here">
								<button type="submit" class="btn"></button>
								<span class="fa fa-close" id="close_search" title="Close Search"></span>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- header-end -->

	<!-- slider-area-start -->
	<div class="slider-area">
		<div class="slider-active owl-carousel">
			<div class="single-slider bg-img-1">
				<div class="container">
					<div class="row">
						<div class="col-xl-7 offset-xl-1 col-lg-7">
							<div class="slider-content" style="opacity:0.7">
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
							<div class="slider-content" style="opacity:0.7">
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
							<div class="slider-content" style="opacity:0.7">
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
							<img src="resources/img/brand/idis.png" alt="" style="">
						</div>
						<div class="single-brand">
							<img src="resources/img/brand/commax.png" alt=""
								style="margin-top: 0.5rem;">
						</div>
						<div class="single-brand">
							<img src="resources/img/brand/kwea.png" alt="">
						</div>
						<div class="single-brand">
							<img src="resources/img/brand/cudo.png" alt=""
								style="width: auto; margin-top: 0.5rem;">
						</div>
						<div class="single-brand">
							<img src="resources/img/brand/kica.png" alt=""
								style="margin-bottom: 0.5rem; width: auto;">
						</div>
						<div class="single-brand">
							<img src="resources/img/brand/hanwha.png" alt=""
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
							<img src="resources/img/service/service1.jpg" alt="">
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
							<img src="resources/img/service/service2.jpg" alt="">
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
							<img src="resources/img/service/service3.jpg" alt="">
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
	<div class="project-area bg-img-2 overlay"
		style="background-repeat: no-repeat; background-size: cover; background-position: center; overflow:hidden;">
		<div class="container">
			<div class="container-fluid p-lg-0">
				<div class="row justify-content-end no-gutters"
					style="justify-content: space-between !important;">
					<div class="col-xl-4 col-md-6">
						<div class="section-title text-white mb-65 ml-80"
							style="margin-left: 0;">
							<h3>주요 사업 실적</h3>
							<p>
								내용을 입력해 주세요.내용을 입력해 주세요.내용을 입력해 주세요.<br>내용을 입력해 주세요.내용을 입력해
								주세요.내용을 입력해 주세요.
							</p>
							<div class="more-project">
								<a href="#">More Projects</a>
							</div>
						</div>
					</div>
					<div class="col-xl-6 col-md-6">
						<div class="project-active owl-carousel bottom" style="width:200%;">
							<div class="single-project">
								<div class="project-thumb">
									<img src="resources/img/project/1.jpg" alt="">
								</div>
								<div class="project-info">
									<span>Industrial construction</span>
									<h3>Research and development center</h3>
								</div>
							</div>
							<div class="single-project">
								<div class="project-thumb">
									<img src="resources/img/project/1.jpg" alt="">
								</div>
								<div class="project-info">
									<span>Machine engineering</span>
									<h3>Project of technological park</h3>
								</div>
							</div>
							<div class="single-project">
								<div class="project-thumb">
									<img src="resources/img/project/1.jpg" alt="">
								</div>
								<div class="project-info">
									<span>Industrial construction</span>
									<h3>Research and development center</h3>
								</div>
							</div>
							<div class="single-project">
								<div class="project-thumb">
									<img src="resources/img/project/1.jpg" alt="">
								</div>
								<div class="project-info">
									<span>Machine engineering</span>
									<h3>Project of technological park</h3>
								</div>
							</div>
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
				<div class="cta-content" style="background: none;">
					<h3>찾아오시는 길</h3>
					<p>
						서울시 금천구 가산디지털1로 88, 704-C <br>(가산동,IT프리미어타워) <br>내용을
						입력해주세요.내용을 입력해주세요. <br>내용을 입력해주세요.내용을 입력해주세요. <br>내용을
						입력해주세요.내용을 입력해주세요.
					</p>
					<div class="cta-btn" style="position: inherit;">
						<a class="boxed-btn2 black-bg" href="#"
							style="background: #f36d20 !important;">상세보기<i
							class="Flaticon flaticon-right-arrow"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- cta-area-end -->



	<!-- footer-start -->
    <footer class="footer-area" style="padding:3% 0 3%;height: 200px">
        <div class="container">
                <div class="desktop" style="float: left;">
                	<div>
                		<ul>
                			<li class="footer_li"><a href="/company/introduce">New Vision ENG</a></li>
                			<li class="footer_li"><a href="#">사업분야</a></li>
                			<li class="footer_li"><a href="#">사업실적</a></li>
                			<li class="footer_li"><a href="/support/notice">고객지원</a></li>
                			<li class="footer_li"><a href="#">채용정보</a></li>
                		</ul>
                	</div>
                
                    <div class="single-footer-widget footer_1">
                       	<p style="margin:auto;text-align: left;font-size: 0.8em; padding-top: 1em;">
                       	본사 : (08590)서울시 금천구 가산디지털1로 88, 704-C (가산동,IT프리미어타워)
                       	/ 사업자등록번호 : 101-86-05239
                     	<br>대표자명 : 전대순 / 대표전화 : 02–743–6977~8 / Fax : 02–762–2588 / 이메일 : nv3000@nate.com
                       	<br>COPYRIGHT &copy; 2021 NEWVISIONENG CO LTD. ALL RIGHTS RESERVED.
                        </p>
                    </div>
                </div>
                
              <div class="desktop-contact" style="float: right;text-align: right;">
              		<p style="font-size: 14px;font-weight: 500;line-height: 1;position: relative;margin: auto;">
              			Contact
              		</p>
		            <a href="tel:02-743–6977" style="display: block;font-size: 24px;letter-spacing: 0.05em;">
		            	02)743–6977~8
		            </a>
		            <ul>
		                <li style="display: block;font-size: 14px;font-weight: 400;color: #828282;line-height: 20px;">
		                	MON-FRI 09:00 - 18:00<br>( Lunch 12:00 - 13:00 )
		                </li>
		            </ul>
		       </div>
		       
       
                <div class="mobile" >
                    <div class="single-footer-widget footer_1" style="margin: auto;">
                       	<p style="margin:auto;text-align: center;font-size: 0.8em;line-height:1.6;padding-top: 3%">
                       	<span>서울시 금천구 가산디지털1로 88, 704-C<br>(가산동,IT프리미어타워)</span>
                       	<span>/ 대표자명 : 전대순</span>
                     	<br><span>사업자등록번호 : 101-86-05239</span>
                     	<br><span>대표전화 : 02)743–6977~8</span><span> / Fax : 02)762–2588</span>
                     	<br><span>이메일 : nv3000@nate.com</span>
                        <p style="margin:auto;text-align: center;font-size: 0.8em;line-height:1.6;padding-top: 3%">
                       	COPYRIGHT &copy; 2021 NEWVISIONENG CO LTD.<br>ALL RIGHTS RESERVED.
                       	</p>
                    </div>
                </div>
        </div>
       
    </footer>
    <!-- footer-end -->

	<!-- JS here -->
	<script src="resources/js/vendor/modernizr-3.5.0.min.js"></script>
	<script src="resources/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/isotope.pkgd.min.js"></script>
	<script src="resources/js/ajax-form.js"></script>
	<script src="resources/js/waypoints.min.js"></script>
	<script src="resources/js/jquery.counterup.min.js"></script>
	<script src="resources/js/imagesloaded.pkgd.min.js"></script>
	<script src="resources/js/scrollIt.js"></script>
	<script src="resources/js/jquery.scrollUp.min.js"></script>
	<script src="resources/js/wow.min.js"></script>
	<script src="resources/js/nice-select.min.js"></script>
	<script src="resources/js/jquery.slicknav.min.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/plugins.js"></script>

	<!--contact js-->
	<script src="resources/js/contact.js"></script>
	<script src="resources/js/jquery.ajaxchimp.min.js"></script>
	<script src="resources/js/jquery.form.js"></script>
	<script src="resources/js/jquery.validate.min.js"></script>
	<script src="resources/js/mail-script.js"></script>

	<script src="resources/js/main.js"></script>

</body>

</html>