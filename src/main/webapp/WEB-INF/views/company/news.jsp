<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html>
<style>
.crawling-lists{
	border-top:1px solid #222;
}
.crawling-list{
	padding:25px;
	position:realative;
	border-bottom:1px solid #ddd;
}

.text-wrap{
	font-size:16px;
}

.news-title{
	font-size:20px;
}

.news-contents{
	height:30px;
	line-height:1.5;
	color:#555;
	overflow:hidden;
	font-size:15px;
	font-weight:300;
}

.news-dates{
	color:#555;
	font-size:15px;
	font-weight:300;
	text-align:right;
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
	
	<section class="breadcrumb breadcrumb_bg banner-bg-1 overlay2 ptb200">
		<!-- breadcrumb-start -->
		<div class="container">
			<div class="row">
				<div class="col-lg-7 offset-lg-1">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item">
							<h2>보도자료</h2>
							<p style="opacity: 0.6">New Vision ENG. 본사</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumb-end -->
	</section>

	<section class="sample-text-area">
		<div class="container box_1170" style="border-top: 2px dotted #eee;">
			<br>
			<h3 class="text-heading">News</h3>
			<p class="smple-text">내용을 입력해주세요.내용을 입력해주세요.내용을 입력해주세요. 내용을
				입력해주세요.내용을 입력해주세요.내용을 입력해주세요.내용을 입력해주세요.내용을 입력해주세요.
			<p>
		</div>
	</section>
	
	<!-- 본문 내용  -->
	<section style="margin-bottom:20%;">
		<div class="container">
			<div style="display:flex; justify-content:space-between;">
	        	<a href="/company/news_write" class="genric-btn primary-border circle">글 작성하기</a>
	        	<div style="float:right;">
					<input type="checkbox" id="myCheck" name="myCheck" class="primary-checkbox" style="vertical-align:middle">
					<label for="myCheck"></label>
					<div style="display:inline-flex;">
					<p><a id="showInfo" style="cursor:pointer; color:#f36d20;">링크 기사 수정하기</a></p>
					</div>
				</div>
	        </div>
	        <br>
				<ul class="crawling-lists">
			   		<c:forEach var="news" items="${news_list}">
			   			<c:choose>
			   				<c:when test="${news.newsLink != null}">
							<li class="crawling-list">
								<a class="list-inner-wrap" href="${news.newsLink}" target="_blank">
									<div class="text-wrap">
									<form method="post" action="/company/news_delete" enctype="multipart/form-data">
										<div style="display:flex">
											<h3 class="news-title">${news.newsTitle}</h3>
											<span class="contact-info__icon">&nbsp;&nbsp;&nbsp;&nbsp;<i class="ti-layers"></i></span>
										</div>
										<h3 class="news-contents">${news.newsSubTitle}</h3>
										<h3 class="news-dates">${news.newsDate}</h3>
										<input type="hidden" name="newsNum" value="${news.newsNum}">
										<a href="/company/news_modify/${news.newsNum}" i="modify_link_button" class="genric-btn primary modify_link_button" style="display:none;">수정하기</a>
										<input type="submit" value="삭제" class="genric-btn primary circle" style="margin-right: 1%;">
									</form>
									</div>
								</a>
			   				</c:when>
			   				<c:otherwise>
							<li class="crawling-list">
								<a class="list-inner-wrap" href="news/${news.newsNum}">
									<div class="text-wrap">
										<h3 class="news-title">${news.newsTitle}</h3>
										<h3 class="news-contents">${news.newsSubTitle}</h3>
										<h3 class="news-dates">${news.newsDate}</h3>
									</div>
								</a>
			   				</c:otherwise>
			   			</c:choose>
			   		</c:forEach>
				</ul>
   		</div>
	</section>

	<c:import url="../footer2.jsp" charEncoding="UTF-8"></c:import>

</body>
	<script>
	$(function(){
		$("#myCheck").on('click', function() {
		if($("#myCheck").is(":checked") == true){
			console.log("체크됨")
			$(".modify_link_button").show();
		}else{
			console.log("체크안됨")
			$(".modify_link_button").hide();
		}
		})
	})
	</script>
	
</html>