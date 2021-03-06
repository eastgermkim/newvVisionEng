<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>뉴비젼이엔지</title>
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

<script src="${pageContext.request.contextPath}/resources/js/ckeditor5/ckeditor.js"></script>
<style>
.board {
	padding: 4% 0%;
}

.align-left {
	text-align: left;
	width: 62%;
}

.small-width-page {
	display: none;
}

.small-width-table {
	display: none;
}

.small-width-title {
	font-size: large;
	font-weight: 500;
}

@media ( max-width : 767.5px) {
	.align-left {
		width: 80%
	}
	.big-width-page {
		display: none;
	}
	.small-width-page {
		display: flex;
	}
	.big-width-table {
		display: none;
	}
	.small-width-table {
		display: table-row;
	}
	.board {
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
	color: #ED1E23;
}

a:active {
	color: blue;
}

.pagination .page-item.active .page-link {
	font-weight: 600;
	color: darkblue;
	border-color: darkblue;
}
</style>

<style>
.ck.ck-editor {
	margin: 0 0;
}

/* 에디터 최소 크기 */
.ck-editor__editable {
	min-height: 500px;
}
/* 이미지 캡션에는 크기 설정 안하기*/
.ck-editor__nested-editable {
    min-height: initial;
}
</style>

<style>
.single-input {
	/* border-bottom: inset; */
	background: none;
}

u {
	color: inherit;
}

.ck-splitbutton {
	display: none;
}
</style>

<style>
.genric-btn.primary-border {
	color: black;
	border: 1px solid black;
	font-size: 1em;
	margin: 1% 0;
}

.genric-btn.primary-border:hover {
	color: black;
	background: #D8D8D8;
}

.genric-btn.primary {
	font-size: 1em;
}

.genric-btn.primary:hover {
	background: #ED1E23;
	color: #fff;
}
</style>

</head>
<body data-editor="ClassicEditor" data-collaboration="false"
	data-revision-history="false">
	<!-- header.jsp import -->
	<c:import url="../header.jsp" charEncoding="UTF-8"></c:import>

	<!-- breadcrumb-start -->
	<section class="breadcrumb breadcrumb_bg banner-bg-5 overlay2 ptb200">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 offset-lg-1">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item">
							<h2>채용공고 작성</h2>
							<p style="opacity: 0.6">New Vision ENG. Recruit</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb-end -->


	<div class="container board">
	<input type="hidden" value="${cri.page}">
	<input type="hidden" value="${cri.pageSize}">
		<form method="post" action="/recruit/recruit_writeOK"
			enctype="multipart/form-data" id="recruitForm" onsubmit="return checkAll()">

			<table>
				<thead>
					<tr>
						<th class="big-width-table"><span>제목</span></th>
						<th><input class="single-input" name="recruitTitle"
							type="text" placeholder="제목을 입력하세요"></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th class="big-width-table"><span>작성자</span></th>
						<th><input class="single-input" name="recruitWriter"
							type="text" placeholder="작성자를 입력하세요(ex. 관리자)"></th>
					</tr>
					<tr>
						<th class="big-width-table"><span>파일 첨부</span>
						<br>
							<a class="addFile" onclick="addFile()" style="color:#f36d20;cursor: pointer;">+ 	파일 추가</a>
						</th>
						<th style="text-align: left;vertical-align: bottom;">
							<span class=small-width-table>
							<a class="addFile" onclick="addFile()" style="color:#f36d20;cursor: pointer;">+ 	파일 추가</a>
							</span>
							파일 용량 제한 : 20MB (최대 5개, 합계 100MB까지 가능)
							<div class="form-group" id="file-list">
								<div class="file-group file-count" style="text-align: left;">
									<input type="file" name="file"><a href='#this'
										name='file-delete' style='color: red;'>삭제</a>
								</div>
							</div>
						</th>
					</tr>
				</tbody>
			</table>
			<div style="margin-top: 3%;">
			 이미지 삽입시에는 아래에 있는 
					<svg class="ck ck-icon ck-button__icon">
						<path d="M6.91 10.54c.26-.23.64-.21.88.03l3.36 3.14 2.23-2.06a.64.64 0 0 1 .87 0l2.52 2.97V4.5H3.2v10.12l3.71-4.08zm10.27-7.51c.6 0 1.09.47 1.09 1.05v11.84c0 .59-.49 1.06-1.09 1.06H2.79c-.6 0-1.09-.47-1.09-1.06V4.08c0-.58.49-1.05 1.1-1.05h14.38zm-5.22 5.56a1.96 1.96 0 1 1 3.4-1.96 1.96 1.96 0 0 1-3.4 1.96z">
						</path>
					</svg>버튼을 누르시길 바랍니다.
			</div>
			<textarea id="editor" rows="5" name="recruitContents"
				placeholder="내용을 입력하세요" style="display: none;">
				</textarea>
			<hr>
			
						
			<div class="col-12" style="text-align: center; padding: 1%;">
				<input type="submit" value="등록" id="regist" class="genric-btn primary circle" style="margin-right: 1%;"> 
					<a href="/recruit/list${cri.getListLink()}" class="genric-btn primary-border circle">목록으로 돌아가기</a>
			</div>
		</form>
	</div>

	<c:import url="../footer.jsp" charEncoding="UTF-8"></c:import>
		<script>
	$(function () { 
		
		addClassName5();
		
		$( '.header-area' ).on( "mouseleave", function () {
			addClassName5();
		})
	
	});
	</script>
	<!-- 페이지 벗어날 경우 경고창 -->
	<script>
$(document).ready(function () {
    // Warning
    $(window).on('beforeunload', function(){
        //do something
        return "이 페이지를 벗어나면 작성된 내용은 저장되지 않습니다.";
        
    });
    // Form Submit
    $(document).on("submit", "form", function(event){
        // disable warning
        $(window).off('beforeunload');
    });
    
    //페이지 벗어나면 글 등록에 사용안된 이미지 삭제
    //(크롬에선 사용불가)
    $(window).on('unload', function(){
        //do something
			$.ajax({
				type:"POST",
				url:"/recruit/deleteUnusedImgs",
				dataType:"text",
				cache:false,
				success:function(res) {
					},
	            	error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
				}
			});
    });
    
})
</script>
	
	<!-- CK에디터 속 이미지 삽입시 마지막 경로 넣으세요 -->
	<script>
	var your_path="recruit_img"
	</script>
	
	<!-- CK에디터 -->
	<%-- <%@ include file = "../CKeditorJS.jsp" %> --%>
	<script src="/resources/js/CKeditor.js"></script>
	
	
	<!-- 파일 다중 업로드 -->
	<script type="text/javascript">
    $(document).ready(function() {
        $("a[name='file-delete']").on("click", function(e) {
            e.preventDefault();
            deleteFile($(this));
        });
        
        
    })
    
 
    function addFile() {
        var str = 
      "<div class='file-group file-count' style='text-align: left;margin-top:5px;'><input type='file' name='file'><a href='#this' name='file-delete' style='color: red;'>삭제</a></div>";
        $("#file-list").append(str);
        fileCount();
        $("a[name='file-delete']").on("click", function(e) {
            e.preventDefault();
            deleteFile($(this));
        });
    }
 
    function deleteFile(obj) {
        obj.parent().remove();
        fileCount();
    }
    
    /* 파일 용량 제한 */
    $("input[name=file]").off().on("change", function(){

    	if (this.files && this.files[0]) {

    		var maxSize = 20 * 1024 * 1024;
    		var fileSize = this.files[0].size;

    		if(fileSize > maxSize){
    			alert("첨부파일 사이즈는 20MB 이내로 등록 가능합니다.");
    			$(this).val('');
    			return false;
    		}
    	}
    });
    
    /* 첨부파일 개수 최대 5개 */
    function fileCount() {
   		var fileCount = $('.file-count').length
   		
   		if(fileCount>=5){
   			$('.addFile').css('display', 'none');
   		}else{
   			$('.addFile').css('display', 'block');
   		}
    
    }

