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
<!-- <link rel="stylesheet" href="/resources/css/responsive.css"> -->

<style>
.down{
	display: none;
}

.service-details{
	padding-top:0;
}

@media(max-width : 767.5px){
	.up{
		display:none;
	}
	.down{
		display: block;
	}
}

.col-xl-4{
	max-width:100%;
}
.nav{
	justify-content:space-between;
}
.nav-item{
	width:auto!important;
	border-bottom:none!important;
}

/* .business-name:before{
    content: "";
    display: inline-block;
    width: 2.5px;
    height: 30px;
    margin: 0 16px;
    background-color: #f36d20;
} */
.cctv-main{
	margin-bottom:3%!important;
}

.cctv-detail{
	margin-bottom:10%!important;
}
.service-details .single-details .details-info h3{
	margin-bottom:0;
}

.single-team{
    box-shadow: 0 1px 10px lightgrey;
    height:500px;
}

.cctv-kind{
	margin-bottom:10%!important;
}
.cctv-detail1{
	margin-bottom:10%!important;
}
.cctv-detail2{
	margin-bottom:2%!important;
}

</style>

</head>
<body>
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
							<p style="opacity: 0.6">
								New Vision ENG. 본사
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb-end -->
	
	<!-- service-details-start -->
    <div class="service-details">
    	<div style="background: #f8f8f8; margin-top: 25px; box-shadow: 0 0.5px 5px lightgrey;">
	    	<div class="container" style="padding:0;">
		         <div class="col-xl-4">
		             <div class="details-nav">
		                 <nav>
		                     <ul class="nav" id="myTab" role="tablist">
		                         <li class="nav-item">
		                             <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab"
		                                 aria-controls="home" aria-selected="true">CCTV</a>
		                         </li>
		                         <li class="nav-item">
		                             <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab"
		                                 aria-controls="profile" aria-selected="false">디지털 화상 녹화 전송 시스템</a>
		                         </li>
		                         <li class="nav-item">
		                             <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab"
		                                 aria-controls="contact" aria-selected="false">전자파용 특수 CCTV SYSTEM</a>
		                         </li>
		                         <li class="nav-item">
		                             <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab"
		                                 aria-controls="contact" aria-selected="false">광전송 SYSTEM</a>
		                         </li>
		                     </ul>
		                 </nav>
		             </div>
		         </div>
	    	</div>
    	</div>
        <div class="container" style="margin-top:3%;">
            <div class="row">
                    <div class="single-details">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <div class="details-wrap">
                                    <div class="details-info">
                                        <h3 style="text-align:center; font-size:35px; font-weight:500">CCTV</h3>
                                        </p>
                                    </div>
                                    <div class="cctv-main details-thumb">
                                        <img src="../resources/img/service/business2.png" alt="">
                                    </div>
                                    <div class="cctv-detail1 details-info">
                                        <h3 class="business-name" style="font-size:30px; font-weight:300;">CCTV 카메라 영상 주변기기 및 SYSTEM 설계</h3>
                                        <p style="padding-top:20px; font-size:25px; font-weight:100">
                                        	15년 경력의 보안 전문가와의 상담을 통해 맞춤형 서비스 설계와 신속,정확한 유지보수를 제공합니다.<br>
                                        	사용자의 환경을 고려한 동영상 자료를 남기기 위해 고화질, 적외선 감지 와 인공지능형 CCTV등 을 통하여<br>
                                        	니즈에 맞는 제품 선택과 설치를 진행합니다.
                                        </p>
                                    </div>
						             <div class="cctv-kind row team-area">
						                <div class="col-xl-4 col-lg-4 col-md-6">
						                    <div class="single-team">
						                        <div class="team-thumb">
						                            <img src="../resources/img/service/business.jpg" alt="">
						                            <div class="team-hover">
						                                <div class="team-link">
						                                    <ul>
						                                        <li><a href="#"> <i class="fa fa-facebook"></i> </a></li>
						                                    </ul>
						                                </div>
						                            </div>
						                        </div>
						                        <div class="team-info text-center">
						                            <h3>군사시설 CCTV</h3>
						                            <p>내용내용내욘ㄴ내용</p>
						                        </div>
						                    </div>
						                </div>
						                <div class="col-xl-4 col-lg-4 col-md-6">
						                    <div class="single-team">
						                        <div class="team-thumb">
						                            <img src="../resources/img/service/service1.jpg" alt="">
						                            <div class="team-hover">
						                                <div class="team-link">
						                                    <ul>
						                                        <li><a href="#"> <i class="fa fa-twitter"></i> </a></li>
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
						                <div class="col-xl-4 col-lg-4 col-md-6">
						                    <div class="single-team">
						                        <div class="team-thumb">
						                            <img src="../resources/img/service/service2.jpg" alt="">
						                            <div class="team-hover">
						                                <div class="team-link">
						                                    <ul>
						                                        <li><a href="#"> <i class="fa fa-linkedin"></i> </a></li>
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
						    		<div class="cctv-detail2 details-info">
                                       <h3 class="business-name" style="font-size:30px; font-weight:300;">One Total CCTV Solution</h3>
	                                </div>
	                                <div class="cctv-main details-thumb">
                                       <img src="../resources/img/company/system.png" alt="">
                                    </div>       
                                </div>
                            </div>
                            
                            
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                <div class="details-wrap">
                                    <div class="details-thumb">
                                        <img src="../resources/img/service/service-details.jpg" alt="">
                                    </div>
                                    <div class="details-info">
                                        <h3>Compatibility</h3>
                                        <p>Two midst that won't place waters likeness. Them place good. Darkness meat
                                            moved creeping whales firmament light so were from and given saying light
                                            was his fruitful two. Creature saying in was heaven appear in dominion can't
                                            sixth heaven winged lights bearing evening likeness. Above man thing. Fourth
                                            lights. That had you're stars. You subdue form days years likeness female.
                                        </p>
                                    </div>
                                    <div class="details-info">
                                        <h3>Speciality</h3>
                                        <p>Two midst that won't place waters likeness. Them place good. Darkness meat
                                            moved creeping whales firmament light so were from and given saying light
                                            was his fruitful two. Creature saying in was heaven appear in dominion can't
                                            sixth heaven winged lights bearing evening likeness. Above man thing. Fourth
                                            lights. That had you're stars. You subdue form days years likeness female.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                                <div class="details-wrap">
                                    <div class="details-thumb">
                                        <img src="../resources/img/service/service-details.jpg" alt="">
                                    </div>
                                    <div class="details-info">
                                        <h3>Compatibility</h3>
                                        <p>Two midst that won't place waters likeness. Them place good. Darkness meat
                                            moved creeping whales firmament light so were from and given saying light
                                            was his fruitful two. Creature saying in was heaven appear in dominion can't
                                            sixth heaven winged lights bearing evening likeness. Above man thing. Fourth
                                            lights. That had you're stars. You subdue form days years likeness female.
                                        </p>
                                    </div>
                                    <div class="details-info">
                                        <h3>Speciality</h3>
                                        <p>Two midst that won't place waters likeness. Them place good. Darkness meat
                                            moved creeping whales firmament light so were from and given saying light
                                            was his fruitful two. Creature saying in was heaven appear in dominion can't
                                            sixth heaven winged lights bearing evening likeness. Above man thing. Fourth
                                            lights. That had you're stars. You subdue form days years likeness female.
                                        </p>
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
		<div class="container">
		
		</div>
	</section>
	<!-- ================ contact section end ================= -->

	<c:import url="../footer.jsp" charEncoding="UTF-8"></c:import>

</body>


</html>