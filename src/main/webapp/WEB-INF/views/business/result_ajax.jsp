<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<body>

<div class="details-wrap">
		<div class="details-info">
			<div style="background: #FAFAFA">
				<hr style="margin: 1% 0;">
				<div class="result_top">주요 실적현황</div>
				<hr style="margin: 1% 0;">
			</div>
			<div class="newDiv" style="opacity: 0;">
				<c:choose>
					<c:when test="${business_list != null and business_list.size()>0}">
						<c:forEach items="${business_list}" var="business">
								<div class="result_container">
									<c:if test="${admin_Login_id != null and admin_Login_id != ''}">
										<div style="padding-top: 1%" class="modifyDeleteBtn">
											<a href="javascript:void(0);" 
											onclick="showModifyForm(${business.resultNum},'${tabId}','${business.resultContnents}',${pageMaker.cri.page});" 
											style="color: blue;text-decoration: underline;">수정</a>
											<span>&nbsp;|&nbsp;</span>
											<a href="javascript:void(0);" 
											onclick="remove(${business.resultNum},${pageMaker.cri.page},'${tabId}');" 
											style="color: red;text-decoration: underline;">삭제 </a>
											<span>&nbsp;|&nbsp;</span>
											<c:choose>
												<c:when test="${business.show_Mainpage == 1}">
													<span style="color: grey">메인페이지 등록완료</span>
												</c:when>
												<c:otherwise>
													<a href="javascript:void(0);" 
													onClick="showMainSubmit(${business.resultNum},'${business.resultContnents}',${pageMaker.cri.page},'${tabId}');"
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
	</div>

		<!-- 페이징 처리 --> 
		<!-- 데스크탑(5페이지씩)  -->
		<nav class="blog-pagination justify-content-center d-flex" style="margin-top: 5%;">
			<ul class="big-width-page pagination">
	 			<!-- 이전prev -->
	 			<c:if test="${pageMaker.prev }">
	 				<li class="page-item">
						<a href="javascript:void(0);" onclick="ChangePage(${pageMaker.startPage-1},'${tabId}' );" class="page-link" aria-label="Previous"> 
							<i class="ti-angle-left"></i>
						</a>
	 				</li>
	 			</c:if>
	 			<!-- 페이지블럭 -->
				<c:forEach var="idx" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
					<!-- 삼항연산자를 사용해서 class로 스타일적용  -->
		 			<li ${pageMaker.cri.page == idx? 'class="page-item active"':'class="page-item"'}>
		 				<a href="javascript:void(0);" onclick="ChangePage(${idx},'${tabId}');" class="page-link">${idx}</a>
		 			</li>
				</c:forEach>
	 			<!-- 다음next -->
	 			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
	 				<li class="page-item">
	 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker2.endPage+1},'${tabId}');" class="page-link" aria-label="Next">
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
	 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker.cri.page-1},'${tabId}');" class="page-link" aria-label="Previous"> 
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
	 					<a href="javascript:void(0);" onclick="ChangePage(${pageMaker.cri.page+1},'${tabId}');" class="page-link" aria-label="Next">
	 						<i class="ti-angle-right"></i>
	 					</a>
	 				</li>
	 			</c:if>
	 		</ul>
		</nav>
</body>
<script>
$(document).ready(function(){ 
if ("${msg}" != "") {
		alert("${msg}");
	}
});
</script>
</html>