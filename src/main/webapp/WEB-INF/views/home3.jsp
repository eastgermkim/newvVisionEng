<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>New Vision ENG</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="shortcut icon" type="image/x-icon"
	href="/resources/img/nvicon.png">

<!-- CSS here -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="/resources/css/magnific-popup.css">
<link rel="stylesheet" href="/resources/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/css/themify-icons.css">
<link rel="stylesheet" href="/resources/css/nice-select.css">
<link rel="stylesheet" href="/resources/css/flaticon.css">
<link rel="stylesheet" href="/resources/css/animate.css">
<link rel="stylesheet" href="/resources/css/slicknav.css">
<link rel="stylesheet" href="/resources/css/style.css">

<style>
#header_main_pc{
		display: none;
		position: fixed;
	    width: 100%;
	    z-index: 1000;
	}

@media (min-width : 991.5px){
	#header_main_mobile{
		display: none;
	}
	#header_main_pc{
		display: block;
	}
}

.slider-area .single-slider {
	height:100vh;
}

.slider-area .slider-active .owl-dots{
	display:flex;
	width:10%;
	justify-content:space-between;
	top:95%;
	right:45%;
	left:45%;
}
</style>
</head>
	<body>
		<!-- header-start -->
		<c:import url="header.jsp" charEncoding="UTF-8"></c:import>
		<!-- header-end -->
		
		<div  style="background: transparent; position: fixed; z-index: 500; color: #fff; top: 50%; left: 90%;">
		<a class="pageNumber" id="num1">1</a>
		<a class="pageNumber" id="num2">2</a>
		<a class="pageNumber" id="num3">3</a>
		</div>
		<!-- slider-area-start -->
		<div class="slider-area">
			<c:import url="header_main_pc.jsp" charEncoding="UTF-8"></c:import>
			<div class="slider-active owl-carousel">
				<div class="single-slider bg-img-1">
				</div>
				<div class="single-slider bg-img-2">
				</div>
				<div class="single-slider bg-img-3">
				</div>
			</div>
		</div>
		<!-- slider-area-end -->
		
		<!-- slider-area-start -->
		<div class="slider-area">
			<div class="slider-active owl-carousel">
				<div class="single-slider bg-img-1">
				</div>
				<div class="single-slider bg-img-2">
				</div>
				<div class="single-slider bg-img-3">
				</div>
			</div>
		</div>
		<!-- slider-area-end -->
		
		<!-- slider-area-start -->
		<div class="slider-area">
			<div class="slider-active owl-carousel">
				<div class="single-slider bg-img-1">
				</div>
				<div class="single-slider bg-img-2">
				</div>
				<div class="single-slider bg-img-3">
				</div>
			</div>
		</div>
		<!-- slider-area-end -->
		<!-- footer-start -->
		<c:import url="footer.jsp" charEncoding="UTF-8"></c:import>
		<!-- footer-end -->
	</body>
	<script src="/resources/js/jquery-ui.min.js"></script> 
<script>
window.addEventListener("wheel", function(e){
	e.preventDefault();
},{passive : false});

var $html = $("html");

var page = 1;
 
var lastPage = $(".slider-area").length + 1;
 
$html.animate({scrollTop:0},0);

$(window).on("wheel", function(e){
	 
	if($html.is(":animated")) return;
 
	if(e.originalEvent.deltaY > 0){
		if(page== lastPage) return;
 
		page++;
	}else if(e.originalEvent.deltaY < 0){
		if(page == 1) return;
 
		page--;
	}
	var posTop = (page-1) * $(window).height();
 
	$html.animate({scrollTop : posTop},1000,'easeInQuart');
 	console.log(page);
 	
 	if(page == "1"){
 		$("#num1").css("color","#f36d20");
 		$("#num2").css("color","#fff");
 		$("#num3").css("color","#fff");
 		console.log("들어옴");
 	}else if(page == "2"){
 		$("#num1").css("color","#fff");
 		$("#num2").css("color","#f36d20");
 		$("#num3").css("color","#fff");
 	}else if(page == "3"){
 		$("#num1").css("color","#fff");
 		$("#num2").css("color","#fff");
 		$("#num3").css("color","#f36d20");
 	}
});
</script>

</html>