</script>

<!-- 유효성검사 -->
<script>
		function checkAll() {
			if (!checkRecruitTitle(recruitForm.recruitTitle.value)) {
				recruitForm.recruitTitle.focus();
				return false;
			}
			if (!checkRecruitWriter(recruitForm.recruitWriter.value)) {
				recruitForm.recruitWriter.focus();
				return false;
			}

			return true;
		}

		// 공백확인 함수
		function checkExistData(value, dataName) {
			if (value == "") {
				alert(dataName + " 입력해주세요!");
				return false;
			}else if(value == null){
				alert(dataName + " 입력해주세요!");
				return false;
			}
				
			return true;
		}


		function checkRecruitTitle(title) {
			if (!checkExistData(title, "제목을"))
				return false;

			return true; //확인이 완료되었을 때
		}
		function checkRecruitWriter(writer) {
			if (!checkExistData(writer, "작성자를"))
				return false;

			return true; //확인이 완료되었을 때
		}
</script>
<script>
	/* submit 하기전 유효성 검사 */
		function checkAll() {
			//제목 공백 확인
			if (!checkTitle(recruitForm.recruitTitle.value)) {
				recruitForm.recruitTitle.focus();
				return false;
			}
			//작성자 공백 확인
			if (!checkWriter(recruitForm.recruitWriter.value)) {
				recruitForm.recruitWriter.focus();
				return false;
			}
			//제목 이모지 확인
			if(!checkEmojisTitle(recruitForm.recruitTitle.value)){
				recruitForm.recruitTitle.focus();
				return false;
			}
			//작성자 이모지 확인
			if(!checkEmojisWriter(recruitForm.recruitWriter.value)){
				recruitForm.recruitWriter.focus();
				return false;
			}
			//내용 이모지 확인
			if(!checkEmojisContents($(".ck-content").html())){
				$(".ck-content").focus();
				return false;
			}
			return true;
		}
		//-------------------------------------------------------
		//공백 확인 함수
		function checkExistData(value, dataName) {
			if (value == "") {
				alert(dataName + " 입력해주세요!");
				return false;
			}else if(value == null){
				alert(dataName + " 입력해주세요!");
				return false;
			}
			return true;
		}

		function checkTitle(title) {
			if (!checkExistData(title, "제목을"))
				return false;

			return true; //확인이 완료되었을 때
		}
		function checkWriter(writer) {
			if (!checkExistData(writer, "작성자를"))
				return false;

			return true; //확인이 완료되었을 때
		}
		//-------------------------------------------------------
		//이모지 확인 함수
		function removeEmojis (value, dataName) {
		    const regex = /(?:[\u2700-\u27bf]|(?:\ud83c[\udde6-\uddff]){2}|[\ud800-\udbff][\udc00-\udfff]|[\u0023-\u0039]\ufe0f?\u20e3|\u3299|\u3297|\u303d|\u3030|\u24c2|\ud83c[\udd70-\udd71]|\ud83c[\udd7e-\udd7f]|\ud83c\udd8e|\ud83c[\udd91-\udd9a]|\ud83c[\udde6-\uddff]|\ud83c[\ude01-\ude02]|\ud83c\ude1a|\ud83c\ude2f|\ud83c[\ude32-\ude3a]|\ud83c[\ude50-\ude51]|\u203c|\u2049|[\u25aa-\u25ab]|\u25b6|\u25c0|[\u25fb-\u25fe]|\u00a9|\u00ae|\u2122|\u2139|\ud83c\udc04|[\u2600-\u26FF]|\u2b05|\u2b06|\u2b07|\u2b1b|\u2b1c|\u2b50|\u2b55|\u231a|\u231b|\u2328|\u23cf|[\u23e9-\u23f3]|[\u23f8-\u23fa]|\ud83c\udccf|\u2934|\u2935|[\u2190-\u21ff])/g;
		    if(regex.test(value)) {
		        alert(dataName+" Emoji는 입력하실 수 없습니다!");
		        return false;
		    }
		    return true;
		}
		
		function checkEmojisTitle(title) {
			if (!removeEmojis(title, "제목에"))
				return false;

			return true; //확인이 완료되었을 때
		}
		function checkEmojisWriter(writer) {
			if (!removeEmojis(writer, "작성자에"))
				return false;

			return true; //확인이 완료되었을 때
		}
		function checkEmojisContents(contents) {
			if (!removeEmojis(contents, "내용에"))
				return false;

			return true; //확인이 완료되었을 때
		}
		//-------------------------------------------------------
</script>
</body>

</html>