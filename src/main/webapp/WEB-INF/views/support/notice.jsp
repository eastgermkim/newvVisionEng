<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	href="../resources/img/nvicon.png">

<!-- CSS here -->
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="../resources/css/magnific-popup.css">
<link rel="stylesheet" href="../resources/css/font-awesome.min.css">
<link rel="stylesheet" href="../resources/css/themify-icons.css">
<link rel="stylesheet" href="../resources/css/nice-select.css">
<link rel="stylesheet" href="../resources/css/flaticon.css">
<link rel="stylesheet" href="../resources/css/animate.css">
<link rel="stylesheet" href="../resources/css/slicknav.css">
<link rel="stylesheet" href="../resources/css/style.css">
<!-- <link rel="stylesheet" href="resources/css/responsive.css"> -->

<!-- 스타일 -->
<style>
.board{
	padding: 4% 0%;
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
	border-bottom: 1px solid #F2F2F2;
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
tbody tr:hover {
	background-color:#FBF8F8;
}


.pagination .page-item.active .page-link {
	font-weight: 600;
	color:black;
    border-color: black;
}


</style>

<style>
.genric-btn.primary-border {
    color: black;
    border: 1px solid black;
    font-size: 1em;
    margin: 1% 0;
}
</style>

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
	
	
	
<div class="container board">
		
		<div>
        	<a href="/support/notice_write" class="genric-btn primary-border circle">글 작성하기</a>
        </div>
		

<!-- 게시판(실제 사용 예정) ======================================================================================================================== -->
	<!-- 데스크탑+모바일 -->
	 	<table>
			<thead>
				<!-- 데스크탑 -->
				<tr class="big-width-table">
					<th style="width:8%">번호</th>
					<th class="align-left">제목</th>
					<th style="width:14%">등록자</th>
					<th style="width:12%">등록일</th>
				</tr>
				<!-- 모바일 -->
				<tr class="small-width-table">
					<th colspan="2">내용</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${notice_list != null and notice_list.size()>0}">
						<c:forEach items="${notice_list}" var="notice">
						<!-- 데스크탑 -->
							<tr class="big-width-table" onclick="location.href='notice/${notice.noticeNum}'" style="cursor:pointer;">
								<td>${notice.noticeNum}</td>
								<td class="align-left" style="font-weight: 500;">${notice.noticeTitle}</td>
								<td>${notice.noticeWriter}</td>
								<td><fmt:formatDate value="${notice.noticeDate}" pattern="yyyy.MM.dd"/></td>
							</tr>
						<!-- 모바일 -->
							<tr class="small-width-table" onclick="location.href='notice/${notice.noticeNum}'" style="cursor:pointer;">
								<td class="align-left" colspan="2">
									<div class="small-width-title" style="font-weight: 500;">${notice.noticeTitle}</div>
									<div style="color: grey;"><fmt:formatDate value="${notice.noticeDate}" pattern="yyyy.MM.dd"/></div>
								</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="4">
								작성된 게시글이 없습니다.
							</td>
						</tr>
					</c:otherwise>
				</c:choose>							
			</tbody>
		</table>

	
<!-- //////////////////////////////////////////////////////////////////////////////////////////////////////// -->
<!-- //////////////////////////////////////////////////////////////////////////////////////////////////////// -->

	<!-- 페이징 처리 --> 
		<nav class="blog-pagination justify-content-center d-flex" style="margin-top: 5%;">
			<ul class="big-width-page pagination">
	 			<!-- 이전prev -->
	 			<c:if test="${pageMaker.prev }">
	 				<li class="page-item">
	 					<a href="notice?page=${pageMaker.startPage-1}" class="page-link" aria-label="Previous"> 
							<i class="ti-angle-left"></i>
						</a>
	 				</li>
	 			</c:if>
	 			<!-- 페이지블럭 -->
				<c:forEach var="idx" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
					<!-- 삼항연산자를 사용해서 class로 스타일적용  -->
		 			<li ${pageMaker.cri.page == idx? 'class="page-item active"':'class="page-item"'}>
		 				<a href="notice?page=${idx }" class="page-link">${idx}</a>
		 			</li>
				</c:forEach>
	 			<!-- 다음next -->
	 			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
	 				<li class="page-item">
	 					<a href="notice?page=${pageMaker.endPage+1}" class="page-link" aria-label="Next">
	 						<i class="ti-angle-right"></i>
	 					</a>
	 				</li>
	 			</c:if>
	 		</ul>
		
	<!-- 페이징 처리 --> 
			<ul class="small-width-page pagination">
	 			<!-- 이전prev -->
	 			<c:if test="${pageMaker.cri.page>1}">
	 				<li class="page-item">
	 					<a href="notice?page=${pageMaker.cri.page-1}" class="page-link" aria-label="Previous"> 
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
	 					<a href="notice?page=${pageMaker.cri.page+1}" class="page-link" aria-label="Next">
	 						<i class="ti-angle-right"></i>
	 					</a>
	 				</li>
	 			</c:if>
	 		</ul>
		</nav>

 <!-- //////////////////////////////////////////////////////////////////////////////////////////////// -->
 
		<!-- 숨겨진 form -->
		<%-- <form id="pageForm" name="pageForm" action="/support/notice" method="get">
			<input type="hidden" name="page" value="${pageMaker.cri.page}">
			<input type="hidden" name="pageSize" value="${pageMaker.cri.pageSize }">
			<input type="hidden" name="type" value="${pageMaker.cri.type }">
			<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
		</form>
		 --%>
		<!-- 검색창 -->
		<%-- <form action="/board/list" id="searchForm" method="get">
			<div class="col-12" style="text-align:center;">
				<select name="type">
					<option ${pageMaker.cri.type == null?"selected":""} value="">검색</option>
					<option ${pageMaker.cri.type == "T"?"selected":""} value="T">제목</option>
					<option ${pageMaker.cri.type == "C"?"selected":""} value="C">내용</option>
					<option ${pageMaker.cri.type == "W"?"selected":""} value="W">작성자</option>
					<option ${pageMaker.cri.type == "TC"?"selected":""} value="TC">제목 또는 내용</option>
					<option ${pageMaker.cri.type == "TW"?"selected":""} value="TW">제목 또는 작성자</option>
					<option ${pageMaker.cri.type == "TCW"?"selected":""} value="TCW">제목 또는 내용 또는 작성자</option>
				</select>
				<input type="text" name="keyword" id="keyword" value="${pageMaker.cri.keyword}">
				<a href="#" class="button primary icon solid fa-search">검색</a>						
			</div>
			<input type="hidden" name="page" value="${pageMaker.cri.page}">
			<input type="hidden" name="pageSize" value="${pageMaker.cri.pageSize}">
		</form> --%>
		
		
 	
 	</div>
 
	<c:import url="../footer2.jsp" charEncoding="UTF-8"></c:import>


</body>
<script>

/* 페이지 이동과 게시글 이동을 위한 스크립트 */
/* 	let frm = $("#pageForm")
	let searchForm = $("#searchForm");
	$(".changePage").on("click",function(e){
		//a태그의 동작을 막기
		e.preventDefault();
		//해당 form 안에서 name이 pageNum인 태그 찾고 그 value를 바꿔준다.
		//$(this) : 현재 눌린 a태그
		//.attr("href") : 그 태그의 href속성에 써져있는것
		frm.find("input[name='pageNum']").val($(this).attr("href"));
		frm.submit();
	}) */
	
	
/* 	$(".noticedetail").on("click",function(e){
		e.preventDefault();
		
		//123번 게시글을 누른 경우
		//<input type='hidden' name='boardnum' value='123'>
		
		//frm.append("<input type='hidden' name='boardnum' value='"+$(this).attr("href")+"'>")
		//frm.attr("action","/support/notice")
		let noticeNum = $(this).attr("href");
		
		window.location.href = "notice/"+noticeNum;;
		
		//frm.attr("action","/support/notice/"+noticeNum);
		//frm.submit();
	}) 
	*/









</script>

</html>