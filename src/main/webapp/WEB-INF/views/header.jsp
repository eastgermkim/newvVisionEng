<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
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

<style>
@media (min-width:991.5px){
	#navigation{
		display: flex;
		justify-content: space-evenly;
	}
}

#adminBtn{
	display: none;
}

@media (max-width:767.5px){
	#adminBtn{
		display: block;
	}
}
.adminColor{
	color: grey !important;
}

.header-area .main-header-area .main-menu ul li a:hover {
    font-weight: 600;
    color: #F36D20;
}
.activeColor{
    font-weight: 600 !important;
    color: #F36D20 !important;
}
</style>

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
	
	<!-- csrf 토큰 --> 
	<meta id="_csrf" name="_csrf" content="${_csrf.token}" /> 
	<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />

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
										<sec:authorize access="isAnonymous()">
											<li><a href="/login">Admin</a></li>
										</sec:authorize>
										<sec:authorize access="isAuthenticated()">
												<!-- <li><a href="/admin/sessionLogout">관리자 로그아웃</a></li> -->
												<li><a href="#">${admin_Login_id}님</a></li>
												<li><a href="/logout"> 로그아웃</a></li>
										</sec:authorize>
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
									<ul id="navigation">
									
										<li><br>
											
										</li>
									
										<li><a id="tab1" href="/company/introduce">회사소개</a>
											<ul class="submenu">
												<li><a href="/company/introduce">회사개요</a></li>
												<li><a href="/company/news">보도자료</a></li>
												<li><a href="/company/history">연혁</a></li>
												<li><a href="/company/certification">인증현황</a></li>
												<li><a href="/company/location">오시는 길</a></li>
											</ul>
										</li>
										
										<li><a id="tab2" href="/business/business_cctv">사업소개</a>
										</li>
										
										<li><a id="tab3" href="/business/result">사업실적</a>
										</li>
										
										<li><a id="tab4" href="/support/notice">고객지원</a>
											<ul class="submenu">
												<li><a href="/support/notice">공지사항</a></li>
												<li><a href="/support/customer">고객문의</a></li>
											</ul>
										</li>
										
										<li><a id="tab5" href="/recruit/list">채용정보</a>
										</li>


										<sec:authorize access="isAnonymous()">
											<li id="adminBtn"><a id="tab6" class="adminColor" href="/login"> Admin</a>
											</li>
										</sec:authorize>
										<sec:authorize access="isAuthenticated()">
											<li id="adminBtn">
												<a id="tab6" href="/logout" style="text-transform: none;">
													<span style="color:mediumblue;">로그아웃</span>(${admin_Login_id})
												</a>
											</li>
										</sec:authorize>
									</ul>
								</nav>
							</div>
						</div>
						<div class="col-12">
							<div class="mobile_menu d-block d-lg-none"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- header-end -->
	<script>
   		function addClassName1() {
   		  document.getElementById('tab1').className = 'active activeColor';
   		}
   		function addClassName2() {
   		  document.getElementById('tab2').className = 'active activeColor';
   		}
   		function addClassName3() {
   		  document.getElementById('tab3').className = 'active activeColor';
   		}
   		function addClassName4() {
   		  document.getElementById('tab4').className = 'active activeColor';
   		}
   		function addClassName5() {
   		  document.getElementById('tab5').className = 'active activeColor';
   		}
   		function addClassName6() {
   		  document.getElementById('tab6').className = 'active activeColor';
   		}
   	</script>
   	
	
</body>
</html>