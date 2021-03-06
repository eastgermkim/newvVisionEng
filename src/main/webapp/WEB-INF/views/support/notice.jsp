<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

<!-- 스타일 -->
<style>
.board{
	padding: 0% 0%;
	word-break: keep-all;
    word-wrap: break-word;
}
.small-width-page{
		display:none;
	}
</style>

<style>
.board_list {
    width: 100%;
    border-top: 2px solid #222;
    border-bottom: 1px solid #222;
    overflow: hidden;
    box-sizing: border-box;
}
.board_list>.table {
    width: 100%;
    margin-bottom: -1px;
    border-spacing: 0;
    display: table;
    table-layout: fixed;
    position: relative;
}

.board_list>.table .tr {
    display: table-row;
    position: relative;
}
.board_list>.table .tr>div {
    padding: 15px 0;
    border-bottom: 1px solid #ccc;
    font-weight: 300;
   	font-size: 0.9em;
    line-height: 1.4;
    color: #444;
    letter-spacing: -0.025em;
    text-align: center;
    box-sizing: border-box;
    display: table-cell;
    vertical-align: middle;
    position: relative;
}
.board_list>.table .thead>div {
    background-color: #f8f8f8;
    font-weight: 400;
    color: #222;
    position: relative;
}
.board_list>.table .tr>.title {
    padding: 0 20px;
    text-align: left;
}
.board_list>.table .tr>.title>a {
    max-width: 93%;
    font-weight: 500;
    font-size: 1.05em;
    cursor: pointer;
    display: inline-block;
    vertical-align: top;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    text-decoration: none;
}

