<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page session="true"%>

<!doctype html>
<html class="no-js" lang="zxx">

<body>

	<!-- header-start -->

		<div class="header-area" id="header_main_pc">
			
			<div class="header-top d-none d-md-block">
				<div class="container">
					<div class="row">
						<div class="col-xl-6 col-md-6 col-lg-6">
							<div class="header-contact">
								<a href="#"><i class="fa fa-phone"></i> 02 – 743 – 6977~8</a> 
								<a href="#"><i class="fa fa-envelope"></i>nv3000@empas.com</a>
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
			
			<div id="sticky-header" class="main-header-area">
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
									
										<li><a href="/company/introduce">회사소개</a><i class="ti-angle-down" style="font-size: 9px;"></i>
											<ul class="submenu">
												<li><a href="/company/introduce">회사개요</a></li>
												<li><a href="/company/news">보도자료</a></li>
												<li><a href="/company/history">연혁</a></li>
												<li><a href="/company/certification">인증현황</a></li>
												<li><a href="/company/location">오시는 길</a></li>
											</ul>
										</li>
										
										<li><a href="/business/business_cctv">사업소개</a>
										</li>
										
										<li><a href="/business/result">사업실적</a>
										</li>
										
										<li><a href="/support/notice">고객지원</a><i class="ti-angle-down" style="font-size: 9px;"></i>
											<ul class="submenu">
												<li><a href="/support/notice">공지사항</a></li>
												<li><a href="/support/customer">고객문의</a></li>
											</ul>
										</li>
										
										<li><a href="/recruit/list">채용정보</a>
										</li>


										<sec:authorize access="isAnonymous()">
											<li id="adminBtn"><a class="adminColor" href="/login"> Admin</a>
											</li>
										</sec:authorize>
										<sec:authorize access="isAuthenticated()">
											<li id="adminBtn">
												<a href="/logout" style="text-transform: none;">
													<span style="color:mediumblue;">로그아웃</span>(${admin_Login_id})
												</a>
											</li>
										</sec:authorize>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>