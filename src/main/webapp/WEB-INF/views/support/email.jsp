<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html>
<style>
@media ( max-width : 493px) {
	#recaptchaSubmit{
		display:inline-block!important;
		width:100%;
	}
}

.default-select .nice-select{
	border:1px solid #e5e6e9!important;
	background:transparent!important;
}

.generic-blockquote{
	border-left:none!important;
}

.form-contact .form-group{
	margin-bottom:20px!important;
}

details > summary {
  cursor: pointer;
  list-style: none;
}

details > summary::-webkit-details-marker {
  display: none;
}

input[type="checkbox"]+label {
	vertical-align:-webkit-baseline-middle;
    width: 20px;
    height: 20px;
    background: url('/resources/img/elements/20X20_off.png') no-repeat 0 0px / contain;
}

input[type='checkbox']:checked+label {
    background: url('/resources/img/elements/20X20_active.png') no-repeat 0 1px / contain;
}

input[type="checkbox"] {
    display: none;
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
</head>

<!-- <link rel="stylesheet" href="resources/css/responsive.css"> -->


<body>
	<!-- header.jsp import -->
	<c:import url="../header2.jsp" charEncoding="UTF-8"></c:import>
	<script>
		addClassName4();
	</script>

	<!-- breadcrumb-start -->
	<section class="breadcrumb breadcrumb_bg banner-bg-1 overlay2 ptb200">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 offset-lg-1">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item">
							<h2>이메일 문의</h2>
							<p style="opacity: 0.6">New Vision ENG. E-Mail Service</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section>
		<div class="container">
			<br> <br> <br> <br> <br>
			<div class="col-lg-12 col-xl-12">
				<!-- <form class="form-contact contact_form" action="send.do" method="post" id="contactForm" novalidate="novalidate"> -->
				<form class="form-contact contact_form" action="send.do"
					method="post" id="contactForm" novalidate="novalidate">
					<div class="single-element-widget mt-30">
						<div>
						<div class="default-select" id="default-select" style="display: flex;justify-content: space-between;">
						<h3 class="mb-30">문의하기</h3>
							<select id="subject" name="subject">
								<option value="" selected disabled hidden>문의분류</option>
								<option value="견적문의">견적문의</option>
								<option value="제품문의">제품문의</option>
								<option value="기술문의">기술문의</option>
								<option value="유지보수">유지보수</option>
							</select>
						</div>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-sm-6" style="padding-right:10px;">
							<div class="form-group">
									<input class="form-control valid" name="fromCompany" id="fromCompany" type="text" placeholder="회사명을 입력해 주세요." >
							</div>
						</div>
						<div class="col-sm-6" style="padding-left:10px;">
								<div class="form-group" >
									<input class="form-control valid" name="fromName" id="fromName" type="text" placeholder="담당자분의 성함을 입력해 주세요.">
								</div>
						</div>
						<div class="col-sm-6" style="padding-right:10px;">
								<div class="form-group" >
									<input class="form-control valid" name="fromPhone" id="fromPhone" type="tel" placeholder="(-를 제외한)핸드폰 번호를 입력해 주세요.">
								</div>
						</div>
						<div class="col-sm-6" style="padding-left:10px;">
								<div class="form-group" >
									<input class="form-control valid" name="fromMail" id="fromMail" type="email" placeholder="이메일을 입력해 주세요.">
								</div>
						</div>
						<div class="col-12">
							<div class="form-group">
								<textarea class="form-control w-100" name="content" id="content"
									cols="30" rows="9" placeholder="문의 내용"></textarea>
							</div>
						</div>
					</div>
						<hr>
					<div>
<!-- 						<p><a id="showInfo" style="cursor:pointer;">개인정보 취급방침</a>을  읽었으며, 이에 동의합니다.</p> -->
						<div style="float:right;">
							<input type="checkbox" id="myCheck" name="myCheck" class="primary-checkbox" style="vertical-align:middle">
							<label for="myCheck"></label>
							<div style="display:inline-flex;">
							<p><a id="showInfo" style="cursor:pointer; color:#f36d20;">개인정보 취급방침 (보기)</a>을 읽었으며, 이에 동의합니다.</p>
							</div>
						</div>
						<br><br><br><br>
							<div class="row" id="infoCheck" style="font-size: 85%; display:none;">
								<div class="col-lg-12">
									<blockquote class="generic-blockquote">
									NewVisionENG는 (이하 '회사') 고객님의 개인정보를 중요시하며, <strong>개인정보보호법</strong> 을 준수하고 있습니다.<br>
									따라서 회사는 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 이용되는 방식과 용도, 개인정보보호를 위한 처리 방법을 알려 드립니다.<br>
									<br>
									본인은 다음과 같이 개인 정보를 제공 및 활용하는 것에 동의합니다.
									<br>
									<br>
									1. 개인정보 수집,이용 목적<br>
									&nbsp;- 문의사항에 대한 답변 및 답변 정보 유지<br>
									<br>
									2. 개인정보 수집 항목<br>
									&nbsp;- 이메일, 접속 IP 정보<br>
									<br>
									3. 개인정보의 보유, 이용기간<br>
									&nbsp;- 원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다.<br>
									&nbsp;&nbsp;&nbsp;(단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.)<br>
									&nbsp;&nbsp;· 보존 항목 : 이메일<br>
									&nbsp;&nbsp;· 보존 근거 : 서비스 제공 확인<br>
									&nbsp;&nbsp;· 보존 기간 : 3년<br>
									<br>
									4. 동의 거부권 및 불이익 내용<br>
									&nbsp;- 개인정보 제공자는 개인정보 제공에 대한 동의를 거부할 권리가 있습니다.<br>
									&nbsp;- 개인정보 제공에 대해 동의를 거부할 경우 싸이트 가입의 제한 등의 불이익을 입게 됩니다.<br>
									</blockquote>
								</div>
							</div>
					</div>
					<div class="form-group mt-3" id="recaptchaSubmit" style="text-align:right; display:flex; justify-content:space-between">
						<div class="g-recaptcha" data-sitekey="6LfZbSwdAAAAAPj1rwsr0nKbAtFBOqgzPA0skGI_" ></div>
						<button id="sendSubmit" type="submit" class="button button-contactForm boxed-btn">작성 완료</button>
					</div>
				</form>
				<input type=button id="test">
			</div>
		</div>
	</section>

	<c:import url="../footer2.jsp" charEncoding="UTF-8"></c:import>
	<%@ include file = "emailJS.jsp" %>
</body>

    <script src="/resources/js/vendor/jquery-1.12.4.min.js"></script>

<script>
$(document).ready(function(){

		var content = $("#content").val();
		
		$('#test').click(function(){
			console.log("들어옴");
			console.log(content);
		})
	})
</script>
	
</html>
