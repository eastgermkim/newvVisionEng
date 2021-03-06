<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>

<!DOCTYPE html>
<html>
<style>


.small-width-page{
		display:none!important;
	}

.small-width-table{
		display:none;
	}
	
.crawling-lists{
	border-top:1px solid #222;
}

.crawling-list{
	padding:25px;
	position:realative;
	border-bottom:1px solid #ddd;
}

.text-wrap{
	font-size:16px;
}

/* 링크 아이콘 */
.link-icon:after{
	content:"\f35d";
	font-family: "Font Awesome 5 Free";
	font-weight: 900;
	color:gray;
	vertical-align:top;
	font-size:larger;
}

/* overflow, white-space, display 참고해서 줄 정렬 */
.news-title{
	font-size:20px;
	max-width:80%;
	overflow:hidden;
	text-overflow:ellipsis;
	white-space:nowrap;
	display:inline-block;
	font-weight:400;
}

/* overflow, white-space, display 참고해서 줄 정렬 */
.news-contents{
	height:30px;
	line-height:1.5;
	color:#555;
	overflow:hidden;
	font-size:15px;
	font-weight:300;
	text-overflow:ellipsis;
	white-space:nowrap;
}

.news-dates{
	color:#555;
	font-size:15px;
	font-weight:300;
	text-align:right;
}


.pagination .page-item.active .page-link {
	font-weight: 600;
	color:black;
    border-color: black;
}

input[type="checkbox"]+label {
	vertical-align:-webkit-baseline-middle;
    width: 20px;
    height: 20px;
    background: url('/resources/img/elements/20X20_off.png') no-repeat 0 0px / contain;
}

input[type='checkbox']:checked+label {
    background: url('/resources/img/elements/20X20_active.png') no-repeat 0 1px / contain;
}

input[type="checkbox"] {
    display: none;
}

.small-width-page{
		display:none;
	}


@media(max-width : 767.5px){
	.big-width-page{
		display:none!important;
	}
	.small-width-page{
		display:flex!important;
	}
	.big-width-table{
		display:none!important;
	}
/* 	.pagination{
		display:none!important;
	} */
	.small-width-table{
		display:table-row;
	}
	
	.news-title {
		font-size:14px!important;
		max-width:85%;
	}
	
	.news-contents, .news-dates{
		font-size:12px;
	}
	
	.link-icon:after{
		font-size:small;
	}
}
</style>
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
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
</head>

<body>
	<!-- header.jsp import -->
	<c:import url="../header.jsp" charEncoding="UTF-8"></c:import>
	
	<section class="breadcrumb breadcrumb_bg banner-bg-1 overlay2 ptb200">
		<!-- breadcrumb-start -->
		<div class="container">
			<div class="row">
				<div class="col-lg-7 offset-lg-1">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item">
							<h2>보도자료</h2>
							<p style="opacity: 0.6">New Vision ENG. Company</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumb-end -->
	</section>

	<section class="sample-text-area" style="padding: 5% 0 1% 0;">
		<div class="container box_1170" style="border-top: 2px dotted #eee;">
			<br>
			<h3 class="text-heading">News</h3>
			<p class="smple-text">뉴비젼이엔지의 언론 보도자료와 최신 소식을 전해드립니다.</p>
		</div>
	</section>
	
	<!-- 본문 내용  -->
	<section style="margin-bottom:20%;">
		<div class="container">
		
		<sec:authorize access="isAuthenticated()">
			<div style="display:flex; justify-content:space-between;">
	        	<a href="/company/news_write${pageMaker.cri.getListLink()}" class="genric-btn primary-border circle">글 작성하기</a>
	        	<div style="float:right;">
					<input type="checkbox" id="myCheck" name="myCheck" class="primary-checkbox" style="vertical-align:middle">
					<label for="myCheck"></label>
					<div style="display:inline-flex;">
					<p><a id="showInfo" style="cursor:pointer; color:#f36d20;">링크 기사 수정하기</a></p>
					</div>
				</div>
	        </div>
	        <br>
	     </sec:authorize>
	     
	        
				<ul class="crawling-lists">
 				<c:choose>
					<c:when test="${news_count == 0}">
						<div style="border-bottom:1px solid #ddd;">
							<h3 style="text-align:center; color:grey; margin-top:2%; margin-bottom:2%;">작성된 보도자료가 없습니다.</h3>
						</div>
					</c:when>
							<c:otherwise>
					   			<c:forEach var="news" items="${news_list}">
						   			<c:choose>
						   				<c:when test="${news.newsLink != null}">
										<li class="crawling-list">
											<a class="list-inner-wrap-link" href="${news.newsLink}" target="_blank" rel="noopener">
												<div class="text-wrap">
												<form method="post" action="/company/news_delete" enctype="multipart/form-data">
													<div class="link-icon">
														<h3 class="news-title">${news.newsTitle}&nbsp;&nbsp;&nbsp;</h3>
													</div>
													
													<h3 class="news-contents">${news.newsSubTitle}</h3>
													<h3 class="news-dates">${news.newsDate}</h3>
													<input type="hidden" name="newsNum" value="${news.newsNum}">
													
													<sec:authorize access="isAuthenticated()">
														<div class="linkHidden" style="display:none;">
															<input type="hidden" name="page" value="${pageMaker.cri.page}">
															<input type="hidden" name="pageSize" value="${pageMaker.cri.pageSize}">
															<a href="/company/news_modify/${news.newsNum}?page=${pageMaker.cri.page}&pageSize=${pageMaker.cri.pageSize}" i="modify_link_button" class="genric-btn primary modify_link_button">수정하기</a>
															<input type="submit" value="삭제" class="genric-btn primary circle linkNewsDelete" style="margin-right: 1%; border-radius:0;">
														</div>
													</sec:authorize>
												</form>
												</div>
											</a>
										</li>
						   				</c:when>
						   				<c:otherwise>
										<li class="crawling-list">
											<a class="list-inner-wrap" href="${news.newsNum}">
												<div class="text-wrap">
													<h3 class="news-title">${news.newsTitle}</h3>
													<h3 class="news-contents">${news.newsSubTitle}</h3>
													<h3 class="news-dates">${news.newsDate}</h3>
													
											        <!-- criteria start -->
											        <form id="pageForm">
														<input type="hidden" name="page" value="${pageMaker.cri.page}">
														<input type="hidden" name="pageSize" value="${pageMaker.cri.pageSize}">
											        </form>
													<!-- criteria end -->
												</div>
											</a>
										</li>
						   				</c:otherwise>
						   			</c:choose>
					   		</c:forEach>
					</c:otherwise>
				</c:choose>
				</ul>
				
