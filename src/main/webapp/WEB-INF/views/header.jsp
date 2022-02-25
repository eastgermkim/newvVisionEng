<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page session="true"%>

<head>
  <!-- header style  -->
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
    color: #F36D20 !important;
}
.activeColor{
    font-weight: 600 !important;
    color: #F36D20 !important;
}
</style>

<style>


.header-area .main-header-area .main-menu ul li .submenu {
	background:transparent;
    transition: .3s;
    width: max-content;
    top: 80%;
}
.header-area .main-header-area .main-menu ul li .submenu li {
    display: table-cell;
}
.header-area .main-header-area .main-menu ul li .submenu li a {
    font-size: 15px;
    line-height: 33px;
    width: 100px;
    text-align: center;
    padding-left: 0;
}

</style>
  <!-- header style end  -->
  
  <style>
  @media (min-width: 991.5px){
  	.submenu_background{
  		display: block;
	    box-sizing: border-box;
	    position: absolute;
	    background-color: white;
	    height: 100%;
	    width: 100vw;
	    border-bottom: 1px solid #eee;
	    z-index: 0;
	    top: 0;
	    border-top: 1px solid #eee;
  	}
  }
  </style>
</head>

<body style="overflow-x: hidden">


	<script>
//https 리다이렉션
	if(location.hostname != "localhost") {
	    if (window.location.protocol != "https:") {
	    	console.log("http 접속 감지.....redirecting.......1")
	        window.location.href = "https:" + window.location.href.substring(window.location.protocol.length);
	    }
	
	    if (document.location.protocol == 'http:') {
	    	console.log("http 접속 감지.....redirecting.......2")
	        document.location.href = document.location.href.replace('http:', 'https:');
	    }
	}

//internet explorer을 통한 접속 방지
	 if(navigator.userAgent.indexOf("Trident") > 0){ 
	 	window.location = "microsoft-edge:" + window.location.href;
		window.location = 'https://go.microsoft.com/fwlink/?linkid=2135547';
	}else if(/MSIE \d |Trident.*rv:/.test(navigator.userAgent)){
	  	window.location = "microsoft-edge:" + window.location.href;
		window.location = 'https://go.microsoft.com/fwlink/?linkid=2135547';
	}else if (window.navigator.userAgent.match(/MSIE|Internet Explorer|Trident/i)) {
		window.location = "microsoft-edge:" + window.location.href;
		window.location = 'https://go.microsoft.com/fwlink/?linkid=2135547';
	}
	
</script>

	<header>
	
	<!-- csrf 토큰 --> 
	<%-- <meta id="_csrf" name="_csrf" content="${_csrf.token}" /> 
	<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" /> --%>

		<div class="header-area" id="header_main_mobile">
			
			<div class="header-top black-bg d-none d-md-block">
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
									
										<li id="menu_company"><a id="tab1" href="/company/introduce">회사소개</a><i class="ti-angle-down" style="font-size: 9px;"></i>
											<ul class="submenu">
												<div class="submenu_background submenu_background1"></div>
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
										
										<li id="menu_support"><a id="tab4" href="/support/notice">고객지원</a><i class="ti-angle-down" style="font-size: 9px;"></i>
											<ul class="submenu">
												<div class="submenu_background submenu_background2"></div>
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
		<script src="https://code.jquery.com/jquery-latest.js"></script> 
		<script src="/resources/js/jquery-ui.min.js"></script> 
	</header>
	
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
   		
   		$('.header-area .main-header-area .main-menu ul li a').on( "mouseover", function () {
   			$('.active.activeColor').removeClass('active activeColor');
   		});
   		
   	</script>
   	
	<script>
////////////////// 서브메뉴의 뒷 흰 배경을 창 크기에 맞게 조절하기 //////////////////
	// 첫 실행시
		var menu_company = $("#menu_company");
		var menu_company_X = menu_company.offset().left;
		
		var menu_support = $("#menu_support");
		var menu_support_X = menu_support.offset().left;
		
		console.log("first) 회사소개 탭의 X좌표 위치 : "+menu_company_X);
		console.log("first) 고객지원 탭의 X좌표 위치 : "+menu_support_X);
		
		$(".submenu_background1").css('left','-'+menu_company_X+'px');
		$(".submenu_background2").css('left','-'+menu_support_X+'px');

	
	// 화면 크기 변화시 (반응형)
	var delay = 500;
	var timer = null;
	$(window).on('resize', function(){
	 	clearTimeout(timer);
	 	timer = setTimeout(function(){
	 		console.log('-------resize event!-------');
	 		
	 		var menu_company = $("#menu_company");
			var menu_company_X = menu_company.offset().left;
			
			var menu_support = $("#menu_support");
			var menu_support_X = menu_support.offset().left;
			
			console.log("resize) 회사소개 탭의 X좌표 위치 : "+menu_company_X);
			console.log("resize) 고객지원 탭의 X좌표 위치 : "+menu_support_X);
			
			$(".submenu_background1").css('left','-'+menu_company_X+'px');
			$(".submenu_background2").css('left','-'+menu_support_X+'px');
			
	 	}, delay);
	 });
//////////////////////////////////////////////////////////////////////
	</script>
</body>
</html>