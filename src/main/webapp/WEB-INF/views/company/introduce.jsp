<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>New Vision ENG</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="/resources/img/nvicon.png">
    
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
    <!-- <link rel="stylesheet" href="resources/css/responsive.css"> -->
    
<style>
@media (min-width: 991px){
	.about-area .section-title {
	    padding-left: 56px;
	}
}
</style> 

<style>
@media ( max-width : 767px) {
	.organization_img{
		content: url(/resources/img/company/organization_mobile2.png);
	}
	.text-heading{
		display: none;
	}
}

</style>   
</head>
<body>
		<!-- header.jsp import -->
   <c:import url="../header.jsp" charEncoding="UTF-8"></c:import>

	<!-- breadcrumb-start -->
	<section class="breadcrumb breadcrumb_bg banner-bg-1 overlay2 ptb200">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 offset-lg-1">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item">
							<h2>회사개요</h2>
							<p style="opacity: 0.6">
								New Vision ENG. Company
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb-end -->
	
	  <!-- about start -->
    <div class="about-area section-padding">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-7 col-md-12 col-lg-6">
                    <div class="about-thumb">
                        <img src="/resources/img/company/NEWVISIONENG.jpg" alt="">
                    </div>
                </div>
                <div class="col-xl-5 col-md-12 col-lg-6">
                    <div class="section-title">
                        <span>About Company</span>
                        <h3 style="font-weight: bold;">(주) 뉴비젼이엔지</h3>
                        <p class="para-text" style="margin-bottom: 25px;">
                        	  &nbsp;(주)뉴비젼이엔지는 1996년 신영상엔지니어링으로 설립되어, 세계 최고 수준의 영상 기술을 기반으로 CCTV영상 주변기기 및 SYSTEM 설계와 설치 사업을 중심으로 하는 기업입니다.
                        	    또한, 정보통신공사와 전자파용 특수 CCTV SYSTEM 등 사업의 다각화를 이루고 있으며 군사시설, 공공기관, 민간기업 등 다양한 영역의 고객들에게 솔루션을 제공하고 있습니다.
                        	    특히 군부대들과의 오랜기간 지속적인 파트너쉽을 통해 두터운 신뢰성을 기반으로 적시에 적합한 솔루션을 제공하고, 풍부한 경험과 전문성을 바탕으로 시장을 선도하고 있습니다.
                        </p>
                        <div class="name" >
                        	<div style="text-align: right;margin-right: 5%;">(주)뉴비젼이엔지 대표이사 전대순</div>
                            <!-- <img src="/resources/img/company/name.png" alt=""> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- about end -->
    <div class="container">
		<section class="sample-text-area" style="padding: 5% 0 1% 0;">
			<div class="container box_1170" style="border-top: 2px dotted #eee;">
				<br>
				<h3 class="text-heading">Organization</h3>
			</div>
		</section>	
		<section style="padding: 5% 0;"	>
			<div class="container" style="padding-bottom:20%;">
				<img class="organization_img" src="/resources/img/company/organization2.png" style="width:100%;">
			</div>
		</section>
    </div>		
	<c:import url="../footer.jsp" charEncoding="UTF-8"></c:import>
	<script>
	$(function () { 
		
		addClassName1();
		
		$( '.header-area' ).on( "mouseleave", function () {
			addClassName1();
		})
	
	});
	</script>
	
</body>


</html>