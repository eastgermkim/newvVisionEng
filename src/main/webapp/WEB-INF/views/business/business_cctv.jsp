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
.col-xl-4 {
	max-width: 100%;
}

.row{
	margin-left:0px;
	margin-right:0px;
}

.service-details {
	padding-top: 0;
	padding-bottom: 0;
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

.nav {
	justify-content: space-between;
}

.nav-item {
	width: auto !important;
	border-bottom: none !important;
}

.business-name {
	margin-top: 15%;
	margin-bottom: 5%!importnat;
	color: #f36d20 !important;
	font-weight: 600 !important;
}

.cctv-main {
	margin-bottom: 3% !important;
}

.cctv-detail {
	margin-bottom: 10% !important;
}


.single-team {
	box-shadow: 0 1px 10px lightgrey;
}

.team-area .single-team .team-info p{
	padding:5% 3% 5% 3%;
	height:100px;
}

.team-area .single-team .team-thumb  .bg-img{
	height:250px;
	object-fit:cover;
}

.cctv-kind {
	margin-bottom: 10% !important;
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

#kind-link-icon-on{
	width: 25%;
	position:absolute;
 	top: 10%;
    left: 50%;
    transform: translate(-50%, -50%);
}
#kind-link-icon-off{
	width: 25%;
	position:absolute;
 	top: 10%;
    left: 50%;
    transform: translate(-50%, -50%);
}


#kind-link > #kind-link-icon-on {
opacity: 0;
transition: opacity 0.5s
}

#kind-link:hover > #kind-link-icon-on {
opacity: 1;
}

.system-compare{
	width:100%;
	margin-top:10%;
}

.system-compare .system-an{
	width: 40%;
	text-align:center;
	padding:20px 0 20px 0;
	font-size:20px;
	
}
.system-compare .system-di{
	width: 40%;
	text-align:center;
	padding:20px 0 20px 0;
	font-size:20px;
}

.system-compare tr{
	border-bottom: 0.5px solid #d9d9d9;
}
.system-compare .compare-item{
	font-size:18px;
	font-weight:500;
	text-align:center;
	padding:20px 0 20px 0;
}
.system-compare .compare-an{
	text-align:center;
	padding:20px 0 20px 0;
}
.system-compare .compare-di{
	text-align:center;
	padding:20px 0 20px 0;
}

.compare-winner{
	color:#f36d20;
	font-size:1.25rem;
}

@media ( max-width : 767px) {
	.nav{
	display:block;
	}
	.nav-item{
	border-bottom:1px solid;
	}
	
	.single-team{
	width:100%;
	}
	
	.cctv-kind{
	margin-right:0px;
	margin-left:0px;
	}
	.cctv-kind .col-xl-4{
	padding-right:0px;
	padding-left:0px;
	}
	
	.service-details .details-nav ul li a{
	padding:10px 0;
	}
}

