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
<!-- <link rel="stylesheet" href="resources/css/responsive.css"> -->


</head>
<body>
	<!-- header.jsp import -->
	<c:import url="../header2.jsp" charEncoding="UTF-8"></c:import>
	<script>
		addClassName4();
	</script>

	<!-- breadcrumb-start -->
	<section class="breadcrumb breadcrumb_bg banner-bg-1 overlay2 ptb200">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 offset-lg-1">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item">
							<h2>공지사항</h2>
							<p style="opacity: 0.6">
								New Vision ENG. Notice
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb-end -->
	
	<!--================Blog Area =================-->
   <section class="blog_area single-post-area section-padding">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 posts-list">
               <div class="single-post">
                  <!-- <div class="feature-img">
                     <img class="img-fluid" src="img/blog/single_blog_1.png" alt="">
                  </div> -->
                  
                  <div>
                  	<a href="/support/notice" class="genric-btn default circle">목록으로 돌아가기</a>
                  </div>
                  
                  <div class="blog_details">
                     <h2 name="noticeTitle"></h2>
                     <ul class="blog-info-link mt-3 mb-4">
                        <li><span>noticeNum : ${noticeNum}</span></li>
                        <li><span name="noticeWriter"></span></li>
                        <li><span name="noticeDate"></span></li>
                     </ul>
                     <p class="excert" name="noticeContents">
                     </p>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!--================ Blog Area end =================-->
				
				
				<c:import url="../footer2.jsp" charEncoding="UTF-8"></c:import>
</body>

<script>
// /support/notice/1
 $(document).ready(
	function(){
		let noticeNum = "${noticeNum}";
		console.log("noticeNum : "+noticeNum);
		$.get(
			"/support/notice/get/"+noticeNum,
			function(result){
				$("input[name='noticeNum']").val(result.noticeNum);
				$("input[name='noticeWriter']").val(result.noticeWriter);
				$("input[name='noticeTitle']").val(result.noticeTitle);
				$("input[name='noticeDate']").val(result.noticeDate);
				$("textarea[name='noticeContents']").html(result.noticeContents);
				
				$("h2[name='noticeTitle']").html(result.noticeTitle);
				$("span[name='noticeWriter']").html(result.noticeWriter);
				$("span[name='noticeDate']").html(result.noticeDate);
				$("p[name='noticeContents']").html(result.noticeContents);
				
				console.log("noticeWriter : "+result.noticeWriter);
			}
		).fail(function(xhr,status,e){
			alert("알 수 없는 오류!")
			
		})
	}
);

</script>

</html>