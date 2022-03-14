<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page session="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>뉴비젼이엔지</title>

<!-- google search -->
<meta name="google-site-verification" content="ACcIOBWX3_Sgcm_4XAJ7qz2Tzgf4z1qQDR1qJP2x4sM" />
<meta name="keyword" content="뉴비젼이엔지,newvisioneng,new vision eng,CCTV">
<meta name="description" content="(주)뉴비젼이엔지는 세계 최고 수준의 영상 기술을 기반으로 CCTV영상 주변기기 및 SYSTEM 설계와 설치 사업을 중심으로 하는 기업입니다.">
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
<!-- <link rel="stylesheet" href="resources/css/responsive.css"> -->

<script
	src="${pageContext.request.contextPath}/resources/js/ckeditor5/ckeditor.js"></script>
<style>
.link{
	display: flex;
    justify-content: space-between;
    width: 100%;
}

.ti-angle-up, .ti-angle-down{
	padding-right:6px;
}

.pagination .page-item.active .page-link {
	font-weight: 600;
	color: darkblue;
	border-color: darkblue;
}

.prev-post-link{
	display:flex;
	border-style:solid;
	border-color:#ddd;
	border-width:0.5px 0px 0.5px 0px;
	color:#666;
}

.next-post-link{
	display:flex;
	border-style:solid;
	border-color:#ddd;
	border-width:0px 0px 0.5px 0px;
	color:#666;
}

.link-title{
	width:15%!important;
	flex: none;
    display: flex;
    align-items: center;
    justify-content: center;
    width: 100px;
    padding: 11px 0px;
    background-color: #f8f8f8;
    font-weight:400;
    font-size:15px;
}

.link-body{
    display: flex;
    align-items: center;
    flex: 1 1 auto;
    width: 0%;
    height: 65px;
    padding: 20px;
    height: 70px;
    background-color:#fff;
    font-color:#ddd;
}

.link-body .link{
	color: #666;
}

.board {
	padding: 4% 0%;
}

.board-view-header{
    display: table;
    width: 100%;
    height: 180px;
    padding: 25px 0;
    border-top: 1px solid #222;
    border-bottom: 1px solid #ddd;
    text-align: center;
}

.board-view-header .inner{
	display: table-cell;
    vertical-align: middle;
}


.board-view-header .info-wrap{
	display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 14px;
}

.board-view-header .info-wrap .item{
    display: inline-block;
    font-size: 16px;
    color: #666;
    font-weight:300;
}

.board-view-header .item:not(:last-child)::after{
    content: "";
    display: inline-block;
    width: 1px;
    height: 13px;
    margin: 0 16px;
    background-color: #ddd;
}

.title-wrap{
	line-height: 1.3;
    padding: 0 20px;
    margin: 0 auto;
    font-size: 22px;
    font-weight: 500;
    padding-bottom: 4px;
}

.board-file-wrap{
    display: flex;
    position: relative;
    height: 100%;
    border-top: 1px solid #ddd;
}

.board-file-title{
	flex: none;
    display: flex;
    align-items: center;
    justify-content: center;
    width: 15%;
    padding: 15px 0;
    font-weight: 400;
    color: #666;
}

.board-file-items{
	display: flex;
    flex-wrap: wrap;
    align-items: center;
    width: 100%;
    padding: 15px 0;
    color: #666;
    font-weight:300;
}

.btn-list{
	display: flex;
    justify-content: end;
    margin: -5px;
    padding-top: 30px;
    overflow: hidden;
    text-align: center;
}

.bottomNewsTitle{
overflow: hidden;
   text-overflow: ellipsis;
   white-space: nowrap;
}