</style>
<style>
.BusinessOutlineTop {
    font-size: 0;
    line-height: 0;
    text-align: center;
}
.BusinessOutlineTop-title {
    display: inline-block;
    margin-right: 20px;
    color: #000;
    font-size: 36px;
    font-weight: 600;
    line-height: 1.2em;
}
.BusinessOutlineTop-sub {
    display: inline-block;
    margin-top: 8px;
    color: #000;
    font-size: 18px;
    line-height: 1.4em;
}
body .mb20 {
    margin-bottom: 20px;
}
.BusinessOutlineBtm-title {
    display: block;
}
.BusinessOutlineBtm-title {
    color: #F37321;
    font-size: 28px;
    font-weight: 600;
    line-height: 1.4em;
}
body .mb15 {
    margin-bottom: 15px;
}
@media screen and (max-width: 1440px) and (min-width: 1025px){
	.BusinessOutlineTop-title {
	    margin-right: 16px;
	    font-size: 32px;
	}
	.BusinessOutlineTop-sub {
	    margin-top: 8px;
	    font-size: 17px;
	}
	.BusinessOutlineBtm {
	    margin: 25px -30px 0;
	}
	.BusinessOutlineBtm-item {
	    padding: 0 30px;
	}
	body .mb20 {
	    margin-bottom: 20px;
	}
	.BusinessOutlineBtm-title {
	    font-size: 24px;
	}
	.BusinessOutlineBtm-text {
	    font-size: 16px;
	}
	body .mb15 {
	    margin-bottom: 15px;
	}
	
}
@media screen and (max-width: 1024px) and (min-width: 768px){
	.BusinessOutlineTop-title {
	    margin-right: 10px;
	    font-size: 24px;
	}
	.BusinessOutlineTop-sub {
	    margin-top: 8px;
	    font-size: 16px;
	}
	.BusinessOutlineBtm {
	    margin: 16px -15px 0;
	}
	.BusinessOutlineBtm-item {
	    padding: 0 15px;
	}
	body .mb20 {
	    margin-bottom: 20px;
	}
	.BusinessOutlineBtm-title {
	    font-size: 18px;
	}
	.BusinessOutlineBtm-text {
	    font-size: 14px;
	}
	body .mb15 {
	    margin-bottom: 15px;
	}
}
@media screen and (max-width: 767px) and (min-width: 1px){
	.BusinessOutlineTop-title {
   		display: block;
	    margin-right: 0;
	    font-size: 18px;
	}
	.BusinessOutlineTop-sub {
	    display: block;
	    margin-top: 6px;
	    font-size: 14px;
	}
	.BusinessOutlineBtm {
	    margin: 0;
	}
	.BusinessOutlineBtm-item {
	    width: 100%;
	    float: none;
	    padding: 15px 0 0;
	}
	body .mb20 {
	    margin-bottom: 20px;
	}	
	.BusinessOutlineBtm-title {
	    font-size: 16px;
	}
	.BusinessOutlineBtm-text {
	    font-size: 14px;
	}
	body .mb15 {
	    margin-bottom: 15px;
	}
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
								<a class="nav-link" id="tab" href="../business/business_army">군사시설 CCTV SYSTEM</a></li>
								
								<li class="nav-item">
								<a class="nav-link" id="tab" href="../business/business_sp">전자파용 CCTV SYSTEM</a></li>
								
								<li class="nav-item">
								<a class="nav-link" id="tab" href="../business/business_com">정보통신공사</a></li>
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
								<div class="details-info">
									<div class="BusinessOutlineTop">
										<h4 class="BusinessOutlineTop-title">CCTV 설치</h4>
			
									</div>
									<div class="BusinessOutlineBtm">
										<div class="BusinessOutlineBtm-item">
											<span class="BusinessOutlineBtm-title mb20" style="margin-top:5%;">Expert's Total Solution</span>
											<p
												style="font-size: 16px; font-weight: 400">
												15년 경력의 보안 전문가와의 상담을 통해 맞춤형 서비스 설계와 신속,정확한 유지보수를 제공합니다.<br>
												사용자의 환경을 고려한 동영상 자료를 남기기 위해 고화질, 적외선 감지 와 인공지능형 CCTV등 을 통하여
												니즈에 맞는 제품 선택과 설치를 진행합니다.
											</p>
			
										</div>
									</div>
									<div data-aos="fade-up" data-aos-offset="200"
										data-aos-duration="1000">
									<div class="cctv-kind row team-area">
										<div class="col-xl-4 col-lg-4 col-md-6" data-aos="fade-up"
											data-aos-offset="100" 
											data-aos-duration="1000">
											<div class="single-team">
												<div class="team-thumb">
													<img class="bg-img" src="/resources/img/business/business.jpg" alt="">
													<div class="team-hover">
														<div class="team-link">
															<ul>
																<li>
																<a id="kind-link" href="result?tab=military" style="font-weight:500;">
																	<img id="kind-link-icon-off" src="/resources/img/icon/military-off.png">
																	<img id="kind-link-icon-on" src="/resources/img/icon/military-on.png">
																<br><br>
																군사시설 사업실적 확인하기
																</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="team-info text-center">
													<h3>군사시설 CCTV</h3>
													<p> 실내/외 및 외곽 울타리 감시 경계와 보안 인증 절차를 통한 출입 및 자산을 안전하게 관리합니다.</p>
												</div>
											</div>
										</div>
										<div class="col-xl-4 col-lg-4 col-md-6" data-aos="fade-up"
											data-aos-offset="100" 
											data-aos-delay="300" data-aos-duration="1000">
											<div class="single-team">
												<div class="team-thumb">
													<img class="bg-img" src="/resources/img/business/service1.jpg" alt="">
													<div class="team-hover">
														<div class="team-link">
															<ul>
																<li>
																<a id="kind-link" href="result?tab=publicOrg" style="font-weight:500;">
																<img id="kind-link-icon-off" src="/resources/img/icon/public-off.png">
																<img id="kind-link-icon-on" src="/resources/img/icon/public-on.png">
																<br><br>
																공공기관 사업실적 확인하기
																</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="team-info text-center">
													<h3>공공기관 CCTV</h3>
													<p>고화질의 영상을 통한 인식 및 감지를 통하여 정부 공공시설의 안전과 내부 자료 유출을 방지합니다.</p>
												</div>
											</div>
										</div>
										<div class="col-xl-4 col-lg-4 col-md-6" data-aos="fade-up"
											data-aos-offset="100" 
											data-aos-delay="600" data-aos-duration="1000">
											<div class="single-team">
												<div class="team-thumb">
													<img class="bg-img" src="/resources/img/business/service2.jpg" alt="">
													<div class="team-hover">
														<div class="team-link">
															<ul>
																<li>
																<a id="kind-link" href="result?tab=privateCorp" style="font-weight:500;">
																<img id="kind-link-icon-off" src="/resources/img/icon/private-off.png">
																<img id="kind-link-icon-on" src="/resources/img/icon/private-on.png">
																<br><br>
																민간시설 사업실적 확인하기
																</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
												<div class="team-info text-center">
													<h3>민간시설 CCTV</h3>
													<p>24시간 작동하는 CCTV로 시설에서 일어날 수 있는 각종 사회범죄로부터 보호할 수 있습니다.</p>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<!------------------------------------CCTV 설계---------------------------------------------->
								<div class="cctv-detail2 details-info">
									<h3 class="business-name"
										style="font-size: 24px; font-weight: 300;">Analogue(아날로그) 방식 CCTV SYSTEM</h3>
									<p style="padding-top: 20px; font-size: 16px; font-weight: 400">
										CCTV에서 이미지를 캡처해 포착한 빛을 디지털화 하고 동 축 케이블을 통해 신호를 DVR(Digital Video Recorder, 녹화장치)로 보냅니다. <br>
										DVR에서 비디오를 아날로그에서 디지털 신호로 변환하고 파일을 압축하여 HDD(하드 드라이브)또는 NAS(저장장치)에 저장합니다. <br>
										특정 모니터와 DVR을 연결해 확인하거나 라우터 및 모뎀에 연결하여 내부 네트워크를 통해 모바일 기기로 확인할 수 있습니다.
									</p>
								</div>
								<div class="cctv-main details-thumb" data-aos="fade-up"
									data-aos-offset="200" 
									data-aos-duration="1000"
									data-aos-once="true">
									<img src="/resources/img/business/cctv_test1.png" alt="">
								</div>
								<div class="cctv-detail2 details-info">
									<h3 class="business-name"
										style="font-size: 24px; font-weight: 300;">Digital(디지털) 방식 CCTV SYSTEM</h3>
									<p style="padding-top: 20px; font-size: 16px; font-weight: 400">
										각  IP카메라는 자체적으로 움직이며  움직임 감지와 같은 고급 기능을 수행하며 디지털 방식으로 녹화, IP를 통한 데이터 전송을 수행합니다.<br>
										 기존의 Analogue방식과 비디오 서버를 연결하여 Digital방식으로 전환할 수 있으며  DVR 대신 VMS 또는 NVR을 사용합니다.<br>
										 VMS 와 NVR를 나누어 관제실과 모니터실을 별도로 설계할 수 있고 네트워크를 통한 모바일 기기확인도 할 수 있습니다. 
									</p>
								</div>
								<div class="cctv-main details-thumb" data-aos="fade-up"
									data-aos-offset="200" 
									data-aos-duration="1000"
									data-aos-once="true">
									<img src="/resources/img/business/cctv_test2.png" alt="">
								</div>
								<!-- <div class="cctv-detail2 details-info">
									<h3 class="business-name"
										style="font-size: 24px; font-weight: 300;">CCTV 설치 및 설계 예시</h3>
								</div>
								<div class="cctv-main details-thumb" data-aos="fade-up"
									data-aos-offset="200" 
									data-aos-duration="1000"
									data-aos-once="true">
									<img src="/resources/img/business/system_white.png" alt="">
								</div> -->
								 <table class="system-compare">
							      <thead>
							        <tr style="font-size:24px; border-bottom:1.5px solid #404040;">
							          <th class="system-an">Analogue CCTV SYSTEM</th>
							          <th class="system-item"></th>
							          <th class="system-di">Digital CCTV SYSTEM</th>
							        </tr>
							      </thead>
							      <tbody>
							        <tr>
							          <td class="compare-an"><strong class="compare-winner">비교적 낮음</strong><br><br>아날로그 CCTV SYSTEM은 카메라 기준으로<br> 디지털 카메라보다 비용이 적게 들 수 있습니다.</td>
							          <td class="compare-item">비용</td>
							          <td class="compare-di"><strong>비교적 높음</strong><br><br>카메라와 장비(케이블 제외)는 아날로그 제품에 비해<br> 개별적으로 더 많은 비용이 들 수 있습니다.</td>
							        </tr>
							        <tr>
							          <td class="compare-an"><strong class="compare-winner">단순함</strong><br><br>대부분의 DVR은 설정 및 이해가 쉽습니다.<br>개별 장치에 대한 개별 비용으로 설치가 간단합니다.</td>
							          <td class="compare-item">설치 난이도</td>
							          <td class="compare-di"><strong>복잡함</strong><br><br>기존 네트워크가 있고 스위치(PoE)가 별도 장소가 필요할 경우,<br>전체적으로 필요한 케이블 수가 적더라도 비용이 증가할 수 있습니다.</td>
							        </tr>
							        <tr>
							          <td class="compare-an"><strong class="compare-winner">낮은 대역폭</strong><br><br>아날로그 녹화 파일은 용량이 작아 LAN 대신 동축 케이블로 DVR에 전송되므로 필요 대역폭이 적으며  네트워크에 부담을 주지 않습니다.</td>
							          <td class="compare-item">대역폭</td>
							          <td class="compare-di"><strong>높은 대역폭</strong><br><br>IP카메라는 더 많은 대역폭을 필요로 하며 고 해상도,<br>고 프레임은 압축 하더라도 한계가 있을 수 있습니다.</td>
							        </tr>
							        <tr>
							          <td class="compare-an"><strong>필요 케이블 수 증가</strong><br><br>카메라는 전원 공급 장치와 DVR 모두에 케이블이 연결되어야 하기 때문에 비디오와 전원을 묶은 케이블을 사용하더라도 처리해야 하는 배선이 많을 수 있습니다. 또한 동축 케이블은 일반적으로 디지털 시스템에 사용되는 Cat 5 또는 6 케이블보다 더 비쌀 수 있습니다.</td>
							          <td class="compare-item">케이블 연결</td>
							          <td class="compare-di"><strong class="compare-winner">필요 케이블 수 감소</strong><br><br>디지털 시스템은 스위치에 여러 대의 카메라를 연결한 다음 스위치에 있는 모든 카메라를 단일 스위치로 NVR에 연결할 수 있습니다.</td>
							        </tr>
							        <tr>
							          <td class="compare-an"><strong>비교적 낮은 품질</strong><br><br>아날로그 카메라의 비디오 품질이 비교적 낮을 수 있습니다. 디지털 줌을 제공하지 않아 아날로그 비디오에서 무언가를 확대하려고 하면 훨씬 더 흐릿하고 거친 이미지를 얻을 수 있습니다 .</td>
							          <td class="compare-item">품질</td>
							          <td class="compare-di"><strong class="compare-winner">비교적 높은 품질</strong><br><br>디지털 보안 카메라의 비디오 품질은 많은 카메라에서 고화질 비디오를 녹화하고 전송할 수 있습니다. 또한 높은 줌 허용반경을 가지는 카메라를 설치 할 수 있습니다.</td>
							        </tr>
							        <tr>
							          <td class="compare-an"><strong>좁은 범위</strong><br><br>아날로그 감시 카메라는 시야가 훨씬 좁기 때문에 필요한 영역을 처리하기 위해 더 많은 카메라가 필요할 수 있습니다.</td>
							          <td class="compare-item">적용 범위</td>
							          <td class="compare-di"><strong class="compare-winner">넓은 범위</strong><br><br>단일 디지털 카메라는 아날로그 카메라 3~4개가 필요한 영역을 커버할 수 있습니다. 더 적은 수의 카메라가 필요하고 더 넓은 영역에서 보안 감시를 유지할 수 있습니다.</td>
							        </tr>
							        <tr>
							          <td class="compare-an"><strong>제한적</strong><br><br>DVR에 연결해야 하므로 허용 범위 내에 있어야 합니다.<br>DVR의 포트 수만큼의 제한된 수의 카메라만 연결할 수 있습니다.</td>
							          <td class="compare-item">위치&포트</td>
							          <td class="compare-di"><strong class="compare-winner">자율적</strong><br><br>NVR, 카메라를 LAN네트워크 연결해 위치 제한을 받지 않습니다.<br> NVR은 소프트웨어 기반이기 때문에 포트의 제한이 없습니다.</td>
							        </tr>
							        <tr>
							          <td class="compare-an"><strong>약함</strong><br><br>아날로그 신호는 일반적으로 암호화할 수 없습니다.</td>
							          <td class="compare-item">보안성</td>
							          <td class="compare-di"><strong class="compare-winner">강함</strong><br><br>많은 디지털 보안 카메라에는 암호화가 내장되어 있으므로 데이터가 처음부터 끝까지 더 안전합니다.</td>
							        </tr>
							        <tr>
							          <td class="compare-an"> — </td>
							          <td class="compare-item">비고</td>
							          <td class="compare-di">PoE( Power over Ethernet) 스위치를 사용하면 신호 케이블이 카메라에도 전원을 공급할 수 있으므로 추가 케이블의 필요성 감소</td>
							        </tr>
							      </tbody>
							    </table>
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
		
/*  		$('#cctv-army').hover(function(){
			$('#cctv-army-icon').fadeIn(500);
			$('#cctv-army-icon').attr("src","/resources/img/icon/military-off.png");
		}); */
		
		 /* $('#cctv-army').hover(function(){
			$('#cctv-army-icon').attr("src","/resources/img/icon/military-on.png");
		},function(){
			$('#cctv-army-icon').attr("src","/resources/img/icon/military-off.png");
		}); */
	</script>
</body>


</html>