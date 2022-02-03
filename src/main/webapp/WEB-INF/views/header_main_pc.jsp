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
	padding-top: 5px;
	transition-duration: 1s;
}
#nv_logo_white{
    display:none;
	width: 200px;
}
#nv_logo_black{
    display:none;
	width: 200px;
}
.main-header-area_pc{
   /*  width: 80%; */
    margin-left: 80px;
}
.header-area .main-header-area_pc .main-menu ul li a {
    color: white;
    font-size: 18px;
    transition-duration: 1s;
}
.header_main_pc_li{
	margin-left: 34px
}
.ti-angle-down_main_pc{
	color: white;
	transition-duration: 1s;
}
.header-area .main-header-area .main-menu ul li .submenu {
    width: max-content;
    top: 85%;
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
@media (min-width:991.5px){
	.submenu::before {
	    content: '';
	    display: block;
	    box-sizing: border-box;
	    position: absolute;
	    background-color: white;
	    height: 100%;
	    left: -1000%;
	    right: -1000%;
	    border-bottom: 1px solid #eee;
	    z-index: 0;
	    top: 0;
	    border-top: 1px solid #eee;
	}
}

#header_main_pc.mousein{
	background-color:#fff;
	transition-duration: 0.5s;
}
.header-area .main-header-area_pc .main-menu ul li a.mousein {
    color: #4C4646;
	transition-duration: 0.5s;
}
.ti-angle-down_main_pc.mousein{
	color: #4C4646;
	transition-duration: 0.5s;
}
#nv_logo_white.mousein{
	display:block;
	width: 200px;
    transition: 1s;
}
#nv_logo_black.mousein{
    display:block;
    transition: 0.5s;
}


.header-dimmed{
    background-color: rgba(0,0,0,.8);
    backface-visibility: hidden;
    transform: translate3d(0,0,0);
    filter: grayscale(1);
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    height: 0;
    will-change: transform;
}
</style>

</head>
<body>
	<div class="header-dimmed" style="opacity: 0; visibility: hidden; height: 100vh;"></div>
		<div class="header-area" id="header_main_pc">
			<div id="sticky-header" class="main-header-area main-header-area_pc">
				<div class="row align-items-center">
					<div class="logo-img">
						<a href="/"> 
						<img id="nv_logo_white" class="mousein" src="/resources/img/nv_logo_white.png">
						<img id="nv_logo_black" src="/resources/img/nv_logo_black.png">
						</a>
					</div>
					<div class="main-menu d-none d-lg-block" style="margin-left: 40px;">
						<nav>
							<ul>
								<li class="header_main_pc_li"><a href="/company/introduce">회사소개</a>
								<i class="ti-angle-down ti-angle-down_main_pc" style="font-size: 9px;"></i>
									<ul class="submenu">
										<li class="header_main_pc_subli"><a href="/company/introduce">회사개요</a></li>
										<li class="header_main_pc_subli"><a href="/company/news">보도자료</a></li>
										<li class="header_main_pc_subli"><a href="/company/history">연혁</a></li>
										<li class="header_main_pc_subli"><a href="/company/certification">인증현황</a></li>
										<li class="header_main_pc_subli"><a href="/company/location">오시는 길</a></li>
									</ul>
								</li>
								
								<li class="header_main_pc_li" ><a href="/business/business_cctv">사업소개</a>
								</li>
								
								<li class="header_main_pc_li" ><a href="/business/result">사업실적</a>
								</li>
								
								<li class="header_main_pc_li" ><a href="/support/notice">고객지원</a><i class="ti-angle-down ti-angle-down_main_pc" style="font-size: 9px;"></i>
									<ul class="submenu">
										<li class="header_main_pc_subli"><a href="/support/notice">공지사항</a></li>
										<li class="header_main_pc_subli"><a href="/support/customer">고객문의</a></li>
									</ul>
								</li>
								
								<li class="header_main_pc_li" ><a href="/recruit/list">채용정보</a>
								</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
		
		<script src="http://code.jquery.com/jquery-latest.js"></script> 
		<script src="/resources/js/jquery-ui.min.js"></script> 
</body>
<script>
$( document ).ready( function() {
	
    $( '.header_main_pc_li' ).on( "mouseover", function () {
		$( '#header_main_pc' ).addClass("mousein");
		$( '.main-menu ul li a' ).addClass("mousein");
		$( '.ti-angle-down_main_pc' ).addClass("mousein");
		$( '#nv_logo_white' ).removeClass("mousein");
		$( '#nv_logo_black' ).addClass("mousein");
    });
    
    $( '.header-area' ).on( "mouseleave", function () {
    	if(page != "2"){
		$( '#header_main_pc' ).removeClass("mousein");
		$( '.main-menu ul li a' ).removeClass("mousein");
		$( '.ti-angle-down_main_pc' ).removeClass("mousein");
		$( '#nv_logo_white' ).addClass("mousein");
		$( '#nv_logo_black' ).removeClass("mousein");
    	}
    });
    
  } );

</script>



















</html>