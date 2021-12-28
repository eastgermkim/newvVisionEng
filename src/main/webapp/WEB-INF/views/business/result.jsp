<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
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
	font-size: large !important;
	margin-left: 2%;"
}
.tabs.active{
	font-size: large !important;
	font-weight:500 !important;
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
	.toList{
	width:100%!important;
	}
}
.pagination .page-item.active .page-link {
	font-weight: 600;
	color:black;
    border-color: black;
}
.genric-btn.primary-border {
    color: black;
    border: 1px solid black;
    margin: 1% 0;
}
.genric-btn.primary:hover {
	background: #ED1E23;
	color: #fff;
}
.genric-btn.primary-border:hover{
    color: white !important;
}
.genric-btn.primary-border.noColor:hover{
    color: black !important;
    background: #D8D8D8;
}
</style>

<!-- 글등록 팝업창 관련 스타일 -->
<style>
#popup_wrap {
	width: 560px;
	/* height: 270px; */
	height: 240px;
	background: #fff;
	border: solid 1px #666666;
	position: fixed;
	top: 50%;
	left: 50%;
	/* margin: -250px 0 0 -250px; */
	z-index: 9999;
	display: none;
	
	align-items: center;
	margin-left: -280px;
	margin-top: -200px;
}

#mask {
	width: 100%;
	height: 100%;
	position: fixed;
	background: rgba(0, 0, 0, 0.7) repeat;
	top: 0;
	left: 0;
	z-index: 999;
	display: none;
}

#popup_wrap2 {
	width: 560px;
	/* height: 270px; */
	height: 240px;
	background: #fff;
	border: solid 1px #666666;
	position: fixed;
	top: 50%;
	left: 50%;
	/* margin: -250px 0 0 -250px; */
	z-index: 9999;
	display: none;
	
	align-items: center;
	margin-left: -280px;
	margin-top: -200px;
}

#mask2 {
	width: 100%;
	height: 100%;
	position: fixed;
	background: rgba(0, 0, 0, 0.7) repeat;
	top: 0;
	left: 0;
	z-index: 999;
	display: none;
}

.popup-cont01 {
	/* width: 478px; */
	/* width: 570px; */
	width: 100%;
	/* margin: 40px auto; */
	margin: 5%;
	text-align: center;
}

.popup-cont01 button {
	width: 138px;
	height: 36px;
	line-height: 36px;
	background: #9f2f60;
	color: #ffffff;
	text-align: center;
	border: none;
	font-size: 16px;
}
@media only screen and (max-width: 767.5px){
	#popup_wrap {
	width: 90%;
    margin-left: -45%;
	}
	.big-width-table{
		display: none;
	}
}


.single-input {
	/* border-bottom: inset; */
	background: none;
	padding-left: 5%;
}

table {
	width: 100%;
	border-collapse: collapse;
	line-height: 2em;
}
#subject{
	width: 35%;
    text-align: center;
}
</style>


