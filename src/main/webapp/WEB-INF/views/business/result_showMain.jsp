<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page session="true"%>

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
<!-- <link rel="stylesheet" href="/resources/css/responsive.css"> -->

<style>
.single-team {
	margin-bottom: 10%;
}

.section-title {
	margin-bottom: 7%;
}

.section-padding {
	padding-top: 100px;
	padding-bottom: 100px;
}

.team-thumb {
	transition: all 0.2s linear;
}

.team-thumb:hover {
	/* 마우스 올리면 확대효과 */
	transform: scale(1.1);
	/* 마우스 올리면 커서모양 변경 */
	cursor: pointer;
}

.imgs {
	padding-top: 3%;
}

.choiceText{ 
    position: absolute;
    opacity: 0;
    color: #f36d20;
    top: 50%;
    left: 50%;
    margin-left: -65px;
    margin-top: -145px;
    font-size: 11em;
} 
.ImgActive img{
	opacity: 0.3;
}
</style>

<style>
</style>

</head>
<body>
	<div class="team-area section-padding gray-bg">
		<div class="container">
			<div class="row align-items-center justify-content-center">
				<div class="section-title text-center">
					<span>BUSINESS RESULTS</span>
					<h3>사업실적 메인화면 등록</h3>
					<div>&lt; ${resultClass} &gt;</div>
					<div>${main_resultContnents}</div>
				</div>
			</div>
			<div class="text-center">
				<h4>메인화면에 보여줄 이미지를 선택하세요</h4>
			</div>
			<c:if test="${resultClass=='군사시설'}">
				<div class="row imgs">
					<div class="col-xl-4 col-lg-4 col-md-6">
						<div class="single-team">
							<div class="team-thumb">
								<span class = "choiceText">✓</span>
								<img
									src="/resources/img/business_result_Img/military_basic/1.jpg"
									alt="">

								<!--  <div class="team-hover">
                                <div class="team-link">
                                    <ul>
                                        <li><a href="#"> <i class="fa fa-facebook"></i> </a></li>
                                        <li><a href="#"> <i class="fa fa-twitter"></i> </a></li>
                                        <li><a href="#"> <i class="fa fa-linkedin"></i> </a></li>
                                    </ul>
                                </div>
                            </div> -->
							</div>
							<!--  <div class="team-info text-center">
                            <h3>Kamal Dowlat</h3>
                            <p>Industrial engineer</p>
                        </div> -->
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6">
						<div class="single-team">
							<div class="team-thumb">
								<span class = "choiceText">✓</span>
								<img
									src="/resources/img/business_result_Img/military_basic/2.jpg"
									alt="">
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6">
						<div class="single-team">
							<div class="team-thumb">
								<span class = "choiceText">✓</span>
								<img
									src="/resources/img/business_result_Img/military_basic/4.jpg"
									alt="">
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6">
						<div class="single-team">
							<div class="team-thumb">
								<span class = "choiceText">✓</span>
								<img
									src="/resources/img/business_result_Img/military_basic/3.jpg"
									alt="">
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6">
						<div class="single-team">
							<div class="team-thumb">
								<span class = "choiceText">✓</span>
								<img
									src="/resources/img/business_result_Img/military_basic/5.jpg"
									alt="">
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-6">
						<div class="single-team">
							<div class="team-thumb">
								<span class = "choiceText">✓</span>
								<img
									src="/resources/img/business_result_Img/military_basic/7.jpg"
									alt="">
							</div>
						</div>
					</div>

				</div>
			</c:if>
		</div>
	</div>
</body>
 <!-- JS here -->
    <script src="/resources/js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="/resources/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="/resources/js/popper.min.js"></script>
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/owl.carousel.min.js"></script>
    <script src="/resources/js/isotope.pkgd.min.js"></script>
    <script src="/resources/js/ajax-form.js"></script>
    <script src="/resources/js/waypoints.min.js"></script>
    <script src="/resources/js/jquery.counterup.min.js"></script>
    <script src="/resources/js/imagesloaded.pkgd.min.js"></script>
    <script src="/resources/js/scrollIt.js"></script>
    <script src="/resources/js/jquery.scrollUp.min.js"></script>
    <script src="/resources/js/wow.min.js"></script>
    <script src="/resources/js/nice-select.min.js"></script>
    <script src="/resources/js/jquery.slicknav.min.js"></script>
    <script src="/resources/js/jquery.magnific-popup.min.js"></script>
    <script src="/resources/js/plugins.js"></script>

    <!--contact js -->
    <script src="/resources/js/jquery.ajaxchimp.min.js"></script>
    <script src="/resources/js/jquery.form.js"></script>
    <script src="/resources/js/jquery.validate.min.js"></script>
    <script src="/resources/js/mail-script.js"></script>
                 
    <script src="/resources/js/main.js"></script>
    
    <!-- aos --> 
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script> 
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script> 
    
<script>
	$('.team-thumb').click(function(){
		
		if ($(this).hasClass("ImgActive")) {
			// active class 제거
			$(this).removeClass("ImgActive");
			$(this).children('.choiceText').css("opacity","0");
		} else {
			//다른 active들 삭제
			$(".ImgActive").children('.choiceText').css("opacity","0");
			$(".ImgActive").removeClass("ImgActive");
			// active class 추가
			$(this).addClass("ImgActive");
			$(this).children('.choiceText').css("opacity","1");
		}
	});
</script>



</html>