<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>공지사항 게시글 내용 페이지 입니다.</h1>
	<h2>noticeNum : ${noticeNum}</h2>
	<div class="col-12">
					<form method="post" action="/board/remove">
						<div class="col-12">
							<h4>번호</h4>
							<input name="noticeNum" type="text" readonly>
						</div>
						<hr>
						<div class="col-12">
							<h4>등록일</h4>
							<input name="noticeDate" type="text" readonly>
						</div>
						<hr>
						<div class="col-12">
							<h4>제목</h4>
							<input name="noticeTitle" type="text" readonly>
						</div>
						<div class="col-12">
							<h4>작성자</h4>
							<input name="noticeWriter" type="text" readonly>
						</div>
						<hr>
						<hr>
						<div class="col-12">
							<h4>내용</h4>
							<textarea name="noticeContents" rows="10" style="resize:none;" readonly></textarea>
						</div>
						<hr>
						<div class="col-12">
							<input type="button" value="수정" class="primary" onclick="location.href='/board/modify${cri.getListLink()}&boardnum=${boardnum}'">
							<input type="submit" value="삭제" class="primary">
						</div>
					</form>
				</div>
</body>

<script>
// /support/notice/1
$(document).ready(
	function(){
		let noticeNum = "${noticeNum}";
		$.get(
			"/support/notice/"+noticeNum,
			function(result){
				$("input[name='noticeNum']").val(result.noticeNum);
				$("input[name='noticeWriter']").val(result.noticeWriter);
				$("input[name='noticeTitle']").val(result.noticeTitle);
				$("input[name='noticeDate']").val(result.noticeDate);
				$("textarea[name='noticeContents']").html(result.noticeContents);
			}
		).fail(function(xhr,status,e){
			alert("알 수 없는 오류!")
			
		})
	}
);

</script>

</html>