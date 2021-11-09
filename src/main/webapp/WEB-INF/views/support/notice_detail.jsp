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

	<h1>공지사항 게시글 내용 페이지 입니다.</h1>
	<h2>noticeNum : ${noticeNum}</h2>
	<div class="col-12">
					<form method="post" action="/board/remove">
						<div class="col-12">
							<h4>번호</h4>
							<input name="noticeNum" type="text" readonly>
						</div>
						<hr>
						<div class="col-12">
							<h4>등록일</h4>
							<input name="noticeDate" type="text" readonly>
						</div>
						<hr>
						<div class="col-12">
							<h4>제목</h4>
							<input name="noticeTitle" type="text" readonly>
						</div>
						<div class="col-12">
							<h4>작성자</h4>
							<input name="noticeWriter" type="text" readonly>
						</div>
						<hr>
						<hr>
						<div class="col-12">
							<h4>내용</h4>
							<textarea name="noticeContents" rows="10" style="resize:none;" readonly></textarea>
						</div>
						<hr>
						<div class="col-12">
							<input type="button" value="수정" class="primary" onclick="location.href='/board/modify${cri.getListLink()}&boardnum=${boardnum}'">
							<input type="submit" value="삭제" class="primary">
						</div>
					</form>
				</div>
				
				
				<c:import url="../footer2.jsp" charEncoding="UTF-8"></c:import>
</body>

<script>
// /support/notice/1
/* $(document).ready(
	function(){
		let noticeNum = "${noticeNum}";
		console.log("noticeNum : "+noticeNum);
		$.get(
			"/support/notice/"+noticeNum,
			function(result){
				$("input[name='noticeNum']").val(result.noticeNum);
				$("input[name='noticeWriter']").val(result.noticeWriter);
				$("input[name='noticeTitle']").val(result.noticeTitle);
				$("input[name='noticeDate']").val(result.noticeDate);
				$("textarea[name='noticeContents']").html(result.noticeContents);
				
				console.log("noticeWriter : "+result.noticeWriter);
			}
		).fail(function(xhr,status,e){
			alert("알 수 없는 오류!")
			
		})
	}
); */

</script>

</html>