@media only screen and (max-width : 991.5px) {

/* Board List Style */
	.board_list>.table .thead,
	.board_list>.table .tr>.num{display:none !important;}

	.board_list>.table .tr{padding:15px 0; border-bottom:1px solid #d9d9d9; display:block;}
	.board_list>.table .tr>div{padding:0; border-bottom:none; text-align: left; display:block;}
	
	.board_list>.table .tr>.etc{padding:15px 0 0 21px; display:inline-block;}
	.board_list>.table .tr>.etc+.etc:before{content: ""; width:1px; height:18px; background-color: #ccc; font-size:0; line-height:0; position: absolute; left:9px; top:15px;}

	.board_list>.table .tr>.stat{padding:0; position: absolute; right:20px; bottom:10px; display:inline-block;}
	.board_list>.table .tr>.stat>.icon{width:auto; height:35px; padding:0 7px; font-size:18px; line-height:33px;}
	.board_list>.table .tr>.stat>.icon.end{}
}

@media only screen and (max-width: 767.5px)
{
	.board_list>.table .thead,
	.board_list>.table .tr>.num{display:none !important;}

	.board_list>.table .tr{padding:15px 0; border-bottom:1px solid #d9d9d9; display:block;}
	.board_list>.table .tr>div{padding:0; border-bottom:none; font-size:0.8em; text-align: left; display:block;}

	.board_list>.table .tr>.title{padding: 0 10px;}
	.board_list>.table .tr>.title>a{font-size: 1.1em}

	.board_list>.table .tr>.etc{padding:7px 0 0 11px; display:inline-block;}
	.board_list>.table .tr>.etc+.etc:before{content: ""; width:1px; height:9px; margin-top:-0.5px; background-color: #ccc; font-size:0; line-height:0; position: absolute; left:4px; top:50%;}

	.board_list>.table .tr>.stat{padding:0; position: absolute; right:20px; bottom:10px; display:inline-block;}
	.board_list>.table .tr>.stat>.icon{width:auto; height:35px; padding:0 7px; font-size:18px; line-height:33px;}
	.board_list>.table .tr>.stat>.icon.end{}
		
	.small-width-page{
		display:flex;
	}
	.big-width-page{
		display:none;
	}
}

@media (max-width: 575.5px){
	.board {
	    max-width: 95%;
	}
}
</style>


<style>
.genric-btn.primary-border {
    color: black;
    border: 1px solid black;
    margin: 1% 0;
}
.select:hover{
	background-color: #FAFAFA;
}
.pagination .page-item.active .page-link {
	font-weight: 600;
	color:black;
    border-color: black;
}
</style>

<style>
.search_top {
    width: 100%;
    margin-bottom: 10px;
    font-size: 0;
    line-height: 0;
    display: block;
    position: relative;
    text-align: right;
}
.search_top select {
    background: #fff url(/resources/img/elements/bg_select_arr.gif) no-repeat 92% center;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
}
.search_top select+input[type=text], .search_top input[type=text]+input[type=submit] {
    margin-left: -1px;
}
.search_top input[type=text] {
    width: 213px;
}
.search_top select, .search_top input[type=text], .search_top input[type=submit] {
    height: 45px;
    padding: 0 10px;
    background-color: #fff;
    border: 1px solid #ccc;
    font-weight: 300;
    font-size: 1rem;
    line-height: 43px;
    color: #666;
    display: inline-block;
    vertical-align: top;
    box-sizing: border-box;
}
.search_top input[type=submit] {
    width: 90px;
    border-color: #666;
    background-color: #666;
    color: #fff;
    cursor: pointer;
}
.search_top select{
	width: 11%;
}
@media only screen and (max-width: 991px){
	.search_top select {
    width: 15%;
	}	
}
@media only screen and (max-width: 767px){
	.search_top {
	    margin-bottom: 20px;
	    font-size: 0;
	    line-height: 0;
	    display: flex;
	    justify-content: space-between;
	}
	.search_top input[type=text] {
    width: 70%;
    margin: 0 -1px 0 0;
	}
	.search_top select {
    width: 30%;
    background: url(/resources/img/elements/bg_select_arr.gif) no-repeat 91% center;
	}	
}

</style>
</head>

<body>
	<!-- header.jsp import -->
	<c:import url="../header.jsp" charEncoding="UTF-8"></c:import>

	<!-- breadcrumb-start -->
	<section class="breadcrumb breadcrumb_bg banner-bg-4 overlay2 ptb200">
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
	
	<section class="sample-text-area" style="padding: 5% 1% 1%;">
		<div class="container box_1170" style="border-top: 2px dotted #eee;">
			<br>
			<h3 class="text-heading">Notice</h3>
		</div>
	</section>	
	
<section style="margin-bottom:50px;">
<div class="container board">
	<sec:authorize access="isAuthenticated()">
		<div style="text-align: right;">
	       	<a href="/support/notice_write${pageMaker.cri.getListLink()}" class="genric-btn primary-border circle">글 작성하기</a>
	    </div>
	</sec:authorize>

	<form name="search_form" method="get" action="/support/notice">
			<div class="search_top">
				<select name="s_type">
					<option ${pageMaker.cri.s_type == null?"selected":""} value="title">제목</option>
					<option ${pageMaker.cri.s_type == "content"?"selected":""} value="content">내용</option>
					<option ${pageMaker.cri.s_type == "all"?"selected":""} value="all">제목+내용</option>
				</select>
				<input type="text" id="" name="s_keyword" value="${pageMaker.cri.s_keyword}" maxlength="20">
				<input type="submit" name="" value="검색">
			</div>
	</form>

	
	<div class="board_list">
				<div class="table">
					<div class="thead tr">
						<div class="th" style="width:90px;">번호</div>
						<div class="th">제목</div>
						<div class="th" style="width:120px;">등록일</div>
					</div>
					<c:choose>
						<c:when test="${notice_list != null and notice_list.size()>0}">
							<c:forEach items="${notice_list}" var="notice">
							<!-- 데스크탑 -->
								<div class="tr select notice-list" style="cursor:pointer;"  data-notice="${notice.noticeNum}">
									<div class="num">${notice.noticeNum}</div>
									<div class="title"><a>${notice.noticeTitle}</a></div>
									<div class="etc"><fmt:formatDate value="${notice.noticeDate}" pattern="yyyy.MM.dd"/></div>
								</div>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<div class="tr">
								<div class="num"></div>
								<c:choose>
									<c:when test="${pageMaker.cri.s_keyword != null}">
										<div class="title"  style="text-align: center; padding: 20px 0 20px 0; font-size:17px;">
										검색 결과가 없습니다.
										</div>
									</c:when>
									<c:otherwise>
										<div class="title"  style="text-align: center; padding: 20px 0 20px 0; font-size:17px;">
										작성된 글이 없습니다.
										</div>
									</c:otherwise>
								</c:choose>
							</div>
						</c:otherwise>
					</c:choose>	
					
				</div>
			</div>
			
			<!-- 페이징 처리 --> 
	       <form id="pageForm">
				<input type="hidden" name="s_type" value="${pageMaker.cri.s_type}">
				<input type="hidden" name="s_keyword" value="${pageMaker.cri.s_keyword}">
				<input type="hidden" name="page" value="${pageMaker.cri.page}">
	       </form>
<!-- //////////////////////////////////////////////////////////////////////////////////////////////////////// -->
<!-- //////////////////////////////////////////////////////////////////////////////////////////////////////// -->

	<!-- 페이징 처리 --> 
		<!-- 데스크탑(5페이지씩)  -->
		<nav class="blog-pagination justify-content-center d-flex" style="margin-top: 5%;">
			<ul class="big-width-page pagination">
	 			<!-- 이전prev -->
	 			<c:if test="${pageMaker.prev }">
	 				<li class="page-item">
	 					<a href="notice?s_type=${pageMaker.cri.s_type}&s_keyword=${pageMaker.cri.s_keyword}&page=${pageMaker.startPage-1}" class="page-link" aria-label="Previous"> 
							<i class="ti-angle-left"></i>
						</a>
	 				</li>
	 			</c:if>
	 			<!-- 페이지블럭 -->
				<c:forEach var="idx" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
					<!-- 삼항연산자를 사용해서 class로 스타일적용  -->
		 			<li ${pageMaker.cri.page == idx? 'class="page-item active"':'class="page-item"'}>
		 				<a href="notice?s_type=${pageMaker.cri.s_type}&s_keyword=${pageMaker.cri.s_keyword}&page=${idx }" class="page-link">${idx}</a>
		 			</li>
				</c:forEach>
	 			<!-- 다음next -->
	 			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
	 				<li class="page-item">
	 					<a href="notice?s_type=${pageMaker.cri.s_type}&s_keyword=${pageMaker.cri.s_keyword}&page=${pageMaker.endPage+1}" class="page-link" aria-label="Next">
	 						<i class="ti-angle-right"></i>
	 					</a>
	 				</li>
	 			</c:if>
	 		</ul>
		
			<!-- 모바일(1페이지씩)  -->
			<ul class="small-width-page pagination">
	 			<!-- 이전prev -->
	 			<c:if test="${pageMaker.cri.page>1}">
	 				<li class="page-item">
	 					<a href="notice?s_type=${pageMaker.cri.s_type}&s_keyword=${pageMaker.cri.s_keyword}&page=${pageMaker.cri.page-1}" class="page-link" aria-label="Previous"> 
							<i class="ti-angle-left"></i>
						</a>
	 				</li>
	 			</c:if>
	 			<!-- 페이지블럭 -->
					<!-- 삼항연산자를 사용해서 class로 스타일적용  -->
		 			<li class="page-item active"}>
		 				<a class="page-link">${pageMaker.cri.page}</a>
		 			</li>
	 			<!-- 다음next -->
	 			<c:if test="${pageMaker.cri.page<pageMaker.realEnd}">
	 				<li class="page-item">
	 					<a href="notice?s_type=${pageMaker.cri.s_type}&s_keyword=${pageMaker.cri.s_keyword}&page=${pageMaker.cri.page+1}" class="page-link" aria-label="Next">
	 						<i class="ti-angle-right"></i>
	 					</a>
	 				</li>
	 			</c:if>
	 		</ul>
		</nav>

 <!-- //////////////////////////////////////////////////////////////////////////////////////////////// -->
 	
 	</div>
 <br>
 <br>
 <br>
 </section>
	<c:import url="../footer.jsp" charEncoding="UTF-8"></c:import>

	<script>
	$(function () { 
		
		addClassName4();
		
		$( '.header-area' ).on( "mouseleave", function () {
			addClassName4();
		})
	
	});
	</script>
	

</body>
	<script>
	var pageForm = $("#pageForm");
	
	$(".notice-list").on("click",function(e){
		var notice = $(this).data("notice");
		
		e.preventDefault();
		pageForm.attr("action","notice/"+notice);
		pageForm.submit();
	})
	</script>
</html>