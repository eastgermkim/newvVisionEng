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
}
#nv_logo{
	width: 200px;
    /* transition: all 0.4s; */
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
	margin-left: 34px
}
.ti-angle-down_main_pc{
	color: white;
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
}
</style>

</head>
<body>
	
		<div class="header-area" id="header_main_pc">
			<div id="sticky-header" class="main-header-area main-header-area_pc">
				<div class="row align-items-center">
					<div class="logo-img">
						<a href="/"> 
						<img id="nv_logo" src="/resources/img/nv_logo_white.png">
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
	
    $( '.header_main_pc_li,	.header_main_pc_subli' ).on( "mouseover", function () {
    	
	      $( '#header_main_pc' ).stop().animate({
	    	  'background-color':'#fff'
	      }, 150);
	      
	      $( '.header-area .main-header-area_pc .main-menu ul li a' ).stop().animate({
	    	  color:'black'
	      }, 50);
	     
	      $( '.ti-angle-down_main_pc' ).stop().animate({
	    	  color:'black'
	      }, 50);
	      
	     $('#nv_logo').attr('src','/resources/img/nv_logo_black.png').stop().animate({opacity:1},100);
    });
    
    $( '#header_main_pc' ).on( "mouseleave", function () {
    		
    		setTimeout(function () {
    			
    	  $( '#header_main_pc' ).animate({
    		  'background-color':'transparent'
	      }, 500);
	      
	      $( '.header-area .main-header-area_pc .main-menu ul li a' ).animate({
	    	  color:'white'
	      }, 100);
	     
	      $( '.ti-angle-down_main_pc' ).animate({
	    	  color:'white'
	      }, 100);
	      
	     $('#nv_logo').attr('src','/resources/img/nv_logo_white.png').animate({opacity:1},1000);
      
    		}, 500);
    });
    
  } );

</script>



















</html>