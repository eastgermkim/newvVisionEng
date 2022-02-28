<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
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
.single-team {
	margin-bottom: 10%;
}

.section-padding {
	padding-top: 100px;
	padding-bottom: 100px;
}

.team-thumb {
	transition: all 0.2s linear;
}

.team-thumb:hover {
	/* 마우스 올리면 확대효과 */
	transform: scale(1.1);
	/* 마우스 올리면 커서모양 변경 */
	cursor: pointer;
}

.choiceText {
	position: absolute;
	opacity: 0;
	color: #f36d20;
	top: 50%;
	left: 50%;
	margin-left: -65px;
	margin-top: -145px;
	font-size: 11em;
}

.ImgActive img {
	opacity: 0.3;
}
</style>

<style>
.genric-btn.primary-border {
	color: black;
	border: 1px solid black;
	margin: 1% 0;
}

.genric-btn.primary:hover {
	background: #ED1E23;
	color: #fff;
}

.genric-btn.primary-border:hover {
	color: white !important;
}

.genric-btn.primary-border.noColor:hover {
	color: black !important;
	background: #D8D8D8;
}
</style>
<style>
.hideModifyBtn {
	background: #f36d20 !important;
	color: white !important;
	border: none !important;
}

.genric-btn.primary.modify {
	background: royalblue;
	color: #fff;
}

.genric-btn.primary.modify:hover {
	background: darkblue;
	border: 1px solid transparent;
	color: #fff;
}
</style>

<style>
.img-wrapper {
	position: relative;
	width: 290px;
	height: 217.5px;
}

.img-wrapper img {
	position: absolute;
	top: 0;
	left: 0;
	transform: translate(50, 50);
	width: 100%;
	height: 100%;
	object-fit: cover;
	margin: auto;
}
</style>

</head>
<body>
		<div class="team-area section-padding gray-bg">
			<div class="container">
				<div class="row align-items-center justify-content-center">
					<div class="section-title text-center">
						<span>BUSINESS RESULTS</span>
						<h3 style="margin-bottom: 7%; font-weight: bold;">사업실적 메인화면
							<span style="color: red;display: contents;font-size: inherit;font-weight: inherit;">
							취소</span> 관리</h3>
					</div>
				</div>
				<div class="text-center">
					<h4>
						메인화면에 보여주지 않을
						<div style="color: red; display: inline;">사업실적</div>을
						<div style="color: red; display: inline;">선택</div>하세요
						<br>(이미지도 함께 삭제 처리됩니다.)
						<br>*최소 <div style="color: red; display: inline;">6개</div> 등록 필수 
					</h4>
					<hr>
				</div>
				<c:choose>
					<c:when test="${business_list != null and business_list.size()>0}">
						<div class="row imgs" style="text-align: -webkit-center;">
							<c:forEach items="${business_list}" var="business">
								<div class="col-xl-4 col-lg-4 col-md-6">
									<div class="single-team">
										<div class="team-thumb">
											<input type="hidden" class="resultNum" value="${business.resultNum}">
											<input type="hidden" class="imgName" value="${business.imgName}">
											<span class="choiceText">✓</span>
											<div class="img-wrapper">
												<img
												src="/resources/img/business_result/main_imgs/${business.imgName}"
												alt="">
											</div>
										</div>
										<div class="team-info text-center">
				                            <h3>${business.resultClass}</h3>
				                            <p>${business.resultContents}</p>
				                        </div>
				                    </div>
								</div>
							</c:forEach>
						</div>
					</c:when>
					<c:otherwise>
						<h4 style="text-align: center;padding: 20%;">
						메인화면에 등록된 사업실적이 없습니다.
						</h4>					
					</c:otherwise>
				</c:choose>
				<hr>
				<div style="display: flex;">
					<div class="genric-btn primary-border e-large toList hideModifyBtn"
						style="width: 50%; font-size: 15px; margin-right: 1%;"
						onclick="noShowMainOK();">메인 등록 취소</div>
					<!--	 부모창 새로고침;  		창 닫기;		-->
					<div class="genric-btn primary-border e-large toList noColor"
						style="width: 50%; font-size: 15px;"
						onclick="opener.parent.location.reload();window.close();">창
						닫기</div>
				</div>
			</div>
		</div>


</body>
<!-- JS here -->
<script src="/resources/js/vendor/modernizr-3.5.0.min.js"></script>
<script src="/resources/js/vendor/jquery-1.12.4.min.js"></script>
<script src="/resources/js/popper.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/owl.carousel.min.js"></script>
<script src="/resources/js/isotope.pkgd.min.js"></script>
<script src="/resources/js/ajax-form.js"></script>
<script src="/resources/js/waypoints.min.js"></script>
<script src="/resources/js/jquery.counterup.min.js"></script>
<script src="/resources/js/imagesloaded.pkgd.min.js"></script>
<script src="/resources/js/scrollIt.js"></script>
<script src="/resources/js/jquery.scrollUp.min.js"></script>
<script src="/resources/js/wow.min.js"></script>
<script src="/resources/js/nice-select.min.js"></script>
<script src="/resources/js/jquery.slicknav.min.js"></script>
<script src="/resources/js/jquery.magnific-popup.min.js"></script>
<script src="/resources/js/plugins.js"></script>

<!--contact js -->
<script src="/resources/js/jquery.ajaxchimp.min.js"></script>
<script src="/resources/js/jquery.form.js"></script>
<script src="/resources/js/jquery.validate.min.js"></script>
<script src="/resources/js/mail-script.js"></script>

<script src="/resources/js/main.js"></script>

<!-- aos -->
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<script>
$('.team-thumb').click(function(){
	if ($(this).hasClass("ImgActive")) {
		// active class 제거
		$(this).removeClass("ImgActive");
		$(this).children('.choiceText').css("opacity","0");
	} else {
		//다른 active들 삭제
		$(".ImgActive").children('.choiceText').css("opacity","0");
		$(".ImgActive").removeClass("ImgActive");
		// active class 추가
		$(this).addClass("ImgActive");
		$(this).children('.choiceText').css("opacity","1");
	}
});

//메인 등록 취소
function noShowMainOK(){
	if($(".team-thumb").length < 7){
		console.log("최소 6개는 남겨야합니다.");
		alert("삭제불가 : 최소 6개 이상은 등록하셔야 합니다.");
		
	}else if($(".ImgActive").length > 0){
         console.log("선택했음");
       
         var resultNum = $(".ImgActive").children(".resultNum").val();
         var imgName = $(".ImgActive").children(".imgName").val();
         console.log("resultNum....."+resultNum);
         console.log("imgName....."+imgName);
         
         $.ajax({ 
       	  url: '/business/result_showMainCancelOK', 
       	  type: 'GET', 
       	  data: {
       		  "resultNum" : resultNum,
       		  "imgName" : imgName
       		  },
       	  dataType : "text",
       	  success: function (data) { 
       		  alert("메인페이지에서 삭제 완료");
       		  //부모창 새로고침
       		  opener.location.reload();
       		  //현재창(자식창) 새로고침
       		  location.reload();
      		}, 
      		  error: function (data) { 
      			alert(data);
      			//부모창 새로고침
         		opener.location.reload();
         		//현재창(자식창) 새로고침
         		location.reload();
      		}, 
      	});
         
    } else{
        alert("사업실적을 선택해주세요.");
		return false;
    }
	 
};
</script>


</html>