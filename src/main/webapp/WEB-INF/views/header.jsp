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

/* 서브메뉴 뒷 흰 배경 */	
.whiteBackground{
    background-color: white;
    z-index: 1;
    position: absolute;
    height: 53px;
    width: 100%;

	box-sizing: border-box;
	border-top: 1px solid #eee;
    border-bottom: 1px solid #eee;
    
	/* 없어질때 속도 */
    transition: .3s;
   	/* top: 13.53%; */
    opacity: 0;
    visibility: hidden;
    
}
.whiteBackgroundHover{
	/* 생길때 속도 */
	transition: .3s;

    /* top:initial; */
	opacity: 1;
    visibility: visible;
}
</style>
  <!-- header style end  -->
  
  <style>
  @media (min-width: 991.5px){
  	.submenu::before {
	    content: '';
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

	/* console.log("http확인");
	console.log(window.location.protocol);
	console.log("http확인 끝----"); */
	
/* 	if(location.hostname != "localhost") {
	    if (window.location.protocol != "https:") {
	        window.location.href = "https:" + window.location.href.substring(window.location.protocol.length);
	    }
	
	    if (document.location.protocol == 'http:') {
	        document.location.href = document.location.href.replace('http:', 'https:');
	    }
	}	 */

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
									
										<li id="menu_company" class="whiteBackLi"><a id="tab1" href="/company/introduce">회사소개</a><i class="ti-angle-down" style="font-size: 9px;"></i>
											<ul class="submenu submenu1">
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
										
										<li id="menu_support" class="whiteBackLi"><a id="tab4" href="/support/notice">고객지원</a><i class="ti-angle-down" style="font-size: 9px;"></i>
											<ul class="submenu submenu2">
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
		<!-- <div class="whiteBackground"></div> -->
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
   		
   		$('.whiteBackLi').on( "mouseover", function () {
   			$('.whiteBackground').addClass("whiteBackgroundHover");
   		});
   		
   		$('.whiteBackLi').on( "mouseleave", function () {
   			$('.whiteBackground').removeClass("whiteBackgroundHover");
   		});
   		
   	</script>
   	
	<script>
	$(document).ready(function(){
		var menu_company = $("#menu_company");
		var menu_company_X = menu_company.offset().left;
		
		var menu_support = $("#menu_support");
		var menu_support_X = menu_support.offset().left;
		
		console.log("첫 menu_company_X : "+menu_company_X);
		console.log("첫 menu_support_X : "+menu_support_X);
	});
	
	var delay = 300;
	var timer = null;
	
	 $(window).on('resize', function(){
		 	clearTimeout(timer);
		 	timer = setTimeout(function(){
		 		console.log('resize event!');
		 		
		 		var menu_company = $("#menu_company");
				var menu_company_X = menu_company.offset().left;
				
				var menu_support = $("#menu_support");
				var menu_support_X = menu_support.offset().left;
				
				console.log("리사이즈 menu_company_X : "+menu_company_X);
				console.log("리사이즈 menu_support_X : "+menu_support_X);
				
				var stylesheet = "<style>.add:before{left:-"+menu_company_X+"px}";
				$('body').html($('body').html()+stylesheet);
				$(".submenu1").addClass('add');
				
				var stylesheet2 = "<style>.add2:before{left:-"+menu_support_X+"px}";
				$('body').html($('body').html()+stylesheet2);
				$(".submenu2").addClass('add2');
				
		 	}, delay);
		 });
	</script>
</body>
</html>