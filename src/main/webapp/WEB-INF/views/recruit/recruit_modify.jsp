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

.ck-editor__editable {
	min-height: 500px;
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
	<c:import url="../header2.jsp" charEncoding="UTF-8"></c:import>
	<script>
		addClassName5();
	</script>

	<!-- breadcrumb-start -->
	<section class="breadcrumb breadcrumb_bg banner-bg-1 overlay2 ptb200">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 offset-lg-1">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item">
							<h2>공지사항 수정</h2>
							<p style="opacity: 0.6">New Vision ENG. Recruit</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb-end -->


	<div class="container board">
		<form method="post" action="/recruit/recruit_modifyOK" enctype="multipart/form-data" id="recruitForm">

		<input type="hidden" name="recruitNum" value="${recruit.recruitNum}">
		<input type="hidden" name="page" value="${cri.page}">
		<input type="hidden" name="pageSize" value="${cri.pageSize}"> 
		<input type="hidden" name="pageListLink" value="${cri.getListLink()}"> 
			<table>
				<thead>
					<tr>
						<th class="big-width-table"><span>제목</span></th>
						<th><input class="single-input" name="recruitTitle"
							type="text" placeholder="제목을 입력하세요" value="${recruit.recruitTitle}"></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th class="big-width-table"><span>작성자</span></th>
						<th><input class="single-input" name="recruitWriter"
							type="text" placeholder="작성자를 입력하세요(ex. 관리자)" value="${recruit.recruitWriter}"></th>
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
								<c:choose>
									<c:when test="${file != null and fn:length(file)>0 }">
										<c:forEach var="file" items="${file}">
											<div class="file-only" id="file-only">
												<a href="#" class="file-count" onclick="fn_fileDown('${file.SYSTEMNAME}','${file.ORGNAME}'); return false;" style="color: mediumblue;">${file.ORGNAME}</a>
												<a id="ex-file-delete" class="ex-file-delete" id="ex-file-delete" name='ex-file-delete' style="margin-left:1%;color: red; cursor:pointer" data-system="${file.SYSTEMNAME}">삭제</a>
												<br>
											</div>
										</c:forEach>
									</c:when>
								</c:choose>
							
							
								<div class="file-group file-count" style="text-align: left;">
									<input class="defaultFile" type="file" name="file"><a href='#this'
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
				${recruit.recruitContents}</textarea>
			<hr>
			
						
			<div class="col-12" style="text-align: center; padding: 1%;">
				<input type="submit" value="수정완료" class="genric-btn primary circle modifyBtn" style="margin-right: 1%;"> 
				<a href="/recruit/list${cri.getListLink()}" class="genric-btn primary-border circle">목록으로 돌아가기</a>
			</div>
		</form>
		
		<form name="readForm" role="form" method="post">
			<input type="hidden" id="FILE_SYSTEMNAME" name="FILE_SYSTEMNAME"
				value=""> <input type="hidden" id="FILE_ORGNAME"
				name="FILE_ORGNAME" value="">
		</form>
		
	</div>

	<c:import url="../footer2.jsp" charEncoding="UTF-8"></c:import>
	
	
	<script>
		$(".ex-file-delete").click(function() {
			if(!confirm("파일이 완전히 삭제됩니다.(취소 불가)")){
				return;
			}else{
	            deleteFile($(this));
				
	            					//data-system의 값. 즉, 파일의 SYSTEMNAME
				var systemname = $(this).data('system');
		           
				$.ajax({
					type:"POST",
					url:"/recruit/recruit_modify_fileDelete",
					// 해당 small의 data-src 속성의 값을 JSON 형식으로 
					data:{
						'FILESYSTEMNAME' : systemname},
					dataType:"text",
					cache:false,
					success:function(res) {
						alert("파일을 삭제했습니다.");
						},
	                	error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
	                    alert("파일 삭제에 실패하였습니다.");
					}
				});
			}
			fileCount();
		});
	</script>
	
	<script>
	$(".modifyBtn").click(function() {
		if(!confirm("변경된 내용으로 저장하시겠습니까?")){
			return false;
		}else{
			alert("수정 완료")
		}
	})
	</script>
	
	<script>
	function fn_fileDown(SYSTEMNAME,ORGNAME){
		var formObj = $("form[name='readForm']");
		$("#FILE_SYSTEMNAME").attr("value", SYSTEMNAME);
		$("#FILE_ORGNAME").attr("value", ORGNAME);
		formObj.attr("action", "/recruit/recruitFiledown");
		formObj.submit();
	}
	
	</script>
	
	<!-- 페이지 벗어날 경우 경고창 -->
	<script>
$(document).ready(function () {
	fileCount();
	firstFileCount();
	
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
	<%@ include file = "../CKeditorJS.jsp" %>
	
	
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
    
    /* 첨부파일 개수 최대 5개 */
    function firstFileCount() {
   		var fileCount = $('.file-count').length
   		
   		if(fileCount>5){
	         deleteFile($('.defaultFile'));
   		}
    }

</script>

</body>

</html>