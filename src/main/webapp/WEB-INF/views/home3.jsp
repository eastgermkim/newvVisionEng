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
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

<!-- AOS -->
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>

<style>
#header_main_pc{
		display: none;
		position: fixed;
	    width: 100%;
	    z-index: 98;
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
	width:7%;
	justify-content:space-between;
	top:40%;
	left:11%;
}
</style>
<!-- 마우스 스크롤 -->
<style>
.scroll {
  padding-top: 60px;
}
.scroll span {
  position: fixed;
  top: 90%;
  left: 90%;
  width: 30px;
  height: 50px;
  border: 2px solid #fff;
  border-radius: 50px;
  box-sizing: border-box;
  z-index:98;
  background:rgba(248,248,248,0.3);
}
.scroll span::before {
  position: absolute;
  top: 10px;
  left: 50%;
  content: '';
  width: 6px;
  height: 6px;
  margin-left: -3px;
  background-color: #fff;
  border-radius: 100%;
  -webkit-animation: sdb 2s infinite;
  animation: sdb 2s infinite;
  box-sizing: border-box;
}
@-webkit-keyframes sdb {
  0% {
    -webkit-transform: translate(0, 0);
    opacity: 0;
  }
  40% {
    opacity: 1;
  }
  80% {
    -webkit-transform: translate(0, 20px);
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}
@keyframes sdb {
  0% {
    transform: translate(0, 0);
    opacity: 0;
  }
  40% {
    opacity: 1;
  }
  80% {
    transform: translate(0, 20px);
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
}

/* 글씨 애니미에션 */
.scroll-text{
    position: fixed;
    z-index: 98;
    left: 89.6%;
    color: #fff;
    top: 96%;
 }

.main_sentence{
	z-index:98; 
	color:#fff; 
	margin-left:10%; 
	font-weight:700; 
	font-size:3.5em; 
	line-height:1em;
	transform: translateY(6rem);
	animation: up 500ms linear forwards;
}

.main_sentence_sub{
	z-index:98; 
	color:#fff; 
	margin-left:10%; 
	font-weight:300; 
	font-size:1.5em; 
	line-height:1em;
	transform: translateY(6rem);
	animation: up 500ms linear forwards;
}

@keyframes up {
	100% {
		transform: translateY(0);
	}
}

.sentence-container{
	width:100%;
	overflow:hidden;
	position:absolute;
	z-index:3;
	top:45%;
 }

/* 뉴스 */
 
.news_container{
	width:40%;
	overflow:hidden;
	position:absolute;
	z-index:98;
	top:90%;
	display:flex;
	justify-content:space-between;
	margin-left:10%;
	border-bottom:1px solid #fff;
	height:1.7em;
}

.news_group{
	width:70%;
	position:relative;
	bottom:1.5em;
}

.news_group li{
	overflow:hidden;
	text-overflow: ellipsis;
    white-space: nowrap;
	color:#fff!important; 
}

.news_sentence{
	font-weight:300; 
	font-size:1.2em; 
	line-height:1em;
}

.news_navi{
	width:20%;
	overflow:hidden;
	z-index:98;
	top:90%;
	color:#fff;
	display:flex;
	justify-content:space-evenly;
}

/* 페이지 바 표시 */
.homePageGroup{
	position: sticky;
    z-index: 98;
    top: 20%;
    margin-left:85%;
}

.homePageGroup .pageGroup{
	display:flex;
	background: transparent;
	color: #fff; 
}

.homePageGroup .pageGroup h3{
	color:#fff;
	font-size: 2.5em;
    font-weight: 700;
    display: flex;
    align-items: center;
    margin-right: 0.3em;
}

.homePageGroup .pageGroup .pageNumber{
	margin-top:0.7em;
	margin-right:0.5em;
    display: block;
    text-indent: -999em;
    overflow: hidden;
    background-color: #fff;
    width: 2px;
    height: 2em;
    transition: width .2s ease-out,background .2s;
}

.homePageGroup .pageGroup .pageNumber.active{
    width: 4px;
    background: #f36d20!important;
}
</style>
</head>
	<body>
        <script> 
            AOS.init(); 
        </script>
		<!-- header-start -->
		<c:import url="header.jsp" charEncoding="UTF-8"></c:import>
		<!-- header-end -->
		
		
		<!-- number -->
		<div class="homePageGroup">
			<div class="pageGroup sentence-container">
				<h3>Page.</h3>
				<a class="pageNumber active" id="num1">1</a>
				<a class="pageNumber" id="num2">2</a>
				<a class="pageNumber" id="num3">3</a>
			</div>
		</div>
		
		<!-- scroll -->
		<a class="scroll"><span> </span></a>
		<span class="scroll-text">Scroll</span>
		
		
		<!-- slider-area-start -->
		<div class="slider-area">
			<div class="sentence-container">
				<div style="overflow:hidden;">
					<h3 class="main_sentence">새로운 비전</h3>
				</div>
				<div>
					<h3 class="main_sentence" style="animation-delay:0.5s;">새로운 가능성</h3>
				</div>
				<h4 class="main_sentence_sub" style="animation-delay:1s;">고객들에게 새로운 시각과 노하우 있는 솔루션을 제공합니다.</h4>
			</div>
			
			<div class="news_container">
				<h3 style="margin-right:2%; color:#fff;">news>></h3>
					<ul class="news_group" id="news_group">
						<c:forEach var="news" items="${news_list}">
							<li>
								<a class="news_sentence" href="/company/news" style="color:#fff;">
									${news.newsTitle}
								</a>
							</li>
						</c:forEach>
					</ul>
				<div class="news_navi">
					<a class="prev">
						<i class="fa fa-backward"></i>
					</a>
					<a class="next">
						<i class="fa fa-forward"></i>
					</a>
					<a class="pause" id="pause" >
						<i class="fa fa-pause" id="pause_icon"></i>
					</a>
				</div>
			</div>
			
			<c:import url="header_main_pc.jsp" charEncoding="UTF-8"></c:import>
			<div class="slider-active owl-carousel">
				<div class="single-slider bg-img-1">
				</div>
				<div class="single-slider bg-img-2">
				</div>
				<div class="single-slider bg-img-3">
				</div>
			</div>
			<!-- brand-area-start -->
		</div>
		<!-- slider-area-end -->
		
		<div class="slider-area">
			<img src="/resources/img/background-img/bg-img-2.jpg" style="height:100vh; max-width:100%">
		</div>

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
	
 	/* 페이지 표시 */
 	if(page == "1"){
 		$("#num1").addClass("active");
 		$("#num2").removeClass("active");
 	}else if(page == "2"){
 		$("#num1").removeClass("active");
 		$("#num2").addClass("active");
 		$("#num3").removeClass("active");
 	}else if(page == "3"){
 		$("#num1").removeClass("active");
 		$("#num2").removeClass("active");
 		$("#num3").addClass("active");
 	}
});

		jQuery(function($){
		    var news_group = function(){
		        timer = setTimeout(function(){
		            $('#news_group li:first').animate( {marginTop: '-20px'}, 800, function(){
		                $(this).detach().appendTo('ul#news_group').removeAttr('style');
		            });
		            news_group();
		        }, 2000);         
		      };
		      
		// 0번 이전 기능
		      $(document).on('click','.prev',function(){
		        clearTimeout(timer);
		       $('#news_group li:first').prependTo($('#news_group')).animate({marginTop: '+20px'}, 500, function(){
                   $('#news_group li:last').detach().prependTo('ul#news_group').removeAttr('style');
                    $(this).removeAttr('style');
                });
		        news_group();
		        if($('#pause_icon').hasClass("fa-play") == true){
		          $('#pause_icon').addClass('fa-pause');
		          $("#pause_icon").removeClass("fa-play");
		        };
		      }); // 0번 기능 끝
		  
		// 1. 클릭하면 다음 요소 보여주기... 클릭할 경우 setTimeout 을 clearTimeout 해줘야 하는데 어떻게 하지..
		      $(document).on('click','.next',function(){
		            clearTimeout(timer);
		            $('#news_group li:first').animate( {marginTop: '-20px'}, 500, function()
		                    {
		                        $(this).detach().appendTo('ul#news_group').removeAttr('style');
		                    });
		            news_group();
		            //3 함수와 연계 시작
		            if($('#pause_icon').hasClass("fa-play") == true){
				          $('#pause_icon').addClass('fa-pause');
				          $("#pause_icon").removeClass("fa-play");
		            }; //3 함수와 연계
		          }); // next 끝. timer 를 전연변수보다 지역변수 사용하는게 나을 것 같은데 방법을 모르겠네요.

		  //2. 재생정지기능 시작, 아직 다음 기능과 연동은 안됨...그래서 3을 만듦
		  var autoplay = true;
		      $(document).on('click','#pause',function(){
		            if(autoplay==true){
		              clearTimeout(timer);
		              $('#pause_icon').removeClass('fa-pause');
			          $("#pause_icon").addClass("fa-play");
		              autoplay=false;
		              clearTimeout(timer);
		            }else{
		              autoplay=true;
		              $('#pause_icon').addClass('fa-pause');
			          $("#pause_icon").removeClass("fa-play");
		              news_group();
		              clearTimeout(timer);
		            }
		          }); 
		  // 재생정지기능 끝  
		   
		          
		  // 3. 재생정지 함수 시작. 2와 기능 동일함.
		    var news_group_pause = function()
		  {
		    $('#pause').click(function(){
		      $this = $(this);
		      if($('#pause_icon').hasClass("fa-pause") == true){
	              $('#pause_icon').removeClass('fa-pause');
		          $("#pause_icon").addClass("fa-play");
		        clearTimeout(timer);
		      }
		      else {
		        clearTimeout(timer);
		        news_group();
	              $('#pause_icon').addClass('fa-pause');
		          $("#pause_icon").removeClass("fa-play");
		      }
		    });
		   
		  };
		  news_group_pause();
		  //3 재생정지 함수 끝
		  
		  //4 마우스를 올렸을 때 기능 정지
		  var news_group_over = function()
		  {
		    $('#news_group').mouseover(function(){
		      clearTimeout(timer);
		    });
		    $('#news_group').mouseout(function(){
		      news_group();
		    });  
		  };
  		news_group_over();
		  // 4 끝
	    news_group();
		    
		});
</script>

<script>


</script>
</html>