<style>
.hideModifyBtn{
	background: #f36d20 !important;
	color:white !important;
	border: none !important;
}
#hideModify{
	display: none;
}
.modifyDeleteBtn{
	display: none;
}
.genric-btn.primary.modify {
	background: royalblue;
	color: #fff;
}
.genric-btn.primary.modify:hover {
	background: darkblue;
	border:1px solid transparent;
	color: #fff;
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
							<p style="opacity: 0.6">New Vision ENG. Performance</p>
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
			<div class="row" id="refresh">
				<div class="col-xl-3">
					<div class="details-nav" style="position: sticky;top: 10%;">
						<nav>
							<ul class="nav" id="myTab" role="tablist">
								<li><div style="color: 	grey;margin: 2% 2% 1.3%;font-weight: 300;">Business Area</div></li>
								
								<li class="nav-item"><a class="tabs nav-link active show" id="home-tab" 			
								data-toggle="tab" href="#military" role="tab" aria-controls="military" aria-selected="true">군사시설</a></li>
								<li class="nav-item"><a class="tabs nav-link" id="publicOrg-tab" 
								data-toggle="tab" href="#publicOrg" role="tab" aria-controls="publicOrg" aria-selected="false">공공기관</a></li>
								<li class="nav-item"><a class="tabs nav-link" id="privateCorp-tab" 
								data-toggle="tab" href="#privateCorp" role="tab" aria-controls="privateCorp" aria-selected="false">민간기업</a></li>
							</ul>
						</nav>
						<c:if test="${admin_Login_id != null and admin_Login_id != ''}">
						    <div class="btn-list" style="padding-top: 2%;" id="regist_popup_open">
							<a class="genric-btn primary-border e-large toList" style="width:100%; font-size:15px;">새 사업실적 등록</a>
							</div>
						    <div class="btn-list" style="padding-top: 2%;" id="showModify">
							<a class="genric-btn primary-border e-large toList noColor" style="width:100%; font-size:15px;" href="javascript:showModify();">사업실적 관리</a>
							</div>
						    <div class="btn-list" style="padding-top: 2%;" id="hideModify">
							<a class="genric-btn primary-border e-large toList hideModifyBtn" style="width:100%; font-size:15px;" href="javascript:hideModify();">사업실적 관리완료</a>
							</div>
						</c:if>
					</div>
				</div>
				<div class="col-xl-9">
					<div class="single-details">
						<div class="tab-content" id="myTabContent">
						
						
						
						
							<div class="tab-pane fade active show" id="military" role="tabpanel"
								aria-labelledby="home-tab">
								<div class="details-wrap">
									<!-- <div class="details-thumb">
                                        <img src="/resources/img/service/business.jpg" alt="">
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
															<c:if test="${admin_Login_id != null and admin_Login_id != ''}">
																<div style="padding-top: 1%" class="modifyDeleteBtn">
																	<a href="javascript:void(0);" 
																	onclick="showModifyForm(${business.resultNum},'military','${business.resultContnents}',${pageMaker1.cri.page});" 
																	style="color: blue;text-decoration: underline;">수정</a>
																	<span>&nbsp;|&nbsp;</span>
																	<a href="javascript:void(0);" 
																	onclick="remove(${business.resultNum},${pageMaker1.cri.page},'military');" 
																	style="color: red;text-decoration: underline;">삭제 </a>
																	<span>&nbsp;|&nbsp;</span>
																	<c:choose>
																		<c:when test="${business.show_Mainpage == 1}">
																			<span style="color: grey">메인페이지 등록완료</span>
																		</c:when>
																		<c:otherwise>
																			<a href="javascript:void(0);" 
																			onClick="showMainSubmit(${business.resultNum},'${business.resultContnents}',${pageMaker1.cri.page},'military');"
																			style="font-weight: 500;text-decoration: underline;">메인페이지 등록</a>
																		</c:otherwise>
																	</c:choose>
																</div>
															</c:if>
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
							 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker1.startPage-1},'military');" class="page-link" aria-label="Previous"> 
													<i class="ti-angle-left"></i>
												</a>
							 				</li>
							 			</c:if>
							 			<!-- 페이지블럭 -->
										<c:forEach var="idx" begin="${pageMaker1.startPage }" end="${pageMaker1.endPage }">
											<!-- 삼항연산자를 사용해서 class로 스타일적용  -->
								 			<li ${pageMaker1.cri.page == idx? 'class="page-item active"':'class="page-item"'}>
								 				<a href="javascript:void(0);" onclick="ChangePage(${idx},'military');" class="page-link">${idx}</a>
								 			</li>
										</c:forEach>
							 			<!-- 다음next -->
							 			<c:if test="${pageMaker1.next && pageMaker1.endPage > 0}">
							 				<li class="page-item">
							 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker1.endPage+1},'military');" class="page-link" aria-label="Next">
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
							 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker1.cri.page-1},'military');" class="page-link" aria-label="Previous"> 
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
							 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker1.cri.page+1},'military');" class="page-link" aria-label="Next">
							 						<i class="ti-angle-right"></i>
							 					</a>
							 				</li>
							 			</c:if>
							 		</ul>
								</nav>
							
							</div>
							
							<div class="tab-pane fade" id="publicOrg" role="tabpanel"
								aria-labelledby="publicOrg-tab">
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
																<c:if test="${admin_Login_id != null and admin_Login_id != ''}">
																	<div style="padding-top: 1%" class="modifyDeleteBtn">
																		<a href="javascript:void(0);" 
																		onclick="showModifyForm(${business.resultNum},'publicOrg','${business.resultContnents}',${pageMaker2.cri.page});" 
																		style="color: blue;text-decoration: underline;">수정</a>
																		<span>&nbsp;|&nbsp;</span>
																		<a href="javascript:void(0);" 
																		onclick="remove(${business.resultNum},${pageMaker2.cri.page},'publicOrg');" 
																		style="color: red;text-decoration: underline;">삭제 </a>
																		<span>&nbsp;|&nbsp;</span>
																		<c:choose>
																			<c:when test="${business.show_Mainpage == 1}">
																				<span style="color: grey">메인페이지 등록완료</span>
																			</c:when>
																			<c:otherwise>
																				<a href="javascript:void(0);" 
																				onClick="showMainSubmit(${business.resultNum},'${business.resultContnents}',${pageMaker2.cri.page},'publicOrg');"
																				style="font-weight: 500;text-decoration: underline;">메인페이지 등록</a>
																			</c:otherwise>
																		</c:choose>
																	</div>
																</c:if>
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
							 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker2.startPage-1},'publicOrg');" class="page-link" aria-label="Previous"> 
													<i class="ti-angle-left"></i>
												</a>
							 				</li>
							 			</c:if>
							 			<!-- 페이지블럭 -->
										<c:forEach var="idx" begin="${pageMaker2.startPage }" end="${pageMaker2.endPage }">
											<!-- 삼항연산자를 사용해서 class로 스타일적용  -->
								 			<li ${pageMaker2.cri.page == idx? 'class="page-item active"':'class="page-item"'}>
								 				<a href="javascript:void(0);" onclick="ChangePage(${idx},'publicOrg');" class="page-link">${idx}</a>
								 			</li>
										</c:forEach>
							 			<!-- 다음next -->
							 			<c:if test="${pageMaker2.next && pageMaker2.endPage > 0}">
							 				<li class="page-item">
							 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker2.endPage+1},'publicOrg');" class="page-link" aria-label="Next">
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
							 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker2.cri.page-1},'publicOrg');" class="page-link" aria-label="Previous"> 
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
							 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker2.cri.page+1},'publicOrg');" class="page-link" aria-label="Next">
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
															<c:if test="${admin_Login_id != null and admin_Login_id != ''}">
																<div style="padding-top: 1%" class="modifyDeleteBtn">
																	<a href="javascript:void(0);" 
																	onclick="showModifyForm(${business.resultNum},'privateCorp','${business.resultContnents}',${pageMaker3.cri.page});" 
																	style="color: blue;text-decoration: underline;">수정</a>
																	<span>&nbsp;|&nbsp;</span>
																	<a href="javascript:void(0);" 
																	onclick="remove(${business.resultNum},${pageMaker3.cri.page},'privateCorp');" 
																	style="color: red;text-decoration: underline;">삭제 </a>
																	<span>&nbsp;|&nbsp;</span>
																	<c:choose>
																		<c:when test="${business.show_Mainpage == 1}">
																			<span style="color: grey">메인페이지 등록완료</span>
																		</c:when>
																		<c:otherwise>
																			<a href="javascript:void(0);" 
																			onClick="showMainSubmit(${business.resultNum},'${business.resultContnents}',${pageMaker3.cri.page},'privateCorp');"
																			style="font-weight: 500;text-decoration: underline;">메인페이지 등록</a>
																		</c:otherwise>
																	</c:choose>
																</div>
															</c:if>
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
							 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker3.startPage-1},'privateCorp');" class="page-link" aria-label="Previous"> 
													<i class="ti-angle-left"></i>
												</a>
							 				</li>
							 			</c:if>
							 			<!-- 페이지블럭 -->
										<c:forEach var="idx" begin="${pageMaker3.startPage }" end="${pageMaker3.endPage }">
											<!-- 삼항연산자를 사용해서 class로 스타일적용  -->
								 			<li ${pageMaker3.cri.page == idx? 'class="page-item active"':'class="page-item"'}>
								 				<a href="javascript:void(0);" onclick="ChangePage(${idx},'privateCorp');" class="page-link">${idx}</a>
								 			</li>
										</c:forEach>
							 			<!-- 다음next -->
							 			<c:if test="${pageMaker3.next && pageMaker3.endPage > 0}">
							 				<li class="page-item">
							 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker3.endPage+1},'privateCorp');" class="page-link" aria-label="Next">
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
							 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker3.cri.page-1},'privateCorp');" class="page-link" aria-label="Previous"> 
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
							 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker3.cri.page+1},'privateCorp');" class="page-link" aria-label="Next">
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

	<!-- 사업실적 등록 폼 레이어팝업 -->
	<c:if test="${admin_Login_id != null and admin_Login_id != ''}">
	<div id="popup_wrap">
		<div class="popup-cont01">
			<form method="post" action="/business/result_writeOK" id="resultForm">
	
				<table>
					<tbody>
						<tr>
							<th class="big-width-table"><span>분류</span></th>
							<th style="padding-left: 5%;text-align: left;">
							
								<select id="subject" name="subject">
									<option value="" selected disabled hidden>사업 분류</option>
									<option value="military">군사시설</option>
									<option value="publicOrg">공공기관</option>
									<option value="privateCorp">민간기업</option>
								</select>
								
							</th>
						</tr>
						<tr>
							<th class="big-width-table"><span>내용</span></th>
							<th><input class="single-input" id="resultContnents" name="resultContnents"
								type="text" placeholder="내용을 입력하세요"></th>
						</tr>
					</tbody>
				</table>
				<hr>
				
				<!-- csrf도 함께 -->
				<%-- <sec:csrfInput/> --%>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
							
				<div class="col-12" style="text-align: center;">
					<a href="javascript:void(0);" id="goRegist" class="genric-btn primary circle" style="margin-right: 1%;">등록</a> 
					<a class="genric-btn primary-border circle noColor" id="popup_close">목록으로 돌아가기</a>
				</div>
			</form>
	  </div>
	</div>
	<div id="mask"></div>
