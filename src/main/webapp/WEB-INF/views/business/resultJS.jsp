<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page session="true"%>

<script>
	//페이지 이동시 ajax를 통해 부분 새로고침
	function ChangePage(page,tabId,s_keyword) {
		console.log(".............ChangePage()...........");
		console.log("s_keyword........." + s_keyword);
		console.log("tabId........." + tabId);
		console.log("page........." + page);
		
		$.ajax({
			type : "GET",
			url : "/business/result_pageAjax",
			data : {
				"page" : page, // ☜ 서버로 전송할 데이터
				"tabId" : tabId,
				"s_keyword" : s_keyword,
			// ☜ 서버로 전송할 데이터
			},
			dataType : "text",
			success : function(data) {
				//result_pageAjax.jsp에 담긴 내용을  가져와서
				//id가 tabId인 요소의 내용을 변경
				$('#' + tabId).html(data);
				$('.newDiv').animate({
					opacity : "1"
				}, 200);
				if ($("#showModify").css("display") == "none") {
					$(".modifyDeleteBtn").css("display", "block");
				}
			},
		});
	};
</script>

<script>
	//검색시 ajax를 통해 부분 새로고침
	function search() {
		console.log(".............search()...........");
		
		var s_keyword = $('input[name=s_keyword]').val();
		console.log("s_keyword........." + s_keyword);
		
		var tabId = $(".tab-pane.active").attr("id");
		console.log("tabId........." + tabId);
		
		$.ajax({
			type : "GET",
			url : "/business/result_pageAjax",
			data : {
				"tabId" : tabId,
				"s_keyword" : s_keyword,
			// ☜ 서버로 전송할 데이터
			},
			dataType : "text",
			success : function(data) {
				//result_pageAjax.jsp에 담긴 내용을  가져와서
				//id가 tabId인 요소의 내용을 변경
				$('#' + tabId).html(data);
				$('.newDiv').animate({
					opacity : "1"
				}, 200);
				if ($("#showModify").css("display") == "none") {
					$(".modifyDeleteBtn").css("display", "block");
				}
			},
		});
	};
</script>