<!-- //////////////////////////////////////////////////////////////////////////////////////////////////////// -->
<!-- //////////////////////////////////////////////////////////////////////////////////////////////////////// -->
	<!-- 페이징 처리 --> 
		<nav class="blog-pagination justify-content-center d-flex" style="margin-top: 5%;">
			<ul class="big-width-page pagination">
	 			<!-- 이전prev -->
	 			<c:if test="${pageMaker.prev}">
	 				<li class="page-item">
	 					<a href="news?page=${pageMaker.startPage-1}" class="page-link" aria-label="Previous"> 
							<i class="ti-angle-left"></i>
						</a>
	 				</li>
	 			</c:if>
	 			<!-- 페이지블럭 -->
				<c:forEach var="idx" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
					<!-- 삼항연산자를 사용해서 class로 스타일적용  -->
		 			<li ${pageMaker.cri.page == idx? 'class="page-item active"':'class="page-item"'}>
		 				<a href="news?page=${idx }" class="page-link">${idx}</a>
		 			</li>
				</c:forEach>
	 			<!-- 다음next -->
	 			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
	 				<li class="page-item">
	 					<a href="news?page=${pageMaker.endPage+1}" class="page-link" aria-label="Next">
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
	 					<a href="news?page=${pageMaker.cri.page-1}" class="page-link" aria-label="Previous"> 
							<i class="ti-angle-left"></i>
						</a>
	 				</li>
	 			</c:if>
	 			<!-- 페이지블럭 -->
					<!-- 삼항연산자를 사용해서 class로 스타일적용  -->
		 			<li class="page-item active">
		 				<a class="page-link">${pageMaker.cri.page}</a>
		 			</li>
	 			<!-- 다음next -->
	 			<c:if test="${pageMaker.cri.page<pageMaker.realEnd}">
	 				<li class="page-item">
	 					<a href="news?page=${pageMaker.cri.page+1}" class="page-link" aria-label="Next">
	 						<i class="ti-angle-right"></i>
	 					</a>
	 				</li>
	 			</c:if>
	 		</ul>
		</nav>
				
   		</div>
	</section>

	<c:import url="../footer.jsp" charEncoding="UTF-8"></c:import>
	
		<script>
	$(function () { 
		
		addClassName1();
		
		$( '.header-area' ).on( "mouseleave", function () {
			addClassName1();
		})
	
	});
	</script>
	

</body>
	<script>
	$(function(){
		$("#myCheck").on('click', function() {
		if($("#myCheck").is(":checked") == true){
			$(".linkHidden").show();
		}else{
			$(".linkHidden").hide();
		}
		})
	})
	</script>
	
	<script>
	$(".linkNewsDelete").click(function() {
		if(!confirm("링크기사가 삭제됩니다.")){
			return false;
		}else{
			alert("해당 기사가 삭제되었습니다.")
		}
	})
	
	</script>
	
	<!-- criteria pageForm  -->
	<script>
	var pageForm = $("#pageForm");
	$(".list-inner-wrap").on("click",function(e){
		e.preventDefault();
		pageForm.attr("action","/company/news/"+$(this).attr("href"));
		pageForm.submit();
	})
	</script>
</html>