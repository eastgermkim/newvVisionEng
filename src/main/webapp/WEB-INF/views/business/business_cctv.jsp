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
	
}
.system-compare .system-di{
	width: 40%;
	text-align:center;
	padding:20px 0 20px 0;
}

.system-compare tr{
	border-bottom: 0.5px solid #d9d9d9;
}
.system-compare .compare-item{
	font-size:20px;
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
								<a class="nav-link" id="tab" href="../business/business_sp">전자파용 특수 CCTV SYSTEM</a></li>
								
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
										<!-----------------------------------3Tier----------------------------------------->
										<!-- <div class="about-area section-padding">
											<div class="container">
												<div class="row align-items-center"
													style="justify-content: space-between;">
													<div class="col-xl-5 col-md-12 col-lg-6"
														style="max-width: 55%; flex: 0 0 53%;">
														<div class="section-title mb-65 p-0">
															<span>부 제목</span>
															<h3>3Tier 주 제목</h3>
															<p class="para-text">
															
															</p>
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
										</div> -->
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
																<li>
																<a id="kind-link" href="result" style="font-weight:500;">
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
													<p>
														주야간 실내/외 및 외곽 울타리 감시 경계와 보안 인증 절차를 통한 국방시설 내 출입 및 자산을 안전하게 관리합니다.또한 데이터 백업 장치와 메인 서버 이중화를 통해 시스템 안정성을 제공합니다.
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
																<li>
																<a id="kind-link" href="#" style="font-weight:500;">
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
																<li>
																<a id="kind-link" href="#" style="font-weight:500;">
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
													<p>내용내용내용내용</p>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<!------------------------------------CCTV 설계---------------------------------------------->
								<div class="cctv-detail2 details-info">
									<h3 class="business-name"
										style="font-size: 24px; font-weight: 300;">Analogue(아날로그) 방식 CCTV SYSTEM</h3>
									<p style="padding-top: 20px; font-size: 20px; font-weight: 100">
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
									<p style="padding-top: 20px; font-size: 20px; font-weight: 100">
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
							          <td class="compare-an">아날로그 카메라는 카메라 기준으로 디지털 카메라보다 비용이 적게 드는 경향이 있으며 때로는 훨씬 더 적습니다.</td>
							          <td class="compare-item">비용</td>
							          <td class="compare-di">카메라와 장비(케이블 제외)는 아날로그 제품에 비해 개별적으로 더 많은 비용이 드는 경향이 있습니다.</td>
							        </tr>
							        <tr>
							          <td class="compare-an">단순성:DVR은 대부분 설정 및 이해가 더 쉽습니다. 하나의 비용으로 하나의 장치이며 설치가 조금 더 간단합니다.</td>
							          <td class="compare-item">설치 난이도</td>
							          <td class="compare-di">복잡함:네트워크가 이미 설정되어 있고 스위치가 제자리에 있지 않은 경우, 전체적으로 필요한 케이블 수가 적더라도 CCTV 설치와 관련된 비용과 노동력이 증가할 수 있습니다.</td>
							        </tr>
							        <tr>
							          <td class="compare-an">낮은 대역폭 요구 사항 : 아날로그로 녹화된 비디오 파일은 더 작은 경향이 있으며 LAN 대신 동축 케이블을 통해 DVR로 전송되므로 전송하는 데 대역폭이 많이 필요하지 않으며 네트워크에 많은 부담을 주지 않습니다. 또한 DVR은 일반적으로 누군가가 비디오를 볼 때만 정보를 전송하고 대역폭을 사용합니다.</td>
							          <td class="compare-item">대역폭 요구사항</td>
							          <td class="compare-di">고대역폭 요구사항: IP 보안 카메라 시스템은 일반적으로 아날로그 시스템보다 훨씬 더 많은 대역폭을 필요로 합니다. 더 높은 해상도와 더 높은 프레임 속도 사이에서 압축을 하더라도 약 720Kbps를 보고 있으며 이는 메가픽셀 해상도를 가진 최신 카메라를 고려하기 전입니다. 결과적으로 비용이 증가할 수 있습니다.</td>
							        </tr>
							        <tr>
							          <td class="compare-an">카메라는 전원 공급 장치와 DVR 모두에 케이블을 통해 연결되어야 하기 때문에 비디오와 전원을 묶은 케이블을 사용하더라도 처리해야 하는 배선이 많은 경향이 있습니다. 또한 동축 케이블은 일반적으로 디지털 시스템에 사용되는 Cat 5 또는 6 케이블보다 자체적으로 더 비쌉니다.</td>
							          <td class="compare-item">케이블 연결</td>
							          <td class="compare-di">필요한 케이블 수 감소: 각 카메라에 전원을 개별적으로 연결한 다음 각 카메라를 DVR에 케이블로 연결하는 대신 디지털 시스템은 스위치에 여러 대의 카메라를 연결한 다음 스위치에 있는 모든 카메라를 단일 스위치로 NVR에 연결할 수 있습니다. 케이블.</td>
							        </tr>
							        <tr>
							          <td class="compare-an">아날로그 카메라의 이미지 품질은 상당히 낮습니다. 오늘날 대부분의 스마트폰은 더 높은 해상도를 가지고 있습니다. 결과적으로 원거리의 세부 사항은 거칠 수 있으므로 높은 신뢰도로 사건에서 잠재적인 용의자를 식별하기 어렵습니다. 게다가 디지털 줌도 없다. 아날로그 비디오에서 무언가를 확대하려고 하면 훨씬 더 흐릿하고 거친 이미지를 얻을 수 있습니다 .</td>
							          <td class="compare-item">품질</td>
							          <td class="compare-di">디지털 보안 카메라의 이미지 품질은 아날로그보다 훨씬 높으며 많은 카메라에서 고화질 비디오를 녹화하고 전송할 수 있습니다. 또한 디지털 카메라에는 100피트 이상의 줌 거리를 가질 수 있는 디지털 줌 기능이 있을 가능성이 더 큽니다.</td>
							        </tr>
							        <tr>
							          <td class="compare-an">일반적으로 아날로그 감시 카메라는 디지털 카메라보다 시야가 훨씬 좁기 때문에 필요한 영역을 처리하기 위해 더 많은 카메라가 필요할 수 있습니다.</td>
							          <td class="compare-item">적용 범위</td>
							          <td class="compare-di">단일 디지털 카메라는 아날로그 카메라 3~4개가 필요한 영역을 커버할 수 있습니다. 결과적으로 더 적은 수의 카메라가 필요하고 더 넓은 영역에서 보안 감시를 유지할 수 있습니다.</td>
							        </tr>
							        <tr>
							          <td class="compare-an">위치 제한: 아날로그 카메라는 DVR에 연결해야 하므로 이러한 카메라를 장치의 합리적인 범위 내에 유지해야 합니다. 그렇지 않으면 연결 안정성이 떨어질 위험이 있습니다. 결과적으로 카메라를 놓을 수 있는 위치가 더 제한됩니다.<br>포트 제한: DVR에는 너무 많은 포트만 있으므로 제한된 수의 카메라만 연결할 수 있습니다. 이 수를 초과하려면 두 번째 DVR을 구입해야 할 것입니다.</td>
							          <td class="compare-item">위치, 포트 제한</td>
							          <td class="compare-di">포지셔닝 또는 포트 제한: NVR에 연결하기 위해 카메라를 LAN 네트워크에 연결하기만 하면 되기 때문에 더 이상 카메라와 비디오 레코더 사이의 거리에 제한을 받지 않습니다. NVR은 소프트웨어 기반이고 포트가 없기 때문에 해당 제한도 없앨 수 있습니다.</td>
							        </tr>
							        <tr>
							          <td class="compare-an">아날로그 주파수 및 신호 강도에 관한 정부 규정으로 인해 아날로그 무선 시스템이 제대로 작동하지 않는 것이 현실입니다. 결과적으로 다른 무선 장치와 심지어 형광등도 비디오 신호를 간섭하고 왜곡할 수 있습니다.</td>
							          <td class="compare-item">무선 기능</td>
							          <td class="compare-di">디지털 보안 카메라 시스템은 무선 네트워크 내에서 매우 잘 작동합니다. 그들은 아날로그 대응물에 영향을 미치는 동일한 종류의 간섭에 취약하지 않으므로 원하는 경우 더 멀리 떨어진 위치에서 라이브 피드를 쉽게 볼 수 있습니다 .</td>
							        </tr>
							        <tr>
							          <td class="compare-an"> 아날로그 신호는 일반적으로 암호화할 수 없으므로 원치 않는 눈이 신호를 보는 것이 더 쉬울 수 있습니다.</td>
							          <td class="compare-item">암호화</td>
							          <td class="compare-di">많은 디지털 보안 카메라에는 암호화가 내장되어 있으므로 데이터가 처음부터 끝까지 더 안전합니다.</td>
							        </tr>
							        <tr>
							          <td class="compare-an">더 많은 디자인 옵션: 더 다양한 아날로그 카메라 디자인을 사용하면 필요한 모든 기능을 갖춘 카메라 모델을 더 저렴한 비용으로 더 쉽게 찾을 수 있습니다.</td>
							          <td class="compare-item">비고</td>
							          <td class="compare-di">PoE(Power over Ethernet): PoE( Power over Ethernet) 스위치를 사용하면 신호 케이블이 카메라에도 전원을 공급할 수 있으므로 추가 케이블의 필요성이 줄어듭니다.</td>
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