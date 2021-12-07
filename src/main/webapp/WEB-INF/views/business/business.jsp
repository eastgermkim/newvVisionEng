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

</style>

</head>
<body>
	<!-- header.jsp import -->
	<c:import url="../header2.jsp" charEncoding="UTF-8"></c:import>
	<script>
		addClassName1();
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
        <div class="container">
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
            <div class="row">
                <div class="col-xl-8">
                    <div class="single-details">
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <div class="details-wrap">
                                    <div class="details-thumb">
                                        <img src="img/service/service-details.jpg" alt="">
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
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                <div class="details-wrap">
                                    <div class="details-thumb">
                                        <img src="img/service/service-details.jpg" alt="">
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
                                        <img src="img/service/service-details.jpg" alt="">
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
    </div>
    <!-- service-details-end -->
	

	<!-- ================ contact section start ================= -->
	<section class="contact-section">
		<div class="container">
		
		</div>
	</section>
	<!-- ================ contact section end ================= -->

	<c:import url="../footer2.jsp" charEncoding="UTF-8"></c:import>


</body>


</html>