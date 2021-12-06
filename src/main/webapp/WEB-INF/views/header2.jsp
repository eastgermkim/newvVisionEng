<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>header</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="manifest" href="site.webmanifest"> -->
<link rel="shortcut icon" type="image/x-icon"
	href="/resources/img/nvicon.png">
<!-- Place favicon.ico in the root directory -->


</head>

<body>

<script>
/* Internet Explorer 접속 방지(Edge로 전환) */
  if(navigator.userAgent.indexOf("Trident") > 0){ 
	 	 window.location = "microsoft-edge:" + window.location.href;
		window.location = 'https://go.microsoft.com/fwlink/?linkid=2135547';
	} 
  else if(/MSIE \d |Trident.*rv:/.test(navigator.userAgent)){
	  	window.location = "microsoft-edge:" + window.location.href;
		window.location = 'https://go.microsoft.com/fwlink/?linkid=2135547';
		}
  else if (window.navigator.userAgent.match(/MSIE|Internet Explorer|Trident/i)) {
		window.location = "microsoft-edge:" + window.location.href;
		window.location = 'https://go.microsoft.com/fwlink/?linkid=2135547';
	}
</script>

	<!-- header-start -->
	<header>
		<div class="header-area ">
			
			<div class="header-top black-bg d-none d-md-block">
				<div class="container">
					<div class="row">
						<div class="col-xl-6 col-md-6 col-lg-6">
							<div class="header-contact">
								<a href="#"><i class="fa fa-phone"></i> 02 – 743 – 6977~8</a> <a
									href="#"><i class="fa fa-envelope"></i>nv3000@empas.com</a>
							</div>
						</div>
						<div class="col-xl-6 col-md-6 col-lg-6">
							<div class="header-top-menu">
								<nav>
									<ul>
										<!-- <li><a href="blog.html">News & media</a></li>
										<li><a href="review.html">Review</a></li> -->
										<c:if test="${admin_ID == null}">
											<li><a href="/admin/adminLogin">Admin</a></li>
										</c:if>
										<c:if test="${admin_ID != null}">
												<li><a href="/admin/sessionLogout">관리자 로그아웃</a></li>
										</c:if>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div id="sticky-header" class="main-header-area white-bg">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-xl-2 col-lg-2">
							<div class="logo-img">
								<a href="/"> <img src="/resources/img/nv_logo.png"
									alt="" style="width: 107%;">
								</a>
							</div>
						</div>
						<div class="col-xl-7 col-lg-7">
							<div class="main-menu d-none d-lg-block">
								<nav>
									<ul id="navigation" style="display: flex;justify-content: space-evenly;">
									
										<li><br>
											
										</li>
									
										<li><a href="/company/introduce">회사소개</a>
											<ul class="submenu">
												<li><a href="/company/introduce">회사개요</a></li>
												<li><a href="">CEO인사말</a></li>
												<li><a href="/company/news">보도자료</a></li>
												<li><a href="/company/history">연혁</a></li>
												<li><a href="/company/organization">조직도</a></li>
												<li><a href="/company/certification">인증현황</a></li>
												<li><a href="/company/location">오시는 길</a></li>
											</ul>
										</li>
										
										<li><a href="#">사업소개</a>
											<ul class="submenu">
											</ul>
										</li>
										
										<li><a href="#">사업실적</a>
											<ul class="submenu">
											</ul>
										</li>
										
										<li><a href="/support/notice">고객지원</a>
											<ul class="submenu">
												<li><a href="/support/notice">공지사항</a></li>
												<li><a href="/support/customer">고객문의</a></li>
											</ul>
										</li>
										
										<li><a href="/recruit/list">채용정보</a>
											<ul class="submenu">
											</ul>
										</li>
										
									</ul>
								</nav>
							</div>
						</div>
						<%-- <div class="col-xl-3 col-lg-3">
							<div class="quote-area">
								<div class="search-bar">
									<a id="search_1" href="javascript:void(0)"><i
										class="fa fa-search"></i></a>
								</div>
								
								버튼 일단 숨김 
								<div class="get-quote d-none d-lg-block">
									<a class="boxed-btn" href="#">버튼임</a>
								</div>
							
							</div>
						</div> --%>
						<div class="col-12">
							<div class="mobile_menu d-block d-lg-none"></div>
						</div>
					</div>
					<div class="search_input" id="search_input_box">
						<div class="container ">
							<form class="d-flex justify-content-between search-inner">
								<input type="text" class="form-control" id="search_input"
									placeholder="Search Here">
								<button type="submit" class="btn"></button>
								<span class="fa fa-close" id="close_search" title="Close Search"></span>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- header-end -->
	<script>
   		function addClassName1() {
   		  document.getElementById('tab1').className = 'active';
   		}
   		function addClassName2() {
   		  document.getElementById('tab2').className = 'active';
   		}
   		function addClassName3() {
   		  document.getElementById('tab3').className = 'active';
   		}
   		function addClassName4() {
   		  document.getElementById('tab4').className = 'active';
   		}
   		function addClassName5() {
   		  document.getElementById('tab5').className = 'active';
   		}
   	</script>
   	
	
</body>
</html>