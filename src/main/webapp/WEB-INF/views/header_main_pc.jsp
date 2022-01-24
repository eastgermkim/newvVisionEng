<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page session="true"%>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
<style>
#header_main_pc{
	padding-top: 10px;
}
#nv_logo{
	width: 200px;
    transition: all 0.4s;
    x: 0px;
    y: 0px;
}
.main-header-area_pc{
   /*  width: 80%; */
    margin-left: 80px;
}
.header-area .main-header-area_pc .main-menu ul li a {
    color: white;
    font-size: 18px;
}
.header_main_pc_li{
	margin-left: 60px
}
.ti-angle-down_main_pc{
	color: white;
}

</style>
</head>
<body>
	
		<div class="header-area" id="header_main_pc" onmouseleave="resetMenu();">
			
			<div id="sticky-header" class="main-header-area main-header-area_pc">
			<!-- <div class="container_pc"> -->
				<div class="row align-items-center">
						<!-- <div class="col-xl-2 col-lg-2"> -->
						<div class="logo-img">
							<a href="/"> <img id="nv_logo" src="/resources/img/nv_logo_white.png">
							</a>
						</div>
						<!-- </div> -->
						<!-- <div class="col-xl-7 col-lg-7"> -->
							<div class="main-menu d-none d-lg-block" style="margin-left: 40px;">
								<nav>
									<ul>
										<li class="header_main_pc_li" onmouseover="changeMenu();"><a href="/company/introduce">회사소개</a>
										<i class="ti-angle-down ti-angle-down_main_pc" style="font-size: 9px;"></i>
											<ul class="submenu">
												<li><a href="/company/introduce">회사개요</a></li>
												<li><a href="/company/news">보도자료</a></li>
												<li><a href="/company/history">연혁</a></li>
												<li><a href="/company/certification">인증현황</a></li>
												<li><a href="/company/location">오시는 길</a></li>
											</ul>
										</li>
										
										<li class="header_main_pc_li" onmouseover="changeMenu();"><a href="/business/business_cctv">사업소개</a>
										</li>
										
										<li class="header_main_pc_li" onmouseover="changeMenu();"><a href="/business/result">사업실적</a>
										</li>
										
										<li class="header_main_pc_li" onmouseover="changeMenu();"><a href="/support/notice">고객지원</a><i class="ti-angle-down ti-angle-down_main_pc" style="font-size: 9px;"></i>
											<ul class="submenu">
												<li><a href="/support/notice">공지사항</a></li>
												<li><a href="/support/customer">고객문의</a></li>
											</ul>
										</li>
										
										<li class="header_main_pc_li" onmouseover="changeMenu();"><a href="/recruit/list">채용정보</a>
										</li>
									</ul>
								</nav>
							</div>
						<!-- </div> -->
						<%-- <div class="col-xl-3 col-lg-3">
							<div class="main-menu d-none d-lg-block" style="margin-left: 40px;">
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
						</div> --%>
				</div>
			<!-- 	</div> -->
			</div>
		</div>
		
</body>
<script>
	function changeMenu(){
		$("#header_main_pc").css("background","#ffffff");
		$(".header-area .main-header-area_pc .main-menu ul li a").css("color","black");
		$(".ti-angle-down_main_pc").css("color","black");
		$("#nv_logo").attr("src", "/resources/img/nv_logo_black.png");
		
	}
	function resetMenu(){
		$("#header_main_pc").css("background","transparent");
		$(".header-area .main-header-area_pc .main-menu ul li a").css("color","white");
		$(".ti-angle-down_main_pc").css("color","white");
		$("#nv_logo").attr("src", "/resources/img/nv_logo_white.png");
	}
	
</script>



















</html>