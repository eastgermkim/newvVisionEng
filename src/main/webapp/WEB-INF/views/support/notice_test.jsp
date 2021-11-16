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

<script
	src="${pageContext.request.contextPath}/resources/js/ckeditor5/ckeditor.js"></script>
<style>
.board {
	padding: 7% 0%;
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

.ck.ck-editor__editable_inline {
    border: none; 
}
</style>

<style>
.single-input {
	border-bottom: inset;
	background: none;
}
u {
	color:inherit;
}
</style>


</head>
<body data-editor="ClassicEditor" data-collaboration="false"
	data-revision-history="false">
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
							<p style="opacity: 0.6">New Vision ENG. Notice</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb-end -->


	<div class="container board">
		<form method="post" action="/support/notice_write" enctype="multipart/form-data">

			<table>
				<thead>
					<!-- 데스크탑 -->
					<tr>
						<th><h4 style="margin-bottom: 0;">제목</h4></th>
						<th><input class="single-input" name="noticeTitle"
							type="text" value="${notice.noticeTitle}" readonly></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th><h4 style="margin-bottom: 0;">작성자</h4></th>
						<th><input class="single-input" name="noticeWriter"
							type="text" value="${notice.noticeWriter}" readonly></th>
					</tr>
					<!-- <tr>
						<th><h4 style="margin-bottom: 0;">파일첨부</h4></th>
						<th><input type="file"></th>
					</tr> -->
				</tbody>
			</table>
			<div id="editor" rows="5" name="noticeContents"-
				style="display: none;" readonly>${notice.noticeContents}</div>
				
				
				<!-- DB에서 가지고 올때 변환??? --> 
					<!--<div id="contents"></div>
							<script>
								var tmpCont = "${notice.noticeContents}";
								tmpCont = tmpCont.replaceAll("&lt;","<");
								tmpCont = tmpCont.replaceAll("&gt;",">");
								tmpCont = tmpCont.replaceAll("&amp;lt;","<");
								tmpCont = tmpCont.replaceAll("&amp;gt;",">");
								tmpCont = tmpCont.replaceAll("&amp;nbsp;"," ");
								tmpCont = tmpCont.replaceAll("&amp;amp;","&");
								document.getElementById('contents').innerHTML=tmpCont
								
							</script> -->
		</form>
 </div>

	<c:import url="../footer2.jsp" charEncoding="UTF-8"></c:import>

	<script>
	ClassicEditor
    .create( document.querySelector( '#editor' ), {
        // ...
    } )
    .then( editor => {
        /* 읽기모드로 바꾸기 */
        editor.isReadOnly = true;

        /* 툴바 없애기 */
        const toolbarElement = editor.ui.view.toolbar.element;
        toolbarElement.style.display = 'none';
    } )
    .catch( error => {
        console.log( error );
    } );
		</script>
</body>

</html>