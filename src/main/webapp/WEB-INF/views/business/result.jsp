<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

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
<!-- <link rel="stylesheet" href="/resources/css/responsive.css"> -->

<style>
.result_top{
	text-align:center;
	margin: 1%;
	font-weight: 600;
}
.result_container {
	/* display: flex; */
	margin-bottom: 1%;
	border-bottom: 1px solid #eee;
}

.resultContent {
	padding: 10px;
}
.resultContentNone {
	padding: 10px;
	text-align: center;
    margin-bottom: 1%;
}
.tabs{
	font-size: large;
	margin-left: 2%;"
}
.details-info{
	padding-right: 0 !important;
}
</style>

<style>
.small-width-page{
		display:none;
	}
@media only screen and (max-width: 767.5px){
	.small-width-page{
		display:flex;
	}
	.big-width-page{
		display:none;
	}
}
.pagination .page-item.active .page-link {
	font-weight: 600;
	color:black;
    border-color: black;
}
</style>

</head>
<body>
	<!-- header.jsp import -->
	<c:import url="../header.jsp" charEncoding="UTF-8"></c:import>
	<script>
		addClassName3();
	</script>

	<!-- breadcrumb-start -->
	<section class="breadcrumb breadcrumb_bg banner-bg-1 overlay2 ptb200">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 offset-lg-1">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item">
							<h2>사업실적</h2>
							<p style="opacity: 0.6">New Vision ENG. 본사</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb-end -->

	<!-- service-details-start -->
	<div class="service-details" style="padding-top: 70px;">
		<div class="container">
			<div class="row">
				<div class="col-xl-3">
					<div class="details-nav" style="position: sticky;top: 10%;">
						<nav>
							<ul class="nav" id="myTab" role="tablist">
								<li><div style="color: 	grey;margin: 2% 2% 1.3%;font-weight: 300;">Client</div></li>
								
								<li class="nav-item"><a class="tabs nav-link active show" id="home-tab" 			
								data-toggle="tab" href="#military" role="tab" aria-controls="military" aria-selected="true">군사시설</a></li>
								<li class="nav-item"><a class="tabs nav-link" id="public-tab" 
								data-toggle="tab" href="#public" role="tab" aria-controls="public" aria-selected="false">공공기관</a></li>
								<li class="nav-item"><a class="tabs nav-link" id="privateCorp-tab" 
								data-toggle="tab" href="#privateCorp" role="tab" aria-controls="privateCorp" aria-selected="false">민간기업</a></li>
							</ul>
						</nav>
					</div>
				</div>
				<div class="col-xl-9">
					<div class="single-details">
						<div class="tab-content" id="myTabContent">
						
						
						
						
							<div class="tab-pane fade active show" id="military" role="tabpanel"
								aria-labelledby="home-tab">
								<div class="details-wrap">
									<!-- <div class="details-thumb">
                                        <img src="../resources/img/service/business.jpg" alt="">
                                    </div> -->
									<div class="details-info">
										<div style="background: #FAFAFA">
											<hr style="margin: 1% 0;">
											<div class="result_top">주요 실적현황</div>
											<hr style="margin: 1% 0;">
										</div>
										
										<c:choose>
											<c:when test="${business_list_1 != null and business_list_1.size()>0}">
												<c:forEach items="${business_list_1}" var="business">
														<div class="result_container">
															<div class="resultContent">${business.resultContnents}</div>
														</div>
												</c:forEach>
											</c:when>
											<c:otherwise>
												<div class="result_container">
													<div class="resultContentNone">등록된 글이 없습니다.</div>
												</div>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
								
								<!-- 페이징 처리 --> 
								<!-- 데스크탑(5페이지씩)  -->
								<nav class="blog-pagination justify-content-center d-flex" style="margin-top: 5%;">
									<ul class="big-width-page pagination">
							 			<!-- 이전prev -->
							 			<c:if test="${pageMaker1.prev }">
							 				<li class="page-item">
							 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker1.startPage-1},'군사시설','military');" class="page-link" aria-label="Previous"> 
													<i class="ti-angle-left"></i>
												</a>
							 				</li>
							 			</c:if>
							 			<!-- 페이지블럭 -->
										<c:forEach var="idx" begin="${pageMaker1.startPage }" end="${pageMaker1.endPage }">
											<!-- 삼항연산자를 사용해서 class로 스타일적용  -->
								 			<li ${pageMaker1.cri.page == idx? 'class="page-item active"':'class="page-item"'}>
								 				<a href="javascript:void(0);" onclick="ChangePage(${idx},'군사시설','military');" class="page-link">${idx}</a>
								 			</li>
										</c:forEach>
							 			<!-- 다음next -->
							 			<c:if test="${pageMaker1.next && pageMaker1.endPage > 0}">
							 				<li class="page-item">
							 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker1.endPage+1},'군사시설','military');" class="page-link" aria-label="Next">
							 						<i class="ti-angle-right"></i>
							 					</a>
							 				</li>
							 			</c:if>
							 		</ul>
								
									<!-- 모바일(1페이지씩)  -->
									<ul class="small-width-page pagination">
							 			<!-- 이전prev -->
							 			<c:if test="${pageMaker1.cri.page>1}">
							 				<li class="page-item">
							 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker1.cri.page-1},'군사시설','military');" class="page-link" aria-label="Previous"> 
													<i class="ti-angle-left"></i>
												</a>
							 				</li>
							 			</c:if>
							 			<!-- 페이지블럭 -->
											<!-- 삼항연산자를 사용해서 class로 스타일적용  -->
								 			<li class="page-item active"}>
								 				<a class="page-link">${pageMaker1.cri.page}</a>
								 			</li>
							 			<!-- 다음next -->
							 			<c:if test="${pageMaker1.cri.page<pageMaker1.realEnd}">
							 				<li class="page-item">
							 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker1.cri.page+1},'군사시설','military');" class="page-link" aria-label="Next">
							 						<i class="ti-angle-right"></i>
							 					</a>
							 				</li>
							 			</c:if>
							 		</ul>
								</nav>
							
							</div>
							
							<div class="tab-pane fade" id="public" role="tabpanel"
								aria-labelledby="public-tab">
								<div class="details-wrap">
									<div class="details-info">
										<div style="background: #FAFAFA">
											<hr style="margin: 1% 0;">
											<div class="result_top">주요 실적현황</div>
											<hr style="margin: 1% 0;">
										</div>
											<c:choose>
												<c:when test="${business_list_2 != null and business_list_2.size()>0}">
													<c:forEach items="${business_list_2}" var="business">
															<div class="result_container">
																<div class="resultContent">${business.resultContnents}</div>
															</div>
													</c:forEach>
												</c:when>
												<c:otherwise>
													<div class="result_container">
														<div class="resultContentNone">등록된 글이 없습니다.</div>
													</div>
												</c:otherwise>
											</c:choose>
									</div>
								</div>
							
							<!-- 페이징 처리 --> 
								<!-- 데스크탑(5페이지씩)  -->
								<nav class="blog-pagination justify-content-center d-flex" style="margin-top: 5%;">
									<ul class="big-width-page pagination">
							 			<!-- 이전prev -->
							 			<c:if test="${pageMaker2.prev }">
							 				<li class="page-item">
							 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker2.startPage-1},'공공기관','public');" class="page-link" aria-label="Previous"> 
													<i class="ti-angle-left"></i>
												</a>
							 				</li>
							 			</c:if>
							 			<!-- 페이지블럭 -->
										<c:forEach var="idx" begin="${pageMaker2.startPage }" end="${pageMaker2.endPage }">
											<!-- 삼항연산자를 사용해서 class로 스타일적용  -->
								 			<li ${pageMaker2.cri.page == idx? 'class="page-item active"':'class="page-item"'}>
								 				<a href="javascript:void(0);" onclick="ChangePage(${idx},'공공기관','public');" class="page-link">${idx}</a>
								 			</li>
										</c:forEach>
							 			<!-- 다음next -->
							 			<c:if test="${pageMaker2.next && pageMaker2.endPage > 0}">
							 				<li class="page-item">
							 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker2.endPage+1},'공공기관','public');" class="page-link" aria-label="Next">
							 						<i class="ti-angle-right"></i>
							 					</a>
							 				</li>
							 			</c:if>
							 		</ul>
								
									<!-- 모바일(1페이지씩)  -->
									<ul class="small-width-page pagination">
							 			<!-- 이전prev -->
							 			<c:if test="${pageMaker2.cri.page>1}">
							 				<li class="page-item">
							 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker2.cri.page-1},'공공기관','public');" class="page-link" aria-label="Previous"> 
													<i class="ti-angle-left"></i>
												</a>
							 				</li>
							 			</c:if>
							 			<!-- 페이지블럭 -->
											<!-- 삼항연산자를 사용해서 class로 스타일적용  -->
								 			<li class="page-item active"}>
								 				<a class="page-link">${pageMaker2.cri.page}</a>
								 			</li>
							 			<!-- 다음next -->
							 			<c:if test="${pageMaker2.cri.page<pageMaker2.realEnd}">
							 				<li class="page-item">
							 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker2.cri.page+1},'공공기관','public');" class="page-link" aria-label="Next">
							 						<i class="ti-angle-right"></i>
							 					</a>
							 				</li>
							 			</c:if>
							 		</ul>
								</nav>
							
							</div>
							
							<div class="tab-pane fade" id="privateCorp" role="tabpanel"
								aria-labelledby="privateCorp-tab">
								<div class="details-wrap">
									<div class="details-info">
										<div style="background: #FAFAFA">
											<hr style="margin: 1% 0;">
											<div class="result_top">주요 실적현황</div>
											<hr style="margin: 1% 0;">
										</div>
										<c:choose>
										
										<c:when test="${business_list_3 != null and business_list_3.size()>0}">
											<c:forEach items="${business_list_3}" var="business">
													<div class="result_container">
														<div class="resultContent">${business.resultContnents}</div>
													</div>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<div class="result_container">
												<div class="resultContentNone">등록된 글이 없습니다.</div>
											</div>
										</c:otherwise>
											
										</c:choose>
									</div>
								</div>
								<!-- 페이징 처리 --> 
								<!-- 데스크탑(5페이지씩)  -->
								<nav class="blog-pagination justify-content-center d-flex" style="margin-top: 5%;">
									<ul class="big-width-page pagination">
							 			<!-- 이전prev -->
							 			<c:if test="${pageMaker3.prev }">
							 				<li class="page-item">
							 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker3.startPage-1},'민간기업','privateCorp');" class="page-link" aria-label="Previous"> 
													<i class="ti-angle-left"></i>
												</a>
							 				</li>
							 			</c:if>
							 			<!-- 페이지블럭 -->
										<c:forEach var="idx" begin="${pageMaker3.startPage }" end="${pageMaker3.endPage }">
											<!-- 삼항연산자를 사용해서 class로 스타일적용  -->
								 			<li ${pageMaker3.cri.page == idx? 'class="page-item active"':'class="page-item"'}>
								 				<a href="javascript:void(0);" onclick="ChangePage(${idx},'민간기업','privateCorp');" class="page-link">${idx}</a>
								 			</li>
										</c:forEach>
							 			<!-- 다음next -->
							 			<c:if test="${pageMaker3.next && pageMaker3.endPage > 0}">
							 				<li class="page-item">
							 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker3.endPage+1},'민간기업','privateCorp');" class="page-link" aria-label="Next">
							 						<i class="ti-angle-right"></i>
							 					</a>
							 				</li>
							 			</c:if>
							 		</ul>
								
									<!-- 모바일(1페이지씩)  -->
									<ul class="small-width-page pagination">
							 			<!-- 이전prev -->
							 			<c:if test="${pageMaker3.cri.page>1}">
							 				<li class="page-item">
							 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker3.cri.page-1},'민간기업','privateCorp');" class="page-link" aria-label="Previous"> 
													<i class="ti-angle-left"></i>
												</a>
							 				</li>
							 			</c:if>
							 			<!-- 페이지블럭 -->
											<!-- 삼항연산자를 사용해서 class로 스타일적용  -->
								 			<li class="page-item active"}>
								 				<a class="page-link">${pageMaker3.cri.page}</a>
								 			</li>
							 			<!-- 다음next -->
							 			<c:if test="${pageMaker3.cri.page<pageMaker3.realEnd}">
							 				<li class="page-item">
							 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker3.cri.page+1},'민간기업','privateCorp');" class="page-link" aria-label="Next">
							 						<i class="ti-angle-right"></i>
							 					</a>
							 				</li>
							 			</c:if>
							 		</ul>
								</nav>
							</div>
							
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- service-details-end -->


	<c:import url="../footer.jsp" charEncoding="UTF-8"></c:import>
<script>
function ChangePage(page,tab,tabId){
	console.log("page........."+page);
	console.log("tab........."+tab);
	console.log("tabId........."+tabId);
	
	$.ajax({
	     type : "GET",
	     url : "/business/result_pageAjax",
	     data : {
	          "page" : page, // ☜ 서버로 전송할 데이터
	          "tab" : tab,  // ☜ 서버로 전송할 데이터
	          "tabId" : tabId // ☜ 서버로 전송할 데이터
	     },
	     dataType : "text",
	     success : function(data){
	    	 //result_pageAjax.jsp에 담긴 내용을  가져와서
	    	 //id가 tabId인 요소의 내용을 변경
	          $('#'+tabId).html(data);
	          $('.newDiv').animate({opacity: "1"}, 200);
	     },
	});
};
		
</script>

</body>


</html>