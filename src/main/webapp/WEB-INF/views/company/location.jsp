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

	<!-- breadcrumb-start -->
	<section class="breadcrumb breadcrumb_bg banner-bg-1 overlay2 ptb200">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 offset-lg-1">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item">
							<h2>오시는 길</h2>
							<p>
								<a href="">New Vision ENG.</a> <span></span> 본사
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb-end -->

	<!-- ================ contact section start ================= -->
	<section class="contact-section">
		<div class="container">
		
			<!-- 카카오지도 API -->
			<!-- <div class="d-sm-block mb-5 pb-4"> -->
				
				<div id="map" style="width: 100%; height: 400px;"></div>

							<script type="text/javascript"
								src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7c0a5d7cb29de3f060bed745866cd716&libraries=services">
							</script>
							<script>
								var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
								mapOption = {
									center : new kakao.maps.LatLng(37.47393288388239, 126.88532413295984), // 지도의 중심좌표
									level : 4
								// 지도의 확대 레벨
								};
			
								// 지도를 생성합니다    
								var map = new kakao.maps.Map(mapContainer, mapOption);
			
								// 주소-좌표 변환 객체를 생성합니다
								var geocoder = new kakao.maps.services.Geocoder();
			
								// 주소로 좌표를 검색합니다
								geocoder
								.addressSearch(
										'서울 금천구 가산디지털1로 88 IT프리미어타워 704',
										function(result, status) {
			
											// 정상적으로 검색이 완료됐으면 
											if (status === kakao.maps.services.Status.OK) {
			
												var coords = new kakao.maps.LatLng(
														result[0].y, result[0].x);
												
												var imageSrc = '../resources/img/nvicon_location.png', // 마커이미지의 주소입니다    
											    imageSize = new kakao.maps.Size(55.8, 82.2), // 마커이미지의 크기입니다
											    imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
											      
											// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
											var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);

			
												// 결과값으로 받은 위치를 마커로 표시합니다
												var marker = new kakao.maps.Marker(
														{
															map : map,
															position : coords,
														 	image: markerImage
														});
			
												/* // 인포윈도우로 장소에 대한 설명을 표시합니다
												var infowindow = new kakao.maps.InfoWindow(
														{
															content : '<div style="width:150px;text-align:center;padding:6px 0;">(주)뉴비젼이엔지</div>'
														});
												infowindow.open(map, marker); */
			
												// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
												map.setCenter(coords);
											}
										});
								
								// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
								var zoomControl = new kakao.maps.ZoomControl();
								map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
								
							</script>

			<!-- </div> -->

				<hr>

			<div class="row">
				<div class="col-lg-7">
					<div class="media contact-info">
						<span class="contact-info__icon"><i class="ti-home"></i></span>
						<div class="media-body">
							<h3>(08590) 서울시 금천구 가산디지털1로 88, 704-C (가산동, IT프리미어타워)</h3>
							<p>704-C, 88, Gasan digital 1-ro, Geumcheon-gu, Seoul, Republic of Korea</p>
						</div>
					</div>
					<div class="media contact-info">
						<span class="contact-info__icon"><i class="ti-tablet"></i></span>
						<div class="media-body">
							<h3>02-743-6977~8</h3>
							<p>Mon to Fri 9am ~ 6pm</p>
						</div>
					</div>
					<div class="media contact-info">
						<span class="contact-info__icon"><i class="ti-email"></i></span>
						<div class="media-body">
							<h3>nv3000@nate.com</h3>
							<p>Send us your query</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ================ contact section end ================= -->


	<c:import url="../footer2.jsp" charEncoding="UTF-8"></c:import>


</body>


</html>