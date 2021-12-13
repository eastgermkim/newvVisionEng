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
.result_container {
	display: flex;
	margin-bottom: 1%;
	border-bottom: 1px solid #eee;
}

.resultContent {
	padding: 10px;
}
</style>

</head>
<body>
	<!-- header.jsp import -->
	<c:import url="../header.jsp" charEncoding="UTF-8"></c:import>
	<script>
		addClassName3();
	</script>

	<!-- breadcrumb-start -->
	<section class="breadcrumb breadcrumb_bg banner-bg-1 overlay2 ptb200">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 offset-lg-1">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item">
							<h2>사업실적</h2>
							<p style="opacity: 0.6">New Vision ENG. 본사</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb-end -->

	<!-- service-details-start -->
	<div class="service-details" style="padding-top: 70px;">
		<div class="container">
			<div class="row">
				<div class="col-xl-4">
					<div class="details-nav" style="position: sticky;top: 10%;">
						<nav>
							<ul class="nav" id="myTab" role="tablist">
								<li><div style="color: grey;font-size:large;margin: 2%;font-weight: 300;">Client</div></li>
								<li class="nav-item"><a class="nav-link active show"
									id="home-tab" data-toggle="tab" href="#home" role="tab"
									aria-controls="home" aria-selected="true"
									style="font-size: x-large;margin-left: 2%;">군사시설</a></li>
								<li class="nav-item"><a class="nav-link" id="profile-tab"
									data-toggle="tab" href="#profile" role="tab"
									aria-controls="profile" aria-selected="false"
									style="font-size: x-large;margin-left: 2%;">공공기관</a></li>
								<li class="nav-item"><a class="nav-link" id="contact-tab"
									data-toggle="tab" href="#contact" role="tab"
									aria-controls="contact" aria-selected="false"
									style="font-size: x-large;margin-left: 2%;">민간기업</a></li>
							</ul>
						</nav>
					</div>
				</div>
				<div class="col-xl-8">
					<div class="single-details">
						<div class="tab-content" id="myTabContent">
							<div class="tab-pane fade active show" id="home" role="tabpanel"
								aria-labelledby="home-tab">
								<div class="details-wrap">
									<div class="details-thumb">
                                        <img src="../resources/img/service/business.jpg" alt="">
                                    </div>
									<div class="details-info">
										<div><h2 style="margin: 3.5% 0 0 1%;">주요 실적현황</h2><hr></div>
										<div class="result_container">
											<div class="resultContent">1기갑여단CCTV 설치공사, 수도방위사령부 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">가납리 비행장 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">6군단사령부 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">공군 제15비행단 CCTV 유지보수</div>
										</div>
										<div class="result_container">
											<div class="resultContent">탄약고 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">양주 0000부대 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">양양 0000부대 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">화천 00사단 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">철원 0000부대 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">육군훈련소 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">781 통신 경계용 CCT 설치납품</div>
										</div>
										<div class="result_container">
											<div class="resultContent">군단사령부 경계용 CCTV 설치납품</div>
										</div>
										<div class="result_container">
											<div class="resultContent">제5378부대 CCTV SYSTEM 유지보수.</div>
										</div>
										<div class="result_container">
											<div class="resultContent">서울환경전광판감시, 육군 5378부대 CCTV SYSTEM 유지보수 용역</div>
										</div>
										<div class="result_container">
											<div class="resultContent">진해해군관사 APT CCTV 설치공사.</div>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane fade" id="profile" role="tabpanel"
								aria-labelledby="profile-tab">
								<div class="details-wrap">
									<div class="details-thumb">
										<img src="../resources/img/service/service1.jpg" alt="">
									</div>
									<div class="details-info">
										<div><h2 style="margin: 3.5% 0 0 1%;">주요 실적현황</h2><hr></div>
										<div class="result_container">
											<div class="resultContent">1기갑여단CCTV 설치공사, 수도방위사령부 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">가납리 비행장 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">6군단사령부 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">공군 제15비행단 CCTV 유지보수</div>
										</div>
										<div class="result_container">
											<div class="resultContent">탄약고 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">양주 0000부대 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">양양 0000부대 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">화천 00사단 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">철원 0000부대 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">육군훈련소 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">781 통신 경계용 CCT 설치납품</div>
										</div>
										<div class="result_container">
											<div class="resultContent">군단사령부 경계용 CCTV 설치납품</div>
										</div>
										<div class="result_container">
											<div class="resultContent">제5378부대 CCTV SYSTEM 유지보수.</div>
										</div>
										<div class="result_container">
											<div class="resultContent">서울환경전광판감시, 육군 5378부대 CCTV SYSTEM 유지보수 용역</div>
										</div>
										<div class="result_container">
											<div class="resultContent">진해해군관사 APT CCTV 설치공사.</div>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane fade" id="contact" role="tabpanel"
								aria-labelledby="contact-tab">
								<div class="details-wrap">
									<div class="details-thumb">
										<img src="../resources/img/service/service2.jpg" alt="">
									</div>
									<div class="details-info">
										<div><h2 style="margin: 3.5% 0 0 1%;">주요 실적현황</h2><hr></div>
										<div class="result_container">
											<div class="resultContent">1기갑여단CCTV 설치공사, 수도방위사령부 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">가납리 비행장 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">6군단사령부 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">공군 제15비행단 CCTV 유지보수</div>
										</div>
										<div class="result_container">
											<div class="resultContent">탄약고 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">양주 0000부대 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">양양 0000부대 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">화천 00사단 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">철원 0000부대 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">육군훈련소 CCTV 설치공사</div>
										</div>
										<div class="result_container">
											<div class="resultContent">781 통신 경계용 CCT 설치납품</div>
										</div>
										<div class="result_container">
											<div class="resultContent">군단사령부 경계용 CCTV 설치납품</div>
										</div>
										<div class="result_container">
											<div class="resultContent">제5378부대 CCTV SYSTEM 유지보수.</div>
										</div>
										<div class="result_container">
											<div class="resultContent">서울환경전광판감시, 육군 5378부대 CCTV SYSTEM 유지보수 용역</div>
										</div>
										<div class="result_container">
											<div class="resultContent">진해해군관사 APT CCTV 설치공사.</div>
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


	<c:import url="../footer.jsp" charEncoding="UTF-8"></c:import>

</body>


</html>