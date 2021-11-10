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


<style>

.board{
	padding: 7% 0%;
}

.align-left{
	text-align: left;
	width:62%;
}

.small-width-page{
		display:none;
	}

.small-width-table{
		display:none;
	}

.small-width-title{
	font-size: large;
	font-weight: 500;
}

@media(max-width : 767.5px){
	.align-left{
		width: 80%
	}
	.big-width-page{
		display:none;
	}
	.small-width-page{
		display:flex;
	}
	.big-width-table{
		display:none;
	}
	.small-width-table{
		display:table-row;
	}
	.board{
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
tbody{
	font-size: 0.95em;
}
th {
	padding: 1% 1%;
	font-weight: 400;
	border-top: 1px solid;
	border-bottom: 1px solid #d8d8d8;
}
td{
	border-bottom: 1px solid #d8d8d8;
}

a {
	text-decoration: none;
	color: black;
}

a:hover {
	color:#ED1E23;
}
a:active{
	color:blue;
}



.pagination .page-item.active .page-link {
	font-weight: 600;
	color:darkblue;
    border-color: darkblue;
}


</style>
	
	<script src="/resources/js/ckeditor5-build-classic/ckeditor.js"></script>
	<style>
		.ck.ck-editor{
			margin: 5% 0;
		}
	
		.ck-editor__editable{
			min-height:300px;
		}
	</style>
	
	
</head>
<body  data-editor="ClassicEditor" data-collaboration="false" data-revision-history="false">
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
		
			 
			<div class="container board">
				<form method="post" action="/support/notice_write" >
				
				<table>
					<thead>
						<!-- 데스크탑 -->
						<tr>
							<th><h2>제목 : </h2></th>
							<th><input name="noticetitle" type="text" placeholder="제목을 입력하세요"></th>
						</tr>
					</thead>
					<tbody>
						<!-- 데스크탑 -->
							<tr>
								<td>1</td>
							</tr>
					</tbody>
				</table>
				
				
				
				
				<div>
					<h4>제목</h4>
					<input name="noticetitle" type="text" placeholder="제목을 입력하세요">
				</div>
				<hr>
				<div>
					<h4>작성자</h4>
					<input name="noticewriter" type="text" placeholder="작성자를 입력하세요">
				</div>
				<hr>
				<textarea class="editor" rows="5" name="noticeContents" placeholder = "내용을 입력하세요"></textarea>
			
				</form>
			</div>
	
	
	
				
			<script>
				ClassicEditor
				.create( document.querySelector( '.editor' ), {
					licenseKey: '',
				} )
				.then( editor => {
					window.editor = editor;
				} )
				.catch( error => {
					console.error( 'Oops, something went wrong!' );
					console.error( 'Please, report the following error on https://github.com/ckeditor/ckeditor5/issues with the build id and the error stack trace:' );
					console.warn( 'Build id: u2925tptbtqp-4c24hs7u9g3g' );
					console.error( error );
				} );
			</script>
				
<c:import url="../footer2.jsp" charEncoding="UTF-8"></c:import>
</body>


</html>