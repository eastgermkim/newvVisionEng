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

<style>
.genric-btn.primary{
	border: none;
	background : #fff;
	color: #020C26;
}

.genric-btn.primary:hover {
	border: none;
	background : #fff;
	color: #020C26!important;
}

.history_container {
	display: flex;
	margin-bottom: 3.5%;
	border-bottom: 1px solid #eee;
}

.history_year {
	padding-top: 5px; margin-right : 5%;
	font-size: 30px;
	color: #f36d20;
	margin-right: 5%;
}

.history_table {
	width: 100%;
	margin-bottom: 3.5%;
}

.history_month {
	width: 8em;
	padding: 10px 10px 10px 0;
	font-weight: 300;
}

.history_contents {
	padding: 10px;
	font-weight: 300;
}
</style>

</head>
<body>
	<!-- header.jsp import -->
	<c:import url="../header.jsp" charEncoding="UTF-8"></c:import>
	<script>
		addClassName1();
	</script>
	<section class="breadcrumb breadcrumb_bg banner-bg-1 overlay2 ptb200">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 offset-lg-1">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item">
							<h2>연혁</h2>
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
			<h3 class="text-heading">History</h3>
			<p class="smple-text">내용을 입력해주세요.내용을 입력해주세요.내용을 입력해주세요. 내용을
				입력해주세요.내용을 입력해주세요.내용을 입력해주세요.내용을 입력해주세요.내용을 입력해주세요.
			<p>
		</div>
	</section>

	<div class="year_buttons" style="text-align: center;">
		<button class="genric-btn primary" id="after" style="font-size:1.5em;">2022 - 2010</button>
		<button class="genric-btn primary" id="before" style="font-size:1.5em;">2009 - 1996</button>
	</div>
	<br>
	<br>
	<br>
	<br>
	<section class="history_after_2010">
		<div class="container">
			<div class="history_container">
				<h3 class="history_year">2020</h3>
				<div class="history_table">
					<table>
						<colgroup>
							<col style="width: 10%">
							<col style="width: 95%;">
						</colgroup>
						<tbody>
							<tr>
								<td class="history_month">O월</td>
								<td class="history_contents">IDIS ㈜아이디스SI협력파트너 체결</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="history_container">
				<h3 class="history_year">2019</h3>
				<div class="history_table">
					<table>
						<colgroup>
							<col style="width: 10%">
							<col style="width: 95%;">
						</colgroup>
						<tbody>
							<tr>
								<td class="history_month">O월</td>
								<td class="history_contents">1기갑여단CCTV 설치공사, 수도방위사령부 CCTV
									설치공사</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="history_container">
				<h3 class="history_year">2018</h3>
				<div class="history_table">
					<table>
						<colgroup>
							<col style="width: 10%">
							<col style="width: 95%;">
						</colgroup>
						<tbody>
							<tr>
								<td class="history_month">O월</td>
								<td class="history_contents">6군단사령부, 가납리 공군비행징외 CCTV 설치공사</td>
							</tr>
							<tr>
								<td class="history_month">O월</td>
								<td class="history_contents">서울공항 CCTV 유지보수</td>
							</tr>
							<tr>
								<td class="history_month">O월</td>
								<td class="history_contents">이테크건설 (주)UNID U1-PROJECT</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>


			<div class="history_container">
				<h3 class="history_year">2017</h3>
				<div class="history_table">
					<table>
						<colgroup>
							<col style="width: 10%">
							<col style="width: 95%;">
						</colgroup>
						<tbody>
							<tr>
								<td class="history_month">3월</td>
								<td class="history_contents">과학화 경계시스템 방산교육</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="history_container">
				<h3 class="history_year">2015</h3>
				<div class="history_table">
					<table>
						<colgroup>
							<col style="width: 10%">
							<col style="width: 95%;">
						</colgroup>
						<tbody>
							<tr>
								<td class="history_month">6월</td>
								<td class="history_contents">15년도 과학화 경계 시스템 방산교육</td>
							</tr>
							<tr>
								<td class="history_month">O월</td>
								<td class="history_contents">경계용 CCTV 설치공사</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="history_container">
				<h3 class="history_year">2013</h3>
				<div class="history_table">
					<table>
						<colgroup>
							<col style="width: 10%">
							<col style="width: 95%;">
						</colgroup>
						<tbody>
							<tr>
								<td class="history_month">12월</td>
								<td class="history_contents">환경감시CCTV 및 육군 5378부대 CCTV
									SYSTEM 유지보수 운용</td>
							</tr>
							<tr>
								<td class="history_month">6월</td>
								<td class="history_contents">13년도 과학화 경계 시스템 방산교육</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="history_container">
				<h3 class="history_year">2012</h3>
				<div class="history_table">
					<table>
						<colgroup>
							<col style="width: 10%">
							<col style="width: 95%;">
						</colgroup>
						<tbody>
							<tr>
								<td class="history_month">9월</td>
								<td class="history_contents">대표이사 김기홍에서 전대순으로 변경</td>
							</tr>
							<tr>
								<td class="history_month">5월</td>
								<td class="history_contents">LG전자(주) 업체등록</td>
							</tr>
							<tr>
								<td class="history_month">3월</td>
								<td class="history_contents">G50 핵안보 정상회의 협력업체</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			
			<div class="history_container"  style="border-bottom:none!important;">
				<h3 class="history_year">2010</h3>
				<div class="history_table">
					<table>
						<colgroup>
							<col style="width: 10%">
							<col style="width: 95%;">
						</colgroup>
						<tbody>
							<tr>
								<td class="history_month">11월</td>
								<td class="history_contents">G20 정상회의 협력업체</td>
							</tr>
							<tr>
								<td class="history_month">6월</td>
								<td class="history_contents">GS네오텍 업체등록</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>

	<section class="history_before_2010">
		<div class="container">

			<div class="history_container">
				<h3 class="history_year">2006</h3>
				<div class="history_table">
					<table>
						<colgroup>
							<col style="width: 10%">
							<col style="width: 95%;">
						</colgroup>
						<tbody>
							<tr>
								<td class="history_month">7월</td>
								<td class="history_contents">신영상엔지니어링에서 주)뉴비젼이엔지로 양수양도</td>
							</tr>
							<tr>
								<td class="history_month">2월</td>
								<td class="history_contents">MULTIMEDIA SERVER 개발 중</td>
							</tr>
							<tr>
								<td class="history_month">1월</td>
								<td class="history_contents">중소기업협동조합가입</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="history_container">
				<h3 class="history_year">2004</h3>
				<div class="history_table">
					<table>
						<colgroup>
							<col style="width: 10%">
							<col style="width: 95%;">
						</colgroup>
						<tbody>
							<tr>
								<td class="history_month">7월</td>
								<td class="history_contents">조달청 입찰업체등록</td>
							</tr>
							<tr>
								<td class="history_month">5월</td>
								<td class="history_contents">주)뉴비젼이엔지 법인설립</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>


			<div class="history_container">
				<h3 class="history_year">2003</h3>
				<div class="history_table">
					<table>
						<colgroup>
							<col style="width: 10%">
							<col style="width: 95%;">
						</colgroup>
						<tbody>
							<tr>
								<td class="history_month">9월</td>
								<td class="history_contents">영상NOISE제거용 FM변조기개발 시판</td>
							</tr>
							<tr>
								<td class="history_month">8월</td>
								<td class="history_contents">동국제강 협력업체 등록</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="history_container">
				<h3 class="history_year">2002</h3>
				<div class="history_table">
					<table>
						<colgroup>
							<col style="width: 10%">
							<col style="width: 95%;">
						</colgroup>
						<tbody>
							<tr>
								<td class="history_month">6월</td>
								<td class="history_contents">감시기기조합 가입</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="history_container">
				<h3 class="history_year">2001</h3>
				<div class="history_table">
					<table>
						<colgroup>
							<col style="width: 10%">
							<col style="width: 95%;">
						</colgroup>
						<tbody>
							<tr>
								<td class="history_month">1월</td>
								<td class="history_contents">동서식품(주) 협력업체 등록</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="history_container">
				<h3 class="history_year">2000</h3>
				<div class="history_table">
					<table>
						<colgroup>
							<col style="width: 10%">
							<col style="width: 95%;">
						</colgroup>
						<tbody>
							<tr>
								<td class="history_month">8월</td>
								<td class="history_contents">DVR SYSTEM 개발</td>
							</tr>
							<tr>
								<td class="history_month">2월</td>
								<td class="history_contents">정보통신공사업 등록</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="history_container">
				<h3 class="history_year">1999</h3>
				<div class="history_table">
					<table>
						<colgroup>
							<col style="width: 10%">
							<col style="width: 95%;">
						</colgroup>
						<tbody>
							<tr>
								<td class="history_month">11월</td>
								<td class="history_contents">삼성SDS(주) 협력업체 등록</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="history_container">
				<h3 class="history_year">1998</h3>
				<div class="history_table">
					<table>
						<colgroup>
							<col style="width: 10%">
							<col style="width: 95%;">
						</colgroup>
						<tbody>
							<tr>
								<td class="history_month">3월</td>
								<td class="history_contents">전자파 시험용 CCTV개발 생산,화상전송 SYSTEM
									개발</td>
							</tr>
							<tr>
								<td class="history_month">3월</td>
								<td class="history_contents">공장 등록</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="history_container">
				<h3 class="history_year">1997</h3>
				<div class="history_table">
					<table>
						<colgroup>
							<col style="width: 10%">
							<col style="width: 95%;">
						</colgroup>
						<tbody>
							<tr>
								<td class="history_month">12월</td>
								<td class="history_contents">한국 전자공업 협동조합 가입</td>
							</tr>
							<tr>
								<td class="history_month">11월</td>
								<td class="history_contents">LG산전(주) 협력업체 등록</td>
							</tr>
							<tr>
								<td class="history_month">7월</td>
								<td class="history_contents">동양화학그룹 및 유니드 협력업체 등록</td>
							</tr>
							<tr>
								<td class="history_month">3월</td>
								<td class="history_contents">대우자동차(주) 협력업체 등록</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="history_container"  style="border-bottom:none!important;">
				<h3 class="history_year">1996</h3>
				<div class="history_table">
					<table>
						<colgroup>
							<col style="width: 10%">
							<col style="width: 95%;">
						</colgroup>
						<tbody>
							<tr>
								<td class="history_month">9월</td>
								<td class="history_contents">COLOR CAMERA 개발 생산</td>
							</tr>
							<tr>
								<td class="history_month">6월</td>
								<td class="history_contents">신영상엔지니어링 설립</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
	<c:import url="../footer.jsp" charEncoding="UTF-8"></c:import>
</body>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>


$(function(){
	$('.history_before_2010').hide();
	$("#after").css('color','#020C26');
	$("#before").css('color','rgba(191,191,191,0.7)');
	
	$("#before").click(function(){
		$("#before").css('color','#020C26');
		$("#after").css('color','rgba(191,191,191,0.7)');
		$('.history_after_2010').hide();
		$('.history_before_2010').show();
	});
	
	$("#after").click(function(){
		$("#before").css('color','rgba(191,191,191,0.7)');
		$("#after").css('color','#020C26');
		$('.history_after_2010').show();
		$('.history_before_2010').hide();
	});
});

/* $(function(){
	$('.history_before_2010').hide();
	$("#after").css('color','#ED1E23');
	
	$("#before").click(function(){
		$("#before").css('color','#ED1E23');
		$("#after").css('color','#020C26');
		$('.history_after_2010').hide();
		$('.history_before_2010').show();
	});
	
	$("#after").click(function(){
		$("#before").css('color','#020C26');
		$("#after").css('color','#ED1E23');
		$('.history_after_2010').show();
		$('.history_before_2010').hide();
	});
}); */

	
</script>


</html>

