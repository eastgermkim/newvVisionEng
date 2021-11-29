<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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

.ck.ck-editor__editable_inline {
    border: none; 
}
</style>

<style>
.single-input {
	/* border-bottom: inset; */
	background: none;
}
u {
	color:inherit;
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
		<form method="post" action="/support/notice_modify" enctype="multipart/form-data">
			noticeNum : ${notice.noticeNum}
			<table>
				<thead>
					<!-- 데스크탑 -->
					<tr>
						<th class="big-width-table"><span>제목</span></th>
						<th><input class="single-input" name="noticeTitle"
							type="text" value="${notice.noticeTitle}" readonly></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th class="big-width-table"><span>작성자</span></th>
						<th><input class="single-input" name="noticeWriter"
							type="text" value="${notice.noticeWriter}" readonly></th>
					</tr>
					<tr>
						<th class="big-width-table"><span>첨부파일</span></th>
						<th style="text-align:left;">
							<div style="padding: 0 20px;">
							<c:choose>
								<c:when test="${file != null and fn:length(file)>0 }">
									<c:forEach var="file" items="${file}">
										<a href="#" onclick="fn_fileDown('${file.SYSTEMNAME}','${file.ORGNAME}'); return false;" style="color: mediumblue;">${file.ORGNAME}</a><br>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<span style="color: lightgrey;">첨부 파일이 없습니다.</span>
								</c:otherwise>
							</c:choose>
							</div>
						</th>
					</tr>
				</tbody>
			</table>
			
			<div id="editor" rows="5" name="noticeContents"-
				style="display: none;" readonly>${notice.noticeContents}</div>
			
			<hr>
			
			<div class="col-12" style="text-align: center; padding: 1%;">
				<input type="submit" value="수정하기" class="genric-btn primary circle"
					style="margin-right: 1%;"> <a href="/support/notice"
					class="genric-btn primary-border circle">목록으로 돌아가기</a>
			</div>
		</form>
		
				<form name="readForm" role="form" method="post">
					<input type="hidden" id="FILE_SYSTEMNAME" name="FILE_SYSTEMNAME" value=""> 
					<input type="hidden" id="FILE_ORGNAME" name="FILE_ORGNAME" value=""> 
				</form>
				
 </div>

	<c:import url="../footer2.jsp" charEncoding="UTF-8"></c:import>

	<script>
	function fn_fileDown(SYSTEMNAME,ORGNAME){
		var formObj = $("form[name='readForm']");
		$("#FILE_SYSTEMNAME").attr("value", SYSTEMNAME);
		$("#FILE_ORGNAME").attr("value", ORGNAME);
		formObj.attr("action", "/support/noticeFiledown");
		formObj.submit();
	}
	
	</script>

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