</c:if>

	<!-- 사업실적 수정 폼 레이어팝업 -->
	<c:if test="${admin_Login_id != null and admin_Login_id != ''}">
	<div id="popup_wrap2">
		<div class="popup-cont01">
			<form method="post" action="/business/result_modifyOK" id="resultForm">
				<input type="hidden" id="resultNumModified" name="resultNumModified">
				<input type="hidden" id="pageModified" name="pageModified">
				<table>
					<tbody>
						<tr>
							<th class="big-width-table"><span>분류</span></th>
							<th style="padding-left: 5%;text-align: left;">
							
								<select id="subjectModified" name="subjectModified">
									<option value="" selected disabled hidden>사업 분류</option>
									<option value="military">군사시설</option>
									<option value="publicOrg">공공기관</option>
									<option value="privateCorp">민간기업</option>
								</select>
								
							</th>
						</tr>
						<tr>
							<th class="big-width-table"><span>내용</span></th>
							<th><input class="single-input" id="resultContnentsModified" name="resultContnentsModified"
								type="text" placeholder="내용을 입력하세요"></th>
						</tr>
					</tbody>
				</table>
				<hr>
				
				<!-- csrf도 함께 -->
				<%-- <sec:csrfInput/> --%>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
							
				<div class="col-12" style="text-align: center;">
					<a href="javascript:void(0);" id="goModify" class="genric-btn primary circle modify" style="margin-right: 1%;">수정하기</a> 
					<a class="genric-btn primary-border circle noColor" id="popup_close2">목록으로 돌아가기</a>
				</div>
			</form>
	  </div>
	</div>
	<div id="mask2"></div>
	
	<form name="showMainForm" action="" method="post">
		<input type="hidden" name="main_resultNum" id="main_resultNum">
		<input type="hidden" name="main_resultContnents" id="main_resultContnents">
		<input type="hidden" name="main_page" id="main_page">
		<input type="hidden" name="main_tabId" id="main_tabId">
	</form>
	
</c:if>
	
<c:import url="../footer.jsp" charEncoding="UTF-8"></c:import>

</body>

<!-- 자바스트립트 파일 분리 -->
<%@ include file = "resultJS.jsp" %>

<script>
function showMainSubmit(resultNum,resultContnents,page,tabId){
    var gsWin = window.open('about:blank','showMainviewer','width=1000,height=921');
    var frm =document.showMainForm;
    frm.action = '/business/result_showMain/';
    frm.target ="showMainviewer";
    frm.method ="post";
    
    console.log(".........폼 내용");
    
    console.log("resultNum..........."+resultNum);
    $("#main_resultNum").val(resultNum);
    
    console.log("resultContnents..........."+resultContnents);
    $("#main_resultContnents").val(resultContnents);
    
    console.log("page..........."+page);
    $("#main_page").val(page);
    
    console.log("tabId..........."+tabId);
    $("#main_tabId").val(tabId);
    
    console.log("폼 전송...........");
    frm.submit();
   }
</script>

</html>