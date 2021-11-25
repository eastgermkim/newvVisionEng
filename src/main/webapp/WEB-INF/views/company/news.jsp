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
			<div>
	        	<a href="/company/news_write" class="genric-btn primary-border circle">글 작성하기</a>
	        </div>
	        <br>
	        
			<ul class="crawling-lists">
				<li class="crawling-list">
					<a class="list-inner-wrap">
						<div class="text-wrap">
						<h3 class="news-title">단국대학교 I-다산LINC+사업단 서울여성경제인 협의체 발대식 및 포럼 개최</h3>
						<h3 class="news-contents">4차 산업혁명시대 선도할 산학협력 발대식 열려</h3>
						<h3 class="news-dates">2021.06.08</h3>
						</div>
					</a>
				</li>
				<li class="crawling-list">
					<a class="list-inner-wrap">
						<div class="text-wrap">
						<h3 class="news-title">서울 여성경제인 18명 모범기업인상 수상</h3>
						<h3 class="news-contents">서울지방조달청장 표창 ... 전대순 ㈜뉴비젼이엔지 대표 ...  수상</h3>
						<h3 class="news-dates">2016.06.24</h3>
						</div>
					</a>
				</li>
			</ul>
		</div>
	</section>
	
	<!-- 리스트 테스트  -->
	<section style="margin-bottom:20%;">
		<div class="container">
				<ul class="crawling-lists">
			   		<c:forEach var="news" items="${news_list}">
						<li class="crawling-list">
							<a class="list-inner-wrap">
								<div class="text-wrap">
								<h3 class="news-title">${news.newsTitle}</h3>
								<h3 class="news-contents">${news.newsContents}</h3>
								<h3 class="news-dates">${news.newsDate}</h3>
								</div>
							</a>
						</li>
			   		</c:forEach>
				</ul>
   		</div>
	</section>

	<c:import url="../footer2.jsp" charEncoding="UTF-8"></c:import>

</body>


</html>