<!-- 비공개 코드 -->
<sec:authorize access="isAuthenticated()">
	<script>
		//글등록 팝업 관련 설정
		$("#regist_popup_open").click(function() {
			/* $("#popup_wrap").css("display", "block");  */
			$("#popup_wrap").css("display", "flex");
			$("#mask").css("display", "block");
		});
		$("#popup_close").click(function() {
			$("#popup_wrap").css("display", "none");
			$("#mask").css("display", "none");
		});

		//글 등록시
		$("#goRegist").on('click', function() {
			//사업 분류 선택 안함
			if ($("#subject").val() == null) {
				alert("사업 분류를 선택해 주세요.");
				$("#subject").focus();
				return false;
			}
			//문의 내용 없으면 막아주기
			if ($("#resultContnents").val() == "") {
				alert("내용이 없습니다.");
				$("#resultContnents").focus();
				return false;
			}
			//글 등록 함수호출
			$("#popup_wrap").css("display", "none");
			$("#mask").css("display", "none");
			regist();
		});

		//글 등록 함수(ajax)
		function regist() {
			console.log("subject........." + $("#subject").val());
			console.log("resultContnents......" + $("#resultContnents").val());

			var tabId = $("#subject").val();

			$.ajax({
				type : "POST",
				url : "/business/result_writeOK/",
				data : {
					"tabId" : $("#subject").val(),
					"resultContnents" : $("#resultContnents").val(),
				},
				dataType : "text",
				success : function(data) {
					//result_pageAjax.jsp에 담긴 내용을  가져와서
					//id가 tabId인 요소의 내용을 변경
					$('#' + tabId).html(data);
					$('.newDiv').animate({
						opacity : "1"
					}, 200);
					if ($("#showModify").css("display") == "none") {
						$(".modifyDeleteBtn").css("display", "block");
					}
				},
			});
		};

		function showModify() {
			$(".modifyDeleteBtn").css("display", "block");
			$("#showModify").css("display", "none");
			$("#hideModify").css("display", "block");
			$("#manageMainResults").css("display", "block");
		};
		function hideModify() {
			$(".modifyDeleteBtn").css("display", "none");
			$("#showModify").css("display", "block");
			$("#hideModify").css("display", "none");
			$("#manageMainResults").css("display", "none");
		};

		// '수정/삭제하기' 버튼 눌렀을때
		$("#showModify").on('click', function() {
			showModify();
		});
		// '수정/삭제완료' 버튼 눌렀을때
		$("#hideModify").on('click', function() {
			hideModify();
		});

		//삭제시 ajax를 통해 부분 새로고침
		function remove(resultNum, page, tabId) {
			console.log("resultNum........." + resultNum);
			console.log("page........." + page);
			console.log("tabId........." + tabId);

			if (!confirm("글을 삭제하시겠습니까?")) {
				return false;
			} else {

				$.ajax({
					type : "GET",
					url : "/business/result_delete/",
					data : {
						"resultNum" : resultNum,
						"page" : page, // ☜ 서버로 전송할 데이터
						"tabId" : tabId
					// ☜ 서버로 전송할 데이터
					},
					dataType : "text",
					success : function(data) {
						//result_pageAjax.jsp에 담긴 내용을  가져와서
						//id가 tabId인 요소의 내용을 변경
						$('#' + tabId).html(data);
						$('.newDiv').animate({
							opacity : "1"
						}, 200);
						$(".modifyDeleteBtn").css("display", "block");
					},
				});
			}
		};

		//수정 클릭시 폼 띄워줌
		function showModifyForm(resultNum, subject, resultContnents, page) {
			//글수정 팝업 관련 설정
			console.log("----showModifyForm----");
			console.log("resultNum...." + resultNum);
			console.log("subject...." + subject);
			console.log("resultContnents...." + resultContnents);
			console.log("page...." + page);
			$("#popup_wrap2").css("display", "flex");
			$("#mask2").css("display", "block");
			$("#resultNumModified").val(resultNum);
			$("#subjectModified").val(subject);
			$("#resultContnentsModified").val(resultContnents);
			$("#pageModified").val(page);

		};
		$("#popup_close2").click(function() {
			$("#popup_wrap2").css("display", "none");
			$("#mask2").css("display", "none");
		});

		$("#subjectModified").on('click', function() {
			alert("사업 분류는 변경할 수 없습니다. 삭제후 재등록 하십시오.");
			$("#resultContnentsModified").focus();
		});
		//수정 클릭시
		$("#goModify").on('click', function() {
			//문의 내용 없으면 막아주기
			if ($("#resultContnentsModified").val() == "") {
				alert("내용이 없습니다.");
				$("#resultContnentsModified").focus();
				return false;
			}
			//글 수정 함수호출
			$("#popup_wrap2").css("display", "none");
			$("#mask2").css("display", "none");
			modify();
		});

		//글 수정 함수(ajax)
		function modify() {
			console.log("resultNumModified........."
					+ $("#resultNumModified").val());
			console.log("subjectModified........."
					+ $("#subjectModified").val());
			console.log("resultContnentsModified......"
					+ $("#resultContnentsModified").val());

			var tabId = $("#subjectModified").val();

			$.ajax({
				type : "POST",
				url : "/business/result_modifyOK/",
				data : {
					"resultNum" : $("#resultNumModified").val(),
					"tabId" : $("#subjectModified").val(),
					"resultContnents" : $("#resultContnentsModified").val(),
					"page" : $("#pageModified").val(),
				},
				dataType : "text",
				success : function(data) {
					//result_pageAjax.jsp에 담긴 내용을  가져와서
					//id가 tabId인 요소의 내용을 변경
					$('#' + tabId).html(data);
					$('.newDiv').animate({
						opacity : "1"
					}, 200);
					if ($("#showModify").css("display") == "none") {
						$(".modifyDeleteBtn").css("display", "block");
					}
				},
				error : function() {
					alert("error");
				}
			});
		};
	</script>
</sec:authorize>