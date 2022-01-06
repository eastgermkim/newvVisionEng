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

.video-caution{
    background: rgba(0,0,0,0.35);
    text-align: center;
    width: 100%;
    height: 200px;
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
								<a class="nav-link" id="tab" href="../business/business_com">정보통신공사</a></li>
								
								<li class="nav-item">
								<a class="nav-link" id="tab" href="../business/business_sp">전자파용 특수 CCTV SYSTEM</a></li>
								
								<li class="nav-item">
								<a class="nav-link active show" id="tab" href="../business/business_army">군사시설 CCTV SYSTEM</a></li>
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

						<!---------------------------------광전송 SYSTEM------------------------------------>
						<div class="tab-pane fade show active" id="business4" role="tabpanel"
							aria-labelledby="contact-tab">
							<div class="details-wrap">
								<div class="details-info">
									<h3 class="main-title">군사시설 CCTV SYSTEM</h3>
									<div class="cctv-detail1 details-info">
										<h3 class="business-name" style="font-size: 24px; font-weight: 300;">군사시설 CCTV SYSTEM</h3>
										<p style="padding-top: 20px; font-size: 20px; font-weight: 100">내용내용</p>
									</div>
									<video class="video" id="video" src="/resources/video/army_ani.mp4" style="width:100%;" muted="muted"></video>
									
									<div class="video-caution">
										<h3 class="video-caution-text">클릭시 재생이 정지 됩니다.</h3>
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
		
		//army_ani와 caution 둘 다 지정하지 않으면 caution이 깜빡거림
		$('#video, .video-caution').click(function(){
			//army_ani 끝으로 이동해서
            $('#video').get(0).currentTime = 39;
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