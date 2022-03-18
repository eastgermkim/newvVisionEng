<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html>

<style>
.img-content{
	height:100%;
	border:1.5px solid #eee;
}

.info-title{
    font-size:20px;
    font-weight:normal;
}

.info-wrap{
	display: flex;
    flex-direction: column;
    justify-content: space-between;
    text-align: center;
    margin-top:30px;
}

.img-wrap{
	display: table;
    width: 100%;
}

.bg-gray{
	display: flex;
    flex-direction: column;
    height: 100%;
    padding: 20px 20px 35px;
    background-color:#f9f9f9;
}

#only-gallery{
	padding-bottom:50px;
}

.single-gallery-image{
	margin-top:0!important;
	margin-left:auto;
	margin-right:auto;
	background-size:contain!important;
	text-align:center;
	height:250px!important;
}



@media ( max-width : 767px) {
	.organization_img{
		content: url(/resources/img/company/organization_mobile2.png);
	}
	.single-gallery-image{
		border:none;
	}
	
}

</style>


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
<!-- <link rel="stylesheet" href="resources/css/responsive.css"> -->


</head>
<body>
	<!-- header.jsp import -->
	<c:import url="../header.jsp" charEncoding="UTF-8"></c:import>
	<section class="breadcrumb breadcrumb_bg banner-bg-1 overlay2 ptb200">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 offset-lg-1">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item">
							<h2>인증현황</h2>
							<p style="opacity: 0.6;">New Vision ENG. Company</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="sample-text-area" style="padding: 5% 0 1% 0;">
		<div class="container box_1170" style="border-top: 2px dotted #eee;">
			<br>
			<h3 class="text-heading">Certification</h3>
			<p class="smple-text">뉴비젼이엔지의 인증현황과 수상내역을 열람하실 수 있습니다.</p>
		</div>
	</section>

	<br>
	<br>
	<section class="">
		<div class="container" style="padding-bottom:15%;">
			<div class="row gallery-item">
					<div id="only-gallery" class="col-lg-4 col-md-6">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="/resources/img/company/g1.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="/resources/img/company/g1.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">사업자등록증</h3>
							</div>
						</div>
					</div>
					<div id="only-gallery" class="col-lg-4 col-md-6">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="/resources/img/company/g2.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="/resources/img/company/g2.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">공장등록증명(신청)서</h3>
							</div>
						</div>
					</div>
					<div id="only-gallery" class="col-lg-4 col-md-6">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="/resources/img/company/g3.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="/resources/img/company/g3.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">정보통신공사업 등록증</h3>
							</div>
						</div>
					</div>
					<div id="only-gallery" class="col-lg-4 col-md-6">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="/resources/img/company/g4.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="/resources/img/company/g4.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">경쟁입찰참가자격 등록증</h3>
							</div>
						</div>
					</div>
					<div id="only-gallery" class="col-lg-4 col-md-6">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="/resources/img/company/g5.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="/resources/img/company/g5.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">경쟁입찰참가 예시</h3>
							</div>
						</div>
					</div>
					<div id="only-gallery" class="col-lg-4 col-md-6">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="/resources/img/company/g6.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="/resources/img/company/g6.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">신용평가등급 확인서</h3>
							</div>
						</div>
					</div>
					<div id="only-gallery" class="col-lg-4 col-md-6">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="/resources/img/company/g7.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="/resources/img/company/g7.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">여성기업 확인서</h3>
							</div>
						</div>
					</div>
					<div id="only-gallery" class="col-lg-4 col-md-6">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="/resources/img/company/g8.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="/resources/img/company/g8.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">직접생산확인증명서</h3>
							</div>
						</div>
					</div>
					<div id="only-gallery" class="col-lg-4 col-md-6">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="/resources/img/company/g9.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="/resources/img/company/g9.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">소상공인 확인서</h3>
							</div>
						</div>
					</div>
					<div id="only-gallery" class="col-lg-4 col-md-6">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="/resources/img/company/g10.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="/resources/img/company/g10.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">감사장 - 군수참모부장</h3>
							</div>
						</div>
					</div>
					<div id="only-gallery" class="col-lg-4 col-md-6">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="/resources/img/company/g11.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="/resources/img/company/g11.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">표창장 - 서울지방조달청장</h3>
							</div>
						</div>
					</div>
					<div id="only-gallery" class="col-lg-4 col-md-6">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="/resources/img/company/g12.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="/resources/img/company/g12.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">표창장 - 중소기업중앙회</h3>
							</div>
						</div>
					</div>
					<div id="only-gallery" class="col-lg-4 col-md-6">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="/resources/img/company/g13.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="/resources/img/company/g13.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">표창장 - 서울특별시장</h3>
							</div>
						</div>
					</div>


				</div>
		</div>
	</section>
	<c:import url="../footer.jsp" charEncoding="UTF-8"></c:import>
	
<script>
$(function () { 
	
	addClassName1();
	
	$( '.header-area' ).on( "mouseleave", function () {
		addClassName1();
	})

});
</script>

</body>

    <!-- JS here -->
    <script src="/resources/js/popper.min.js"></script>
    <script src="/resources/js/ajax-form.js"></script>
    <script src="/resources/js/imagesloaded.pkgd.min.js"></script>
    <script src="/resources/js/jquery.magnific-popup.min.js"></script>

    <!--contact js-->
    <script src="/resources/js/jquery.ajaxchimp.min.js"></script>
    <script src="/resources/js/jquery.form.js"></script>
    <script src="/resources/js/jquery.validate.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
                 


	
	</script>
</html>

