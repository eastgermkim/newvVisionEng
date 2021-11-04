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

<style>
.small-width{
		display:none;
	}

@media(max-width : 767.5px){
	.big-width{
		display:none;
	}
	.small-width{
		display:flex;
	}
}


#wrap {
	width: 77%;
	margin: auto;
	padding: 7% 0;
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

.align-left{
	text-align: left;
}


.pagination .page-item.active .page-link {
	font-weight: 600;
	color:darkblue;
    border-color: darkblue;
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
	
	
	
	<div id="wrap">
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th class="align-left">제목</th>
					<th>등록자</th>
					<th>등록일</th>
				</tr>
			</thead>
			<tbody>

				<tr>
					<td>1</td>
					<td class="align-left"><a href="#">제일 최근 공지사항 게시물이 가장 위에 오도록</a></td>
					<td>관리자</td>
					<td>2021.11.04</td>
				</tr>

				<tr>
					<td>2</td>
					<td class="align-left"><a href="" onclick="">커머스·IT에 힘쏟는 NHN, 동반성장
							생태계 조성 앞장</a></td>
					<td>아주경제</td>
					<td>2021.10.28</td>
				</tr>

				<tr class="">
					<td>3</td>
					<td class="align-left"><a href="" onclick="">커머스·IT에 힘쏟는 NHN, 동반성장
							생태계 조성 앞장</a></td>
					<td class="">아주경제</td>
					<td class="">2021.10.28</td>
				</tr>

				<tr class="">
					<td>4</td>
					<td class="align-left"><a href="" onclick="">커머스·IT에 힘쏟는 NHN, 동반성장
							생태계 조성 앞장</a></td>
					<td class="">아주경제</td>
					<td class="">2021.10.28</td>
				</tr>

				<tr class="">
					<td>5</td>
					<td class="align-left"><a href="" onclick="">커머스·IT에 힘쏟는 NHN, 동반성장
							생태계 조성 앞장</a></td>
					<td class="">아주경제</td>
					<td class="">2021.10.28</td>
				</tr>

				<tr class="">
					<td>6</td>
					<td class="align-left"><a href="" onclick="">커머스·IT에 힘쏟는 NHN, 동반성장
							생태계 조성 앞장</a></td>
					<td class="">아주경제</td>
					<td class="">2021.10.28</td>
				</tr>

				<tr class="">
					<td>7</td>
					<td class="align-left"><a href="" onclick="">커머스·IT에 힘쏟는 NHN, 동반성장
							생태계 조성 앞장</a></td>
					<td class="">아주경제</td>
					<td class="">2021.10.28</td>
				</tr>

				<tr class="">
					<td>8</td>
					<td class="align-left"><a href="" onclick="">커머스·IT에 힘쏟는 NHN, 동반성장
							생태계 조성 앞장</a></td>
					<td class="">아주경제</td>
					<td class="">2021.10.28</td>
				</tr>

				<tr class="">
					<td>9</td>
					<td class="align-left"><a href="" onclick="">커머스·IT에 힘쏟는 NHN, 동반성장
							생태계 조성 앞장</a></td>
					<td class="">아주경제</td>
					<td class="">2021.10.28</td>
				</tr>

				<tr class="">
					<td>10</td>
					<td class="align-left"><a href="" onclick="">커머스·IT에 힘쏟는 NHN, 동반성장
							생태계 조성 앞장</a></td>
					<td class="">아주경제</td>
					<td class="">2021.10.28</td>
				</tr>
			</tbody>
		</table>

<!-- 페이징처리 임시(디자인 확인용)-->
		<nav class="blog-pagination justify-content-center d-flex " style="margin-top: 5%;">
			<!-- 데스크탑  -->
			<ul class="big-width pagination">
				
				<li class="page-item">
					<a href="" class="page-link" aria-label="Previous"> 
						<i class="ti-angle-left"></i>
					</a>
				</li>
				
				<li class="page-item active">
					<a href="#" class="page-link">
						1	
					</a>
				</li>
				
				<li class="page-item">
					<a href="#" class="page-link">
						2
					</a>
				</li>
				
				<li class="page-item">
					<a href="#" class="page-link">
						3
					</a>
				</li>
				
				<li class="page-item">
					<a href="#" class="page-link">
						4
					</a>
				</li>
				
				<li class="page-item">
					<a href="#" class="page-link">
						5
					</a>
				</li>
				
				<li class="page-item">
					<a href="#" class="page-link">
						6
					</a>
				</li>
				
				<li class="page-item">
					<a href="#" class="page-link">
						7
					</a>
				</li>
				
				<li class="page-item">
					<a href="#" class="page-link">
						8
					</a>
				</li>
				
				<li class="page-item">
					<a href="#" class="page-link">
						9
					</a>
				</li>
				
				<li class="page-item">
					<a href="#" class="page-link">
						10
					</a>
				</li>
				
				<li class="page-item">
					<a href="" class="page-link" aria-label="Next">
						<i class="ti-angle-right"></i>
					</a>
				</li>
				
			</ul>
		
			<!-- 모바일  -->
			<ul class="small-width pagination">
				
				<li class="page-item">
					<a href="" class="page-link" aria-label="Previous"> 
						<i class="ti-angle-left"></i>
					</a>
				</li>
				
				<li class="page-item active">
					<a href="#" class="page-link">
						1	
					</a>
				</li>
				
				<li class="page-item">
					<a href="#" class="page-link">
						2
					</a>
				</li>
				
				<li class="page-item">
					<a href="#" class="page-link">
						3
					</a>
				</li>
				
				<li class="page-item">
					<a href="#" class="page-link">
						4
					</a>
				</li>
				
				<li class="page-item">
					<a href="#" class="page-link">
						5
					</a>
				</li>
				
				<li class="page-item">
					<a href="" class="page-link" aria-label="Next">
						<i class="ti-angle-right"></i>
					</a>
				</li>
			</ul>
		</nav>
	

	
<!-- 페이징처리 (실제 사용 예정)-->
		<nav class="blog-pagination justify-content-center d-flex" style="margin-top: 5%;">
			<!-- 데스크탑 -->
			<ul class="big-width pagination">
				
				<!-- 이전 항목이 있을때(즉, 현재 1페이지가 아닐때) -->
				<c:if test="${pageMaker.prev}">
					<li class="page-item">
						<a href="${pageMaker.startPage - 1}" class="changePage page-link" aria-label="Previous"> 
							<i class="ti-angle-left"></i>
						</a>
					</li>
				</c:if>
				
				<!-- 페이지 표시 -->
				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="i">
					<c:choose>
					<!-- 현재페이지 -->
						<c:when test="${pageMaker.cri.pageNum == i}">
							<li class="page-item active">
								<a class="page-link">
									${i}	
								</a>
							</li>
						</c:when>
					<!-- 그외 페이지 -->
						<c:otherwise>
							<!-- localhost:8081/support/notice?pageNum=${i}&amount=${pageMaker.cri.amount} -->
							<li class="page-item">
								<a class="changePage page-link" href="${i}">
									${i}	
								</a>
							</li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				
				
				<!-- 이후 항목이 있을때(즉, 현재 마지막 페이지가 아닐때) -->
				<c:if test="${pageMaker.next }">
					<li class="page-item">
						<a href="${pageMaker.endPage + 1}" class="changePage page-link" aria-label="Next">
							<i class="ti-angle-right"></i>
						</a>
					</li>
				</c:if>
				
			</ul>
				
		</nav>
		
		<!-- 페이지 이동과 게시글 이동을 위한 숨겨진 form -->
		<form id="pageForm" name="pageForm" action="/support/notice" method="get">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
			<input type="hidden" name="type" value="${pageMaker.cri.type }">
			<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
		</form>
		


 	
 	</div>
 
	<c:import url="../footer2.jsp" charEncoding="UTF-8"></c:import>


</body>
<script>

/* 페이지 이동과 게시글 이동을 위한 스크립트 */
	let frm = $("#pageForm")
	let searchForm = $("#searchForm");
	$(".changePage").on("click",function(e){
		//a태그의 동작을 막기
		e.preventDefault();
		//해당 form 안에서 name이 pageNum인 태그 찾고 그 value를 바꿔준다.
		//$(this) : 현재 눌린 a태그
		//.attr("href") : 그 태그의 href속성에 써져있는것
		frm.find("input[name='pageNum']").val($(this).attr("href"));
		frm.submit();
	})
	$(".get").on("click",function(e){
		e.preventDefault();
		
		//123번 게시글을 누른 경우
		//<input type='hidden' name='boardnum' value='123'>
		
		//frm.append("<input type='hidden' name='boardnum' value='"+$(this).attr("href")+"'>")
		//frm.attr("action","/support/notice")
		let boardnum = $(this).attr("href");
		frm.attr("action","/support/notice/"+boardnum);
		frm.submit();
	})









</script>

</html>