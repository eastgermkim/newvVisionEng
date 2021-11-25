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

<script src="${pageContext.request.contextPath}/resources/js/ckeditor5/ckeditor.js"></script>
<style>
.board {
	padding: 4% 0%;
}

.align-left {
	text-align: left;
	width: 62%;
}

.small-width-page {
	display: none;
}

.small-width-table {
	display: none;
}

.small-width-title {
	font-size: large;
	font-weight: 500;
}

@media ( max-width : 767.5px) {
	.align-left {
		width: 80%
	}
	.big-width-page {
		display: none;
	}
	.small-width-page {
		display: flex;
	}
	.big-width-table {
		display: none;
	}
	.small-width-table {
		display: table-row;
	}
	.board {
		padding: 7% 3%;
	}
}

table {
	width: 100%;
	border-collapse: collapse;
	line-height: 2em;
}

table td, th {
	border-collapse: collapse;
	text-align: center;
	padding: 1em;
	font-weight: 300;
}

tbody {
	font-size: 0.95em;
}

th {
	padding: 1% 1%;
	font-weight: 400;
	border-top: 1px solid;
	border-bottom: 1px solid #d8d8d8;
}

td {
	border-bottom: 1px solid #d8d8d8;
}

a {
	text-decoration: none;
	color: black;
}

a:hover {
	color: #ED1E23;
}

a:active {
	color: blue;
}

.pagination .page-item.active .page-link {
	font-weight: 600;
	color: darkblue;
	border-color: darkblue;
}
</style>

<style>
.ck.ck-editor {
	margin: 3% 0;
}

.ck-editor__editable {
	min-height: 500px;
}
</style>

<style>
.single-input {
	/* border-bottom: inset; */
	background: none;
}

u {
	color: inherit;
}

.ck-splitbutton {
	display: none;
}
</style>

<style>
.genric-btn.primary-border {
	color: black;
	border: 1px solid black;
	font-size: 1em;
	margin: 1% 0;
}

.genric-btn.primary-border:hover {
	color: black;
	background: #D8D8D8;
}

.genric-btn.primary {
	font-size: 1em;
}

.genric-btn.primary:hover {
	background: #ED1E23;
	color: #fff;
}
</style>

</head>
<body data-editor="ClassicEditor" data-collaboration="false"
	data-revision-history="false">
	<!-- header.jsp import -->
	<c:import url="../header2.jsp" charEncoding="UTF-8"></c:import>
	<script>
		addClassName1();
	</script>

	<!-- breadcrumb-start -->
	<section class="breadcrumb breadcrumb_bg banner-bg-1 overlay2 ptb200">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 offset-lg-1">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item">
							<h2>보도자료 작성</h2>
							<p style="opacity: 0.6">New Vision ENG. Notice</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb-end -->


	<div class="container board">
		<form method="post" action="/company/news_writeOK" enctype="multipart/form-data">
			<table>
				<thead>
					<tr>
						<th class="big-width-table"><span>기사 제목</span></th>
						<th><input class="single-input" name="newsTitle" type="text" placeholder="기사 제목을 입력하세요"></th>
					</tr>
					<tr>
						<th class="big-width-table"><span>기사 부제목</span></th>
						<th><input class="single-input" name="newsSubTitle" type="text" placeholder="기사 부제목을 입력하세요"></th>
					</tr>
					<tr>
						<th class="big-width-table"><span>기사 날짜</span></th>
						<th><input class="single-input" name="newsDate" type="text" placeholder="기사 날짜 입력(ex.OOOO-OO-OO / 년-월-일)"></th>
					</tr>
					<tr>
						<th class="big-width-table"><span>기사 링크</span></th>
						<th><input class="single-input" name="newsDate" type="text" placeholder="기사 링크가 없으면 비워주세요"></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th class="big-width-table"><span>작성자</span></th>
						<th><input class="single-input" name="newsWriter"
							type="text" placeholder="작성자를 입력하세요(ex. 관리자)"></th>
					</tr>
					<tr>
						<th class="big-width-table"><span>파일첨부</span>
						<br>
							<a href="#this" onclick="addFile()" style="color:#f36d20;">+ 	파일 추가</a>
						</th>
						<th>
							<div class="form-group" id="file-list">
								<div class="file-group" style="text-align: left;">
									<input type="file" name="file"><a href='#this' name='file-delete' style='color: red;'>삭제</a>
								</div>
							</div>
						</th>
						<!-- <th><input type="file" name="file" style="float: left;font-size: small;"></th> -->
					</tr>
				</tbody>
			</table>
			<textarea id="editor" rows="5" name="newsContents" placeholder="내용을 입력하세요" style="display: none;"></textarea>
			<hr>
			<div class="col-12" style="text-align: center; padding: 1%;">
				<input type="submit" value="등록" class="genric-btn primary circle"
					style="margin-right: 1%;"> <a href="/support/notice"
					class="genric-btn primary-border circle">목록으로 돌아가기</a>
			</div>
		</form>
	</div>





	<c:import url="../footer2.jsp" charEncoding="UTF-8"></c:import>
	
	<!-- CK에디터 속 이미지 삽입시 마지막 경로 넣으세요 -->
	<script>
	var your_path="news_temp_img"
	</script>
	
	<!-- CK에디터 -->
	<%@ include file = "../CKeditorJS.jsp" %>
	
	<!-- 파일 다중 업로드 -->
	<script type="text/javascript">
    $(document).ready(function() {
        $("a[name='file-delete']").on("click", function(e) {
            e.preventDefault();
            deleteFile($(this));
        });
    })
 
    function addFile() {
        var str = 
      "<div class='file-group' style='text-align: left;'><input type='file' name='file'><a href='#this' name='file-delete' style='color: red;'>삭제</a></div>";
        $("#file-list").append(str);
        $("a[name='file-delete']").on("click", function(e) {
            e.preventDefault();
            deleteFile($(this));
        });
    }
 
    function deleteFile(obj) {
        obj.parent().remove();
    }

</script>
</body>

</html>