@media(max-width:991px){
	.container{
	width:95%!important;
	}
	.bottomNewsDate{
	display:none;
	}
}
@media(max-width:768px){
	.btn-list{
	justify-content:center!important;
	}
	.ti-angle-up, .ti-angle-down{
	display:none;
	}
	.toList{
	width:100%!important;
	}
	.board-file-title{
	font-size:70%!important;
	}
	.board-file-items{
	font-size:70%!important;
	}
	.link-title{
	font-size:90%;
	}
	.link-body{
	font-size:90%;
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
	color: #f36d20;
}

a:active {
	color: blue;
}

.board-file-items a{
	color: #666;
}

.board-file-items a:hover{
	color: #f36d20;
}

.board-file-items a:active{
	color: blue;
}

.link-body a{
	color: #666;
}

.link-body a:hover{
	color: #f36d20;
}

.link-body a:active{
	color: blue;
}

dd{
	margin-bottom:0!important;
}
dl{
	margin-bottom:0!important;
}
</style>

<style>
.ck.ck-editor {
	margin: 3% 0;
}

/* 에디터 최소 크기 */
.ck-editor__editable {
	min-height: 500px;
}
/* 이미지 캡션에는 크기 설정 안하기*/
.ck-editor__nested-editable {
    min-height: initial;
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
</style>


</head>
<body data-editor="ClassicEditor" data-collaboration="false"
	data-revision-history="false">
	<!-- header.jsp import -->
	<c:import url="../header.jsp" charEncoding="UTF-8"></c:import>

	<!-- breadcrumb-start -->
	<section class="breadcrumb breadcrumb_bg banner-bg-1 overlay2 ptb200">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 offset-lg-1">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item">
							<h2>보도현황</h2>
							<p style="opacity: 0.6">New Vision ENG. News</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb-end -->

	<div class="container board">
		<form method="post" action="/company/news_delete" enctype="multipart/form-data">
		<c:if test="${admin_Login_id != null and admin_Login_id != ''}">
			<div style="text-align:right;">
				<a href="/company/news_modify/${news.newsNum}${cri.getListLink()}" class="genric-btn primary-border circle" style="margin-bottom:20px;">글 수정하기</a>
				<input type="submit" value="삭제" class="genric-btn primary circle newsDelete" style="margin-right: 1%;">
				
				<input type="hidden" name="newsNum" value="${news.newsNum}">
				<input type="hidden" name="page" value="${cri.page}">
				<input type="hidden" name="pageSize" value="${cri.pageSize}"> 
			</div>
		</c:if>
		
			<div class="board-view-header">
				<div class="inner">
					<ul class="info-wrap">
						<li class="item">${news.newsWriter}</li>
						<li class="item">${news.newsDate}</li>
					</ul>
					<h3 class="title-wrap">${news.newsTitle}</h3>
				</div>
			</div>
			<div id="editor" rows="5" name="newsContents" style="display: none;" readonly>${news.newsContents}</div>
			</form>
				<div class="board-view-bottom">
					<div class="board-file-wrap">
						<div class="board-file-title">첨부파일</div>
						<div class="board-file-items">
						<c:choose>
								<c:when test="${file != null and fn:length(file)>0 }">
									<c:forEach var="file" items="${file}">
									<div>
										<i class="ti-link" style="padding-left:20px;"></i>
										<a href="#" onclick="fn_fileDown('${file.SYSTEMNAME}','${file.ORGNAME}'); return false;">${file.ORGNAME}</a><br>
									</div>
										<input type="hidden" value="${file.SYSTEMNAME}" name="file_systemname">
									</c:forEach>
								</c:when>
								<c:otherwise>
									<span style="color: lightgrey; padding-left:20px;">첨부 파일이 없습니다.</span>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
					<div class="prevnext-btn-style">
							<c:choose>
								<c:when test="${news_prev.newsNum == null}">
									<dl class="prev-post-link" style="opacity:0.4;">
										<dt class="link-title prev">
											<i class="ti-angle-up"></i>이전글
										</dt>
										<dd class="link-body">
										<a class="link">
											<span>이전 기사가 없습니다.</span>
										</a>
										</dd>
									</dl>
								</c:when>
								<c:otherwise>
									<dl class="prev-post-link">
										<dt class="link-title prev">
											<i class="ti-angle-up"></i>이전글
										</dt>
										<dd class="link-body">
										<a class="link" href="${news_prev.newsNum}">
											<span class="bottomNewsTitle">${news_prev.newsTitle}</span>
											<span class="bottomNewsDate" style="font-weight:200;">${news_prev.newsDate}</span>
										</a>
										</dd>
									</dl>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${news_next.newsNum == null}">
									<dl class="next-post-link" style="opacity:0.4;">
										<dt class="link-title next">
											<i class="ti-angle-down"></i>다음글
										</dt>
										<dd class="link-body">
											<a class="link">
												<span>다음 기사가 없습니다.</span>
											</a>
										</dd>
									</dl>
								</c:when>
								<c:otherwise>
									<dl class="next-post-link">
										<dt class="link-title next">
											<i class="ti-angle-down"></i>다음글
										</dt>
										<dd class="link-body">
											<a class="link" href="${news_next.newsNum}">
												<span class="bottomNewsTitle">${news_next.newsTitle}</span>
												<span class="bottomNewsDate" style="font-weight:200;">${news_next.newsDate}</span>
											</a>
										</dd>
									</dl>
								</c:otherwise>
							</c:choose>
						<div class="btn-list">
							<a href="/company/news${cri.getListLink()}" class="genric-btn primary-border e-large toList" style="width:200px; font-size:15px;">목록으로</a>
						</div>
					</div>
				</div>
			<form name="readForm" role="form" method="post">
				<input type="hidden" id="FILE_SYSTEMNAME" name="FILE_SYSTEMNAME" value=""> 
				<input type="hidden" id="FILE_ORGNAME" name="FILE_ORGNAME" value=""> 
			</form>
			
	        <!-- criteria start -->
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

	<script>
	function fn_fileDown(SYSTEMNAME,ORGNAME){
		var formObj = $("form[name='readForm']");
		$("#FILE_SYSTEMNAME").attr("value", SYSTEMNAME);
		$("#FILE_ORGNAME").attr("value", ORGNAME);
		formObj.attr("action", "/company/newsFiledown");
		formObj.submit();
	}
	</script>
	
	<script>
	$(".newsDelete").click(function() {
		if(!confirm("해당 기사가 삭제됩니다.")){
			return false;
		}else{
			alert("해당 기사가 삭제되었습니다.")
		}
	})
	
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