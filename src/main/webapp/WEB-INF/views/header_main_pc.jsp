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

#header_main_pc.mousein{
	background-color:#fff;
	transition-duration: 0.5s;
	border-bottom: 1px solid #eee;
}
#header_main_pc.mouseinDark{
	box-shadow : rgba(0,0,0,0.5) 0 0 0 9999px;
	z-index : 100;
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
</style>

</head>
<body>
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
								<li class="header_main_pc_li" id="menu_company_main"><a href="/company/introduce">????????????</a>
								<i class="ti-angle-down ti-angle-down_main_pc" style="font-size: 9px;"></i>
									<ul class="submenu">
										<div class="submenu_background submenu_background_main1"></div>
										<li class="header_main_pc_subli"><a href="/company/introduce">????????????</a></li>
										<li class="header_main_pc_subli"><a href="/company/news">????????????</a></li>
										<li class="header_main_pc_subli"><a href="/company/history">??????</a></li>
										<li class="header_main_pc_subli"><a href="/company/certification">????????????</a></li>
										<li class="header_main_pc_subli"><a href="/company/location">????????? ???</a></li>
									</ul>
								</li>
								
								<li class="header_main_pc_li" ><a href="/business/business_cctv">????????????</a>
								</li>
								
								<li class="header_main_pc_li" ><a href="/business/result">????????????</a>
								</li>
								
								<li class="header_main_pc_li" id="menu_support_main" ><a href="/support/notice">????????????</a><i class="ti-angle-down ti-angle-down_main_pc" style="font-size: 9px;"></i>
									<ul class="submenu">
										<div class="submenu_background submenu_background_main2"></div>
										<li class="header_main_pc_subli"><a href="/support/notice">????????????</a></li>
										<li class="header_main_pc_subli"><a href="/support/customer">????????????</a></li>
									</ul>
								</li>
								
								<li class="header_main_pc_li" ><a href="/recruit/list">????????????</a>
								</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
		
		<script src="https://code.jquery.com/jquery-latest.js"></script> 
		<script src="/resources/js/jquery-ui.min.js"></script> 
</body>
<script>
$( document ).ready( function() {
	
    $( '.header_main_pc_li' ).on( "mouseover", function () {
    	//????????? ????????? ????????? ?????? ?????????
		$( '#header_main_pc' ).addClass("mouseinDark");
		
    	//????????? ????????? ??? ??????
		$( '#header_main_pc' ).addClass("mousein");
		$( '.main-menu ul li a' ).addClass("mousein");
		$( '.ti-angle-down_main_pc' ).addClass("mousein");
		$( '#nv_logo_white' ).removeClass("mousein");
		$( '#nv_logo_black' ).addClass("mousein");
		
    });
    
    $( '.header-area' ).on( "mouseleave", function () {
		$( '#header_main_pc' ).removeClass("mouseinDark");
			
    	if(page != "2" && page != "3" ){
    		//2???????????? ?????? ??????????????? ??????
    		//???????????? ???????????? ????????? ?????? ???????????? ??????
			$( '#header_main_pc' ).removeClass("mousein");
			$( '.main-menu ul li a' ).removeClass("mousein");
			$( '.ti-angle-down_main_pc' ).removeClass("mousein");
			$( '#nv_logo_white' ).addClass("mousein");
			$( '#nv_logo_black' ).removeClass("mousein");
	    }
    });
    
  } );

</script>

	<script>
////////////////// ??????????????? ??? ??? ????????? ??? ????????? ?????? ???????????? //////////////////
	// ??? ?????????
 		var menu_company_main = $("#menu_company_main");
		var menu_company_main_X = menu_company_main.offset().left;
		                
		var menu_support_main = $("#menu_support_main");
		var menu_support_main_X = menu_support_main.offset().left;
		
		console.log("first_main) ???????????? ?????? X?????? ?????? : "+menu_company_main_X);
		console.log("first_main) ???????????? ?????? X?????? ?????? : "+menu_support_main_X);
		
		$(".submenu_background_main1").css('left','-'+menu_company_main_X+'px');
		$(".submenu_background_main2").css('left','-'+menu_support_main_X+'px');

	
	// ?????? ?????? ????????? (?????????)
	var delay = 500;
	var timer = null;
	$(window).on('resize', function(){
	 	clearTimeout(timer);
	 	timer = setTimeout(function(){
	 		console.log('-------main resize event!-------');
	 		
	 		var menu_company_main = $("#menu_company_main");
			var menu_company_main_X = menu_company_main.offset().left;
			                
			var menu_support_main = $("#menu_support_main");
			var menu_support_main_X = menu_support_main.offset().left;
			
			console.log("resize_main) ???????????? ?????? X?????? ?????? : "+menu_company_main_X);
			console.log("resize_main) ???????????? ?????? X?????? ?????? : "+menu_support_main_X);
			
			$(".submenu_background_main1").css('left','-'+menu_company_main_X+'px');
			$(".submenu_background_main2").css('left','-'+menu_support_main_X+'px');
			
	 	}, delay);
	 });
//////////////////////////////////////////////////////////////////////
	</script>

















</html>