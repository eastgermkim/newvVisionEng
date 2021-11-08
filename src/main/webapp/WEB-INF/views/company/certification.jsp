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
    min-height: 280px;
}

.bg-gray{
	display: flex;
    flex-direction: column;
    height: 100%;
    padding: 20px 20px 35px;
    background-color:#f9f9f9;
}

.col-md-4{
	padding-bottom:50px;
}

.single-gallery-image{
	margin-top:0!important;
	margin-left:auto;
	margin-right:auto;
	height:25em!important;
	background-size:contain!important;
	height:20rem!important;
	text-align:center;
}


@media(max-width: 991px){
	.single-gallery-image{
		height:30em!important;
	}
}

@media ( max-width : 767px) {
	.organization_img{
		content: url(../resources/img/company/organization_mobile2.png);
	}
	.single-gallery-image{
		border:none;
	}
	
}




</style>


<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>New Vision ENG</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="manifest" href="site.webmanifest"> -->
<link rel="shortcut icon" type="image/x-icon"
	href="../resources/img/nvicon.png">

<!-- CSS here -->
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="../resources/css/magnific-popup.css">
<link rel="stylesheet" href="../resources/css/font-awesome.min.css">
<link rel="stylesheet" href="../resources/css/themify-icons.css">
<link rel="stylesheet" href="../resources/css/nice-select.css">
<link rel="stylesheet" href="../resources/css/flaticon.css">
<link rel="stylesheet" href="../resources/css/animate.css">
<link rel="stylesheet" href="../resources/css/slicknav.css">
<link rel="stylesheet" href="../resources/css/style.css">
<!-- <link rel="stylesheet" href="resources/css/responsive.css"> -->


</head>
<body>
	<!-- header.jsp import -->
	<c:import url="../header2.jsp" charEncoding="UTF-8"></c:import>
	<script>
		addClassName1();
	</script>
	<section class="breadcrumb breadcrumb_bg banner-bg-1 overlay2 ptb200">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 offset-lg-1">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item">
							<h2>인증현황</h2>
							<p style="opacity: 0.6;">New Vision ENG.본사</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="sample-text-area">
		<div class="container box_1170" style="border-top: 2px dotted #eee;">
			<br>
			<h3 class="text-heading">Certification</h3>
			<p class="smple-text">내용을 입력해주세요.내용을 입력해주세요.내용을 입력해주세요. 내용을
				입력해주세요.내용을 입력해주세요.내용을 입력해주세요.내용을 입력해주세요.내용을 입력해주세요.
			<p>
		</div>
	</section>

	<br>
	<br>
	<section class="">
		<div class="container" style="padding-bottom:15%;">
			<div class="row gallery-item">
					<div id="change_class" class="col-md-4">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="../resources/img/company/g1.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="../resources/img/company/g1.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">안녕 내가 누군지아니?</h3>
							</div>
						</div>
					</div>
					<div id="change_class" class="col-md-4">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="../resources/img/company/g2.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="../resources/img/company/g2.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">안녕 내가 누군지아니?</h3>
							</div>
						</div>
					</div>
					<div id="change_class" class="col-md-4">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="../resources/img/company/g3.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="../resources/img/company/g3.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">안녕 내가 누군지아니?</h3>
							</div>
						</div>
					</div>
					<div id="change_class" class="col-md-4">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="../resources/img/company/g4.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="../resources/img/company/g4.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">안녕 내가 누군지아니?</h3>
							</div>
						</div>
					</div>
					<div id="change_class" class="col-md-4">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="../resources/img/company/g5.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="../resources/img/company/g5.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">안녕 내가 누군지아니?</h3>
							</div>
						</div>
					</div>
					<div id="change_class" class="col-md-4">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="../resources/img/company/g6.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="../resources/img/company/g6.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">안녕 내가 누군지아니?</h3>
							</div>
						</div>
					</div>
					<div id="change_class" class="col-md-4">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="../resources/img/company/g7.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="../resources/img/company/g7.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">안녕 내가 누군지아니?</h3>
							</div>
						</div>
					</div>
					<div id="change_class" class="col-md-4">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="../resources/img/company/g8.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="../resources/img/company/g8.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">안녕 내가 누군지아니?</h3>
							</div>
						</div>
					</div>
					<div id="change_class" class="col-md-4">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="../resources/img/company/g9.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="../resources/img/company/g9.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">안녕 내가 누군지아니?</h3>
							</div>
						</div>
					</div>
					<div id="change_class" class="col-md-4">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="../resources/img/company/g10.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="../resources/img/company/g10.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">안녕 내가 누군지아니?</h3>
							</div>
						</div>
					</div>
					<div id="change_class" class="col-md-4">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="../resources/img/company/g11.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="../resources/img/company/g11.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">안녕 내가 누군지아니?</h3>
							</div>
						</div>
					</div>
					<div id="change_class" class="col-md-4">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="../resources/img/company/g12.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="../resources/img/company/g12.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">안녕 내가 누군지아니?</h3>
							</div>
						</div>
					</div>
					<div id="change_class" class="col-md-4">
						<div class="bg-gray">
							<div class="img-wrap">
								<a href="../resources/img/company/g13.jpg" class="img-pop-up">
									<div class="single-gallery-image">
									<img class="img-content" src="../resources/img/company/g13.jpg">
									</div>
								</a>
							</div>
							<div class="info-wrap">
								<h3 class="info-title">안녕 내가 누군지아니?</h3>
							</div>
						</div>
					</div>


				</div>
		</div>
	</section>
	<c:import url="../footer2.jsp" charEncoding="UTF-8"></c:import>
</body>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <!-- JS here -->
    <script src="../resources/js/popper.min.js"></script>
    <script src="../resources/js/ajax-form.js"></script>
    <script src="../resources/js/imagesloaded.pkgd.min.js"></script>
    <script src="../resources/js/jquery.magnific-popup.min.js"></script>

    <!--contact js-->
    <script src="../resources/js/jquery.ajaxchimp.min.js"></script>
    <script src="../resources/js/jquery.form.js"></script>
    <script src="../resources/js/jquery.validate.min.js"></script>
                 
    <script src="../resources/js/main.js"></script>
	
	<script>
	$(document).ready(function(){
		   console.log('resize called');
		   var width = $(window).width();
		   if(width >= 768 && width <= 991){
		       $('.col-md-4').removeClass('col-md-4').addClass('col-md-6');
		   }
		   else{
		       $('.col-md-6').removeClass('col-md-6').addClass('col-md-4');
		   }
		})
	
		
	
	</script>
</html>

