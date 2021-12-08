<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

<!-- 스타일 -->
<style>
html, body {
	padding: 0;
	margin: 0;
	/* font-size: 9pt; */
	color: #555;
	background: #f4f5f6;
	/* font-family: 'Malgun Gothic', 'Dotum'; */
	height: 100%
}

legend {
	display: block;
	text-align: center;
	overflow: hidden
}

legend strong {
	display: block;
	font-size: 33px;
	font-weight: 800;
	margin-bottom: 24px
}

legend em {
	display: block;
	font-style: normal;
	font-size: 12pt;
	margin-bottom: 30px
}

form {
	display: table;
	position: relative;
	width: 100%;
	height: 100%;
	text-align: center;
	z-index: 1
}

form #admin_login {
	display: table-cell;
	padding: 20px 20px 150px;
	margin: 0;
	border: 0;
	height: 100%;
	vertical-align: middle;
	text-align: left
}

form #admin_login fieldset {
	margin: 0 auto;
	border: 0;
	padding: 10px;
	max-width: 370px
}

form p {
	display: block;
	position: relative;
	background: #fff;
	border: 1px solid #cdcdd1;
	border-radius: 3px;
	overflow: hidden;
	padding: 10px
}

form label {
	display: block;
	position: absolute;
	width: 136px;
	top: 0;
	left: 0;
	color: #aaa;
	text-indent: 16px;
	line-height: 36px
}

form label:after {
	content: '';
	display: block;
	position: absolute;
	width: 1px;
	height: 10px;
	right: 0;
	top: 50%;
	margin-top: -5px;
	background: #ececec
}

form span {
	display: block;
	border: 0;
	margin-left: 150px
}

form span input {
	width: 100%;
	border: 0
}

form .submitBtn {
	color: #fff;
	font-family: 'Malgun Gothic', 'Dotum';
	display: block;
	background: #1c68e0;
	border-radius: 3px;
	overflow: hidden;
	padding: 10px 0;
	width: 100%;
	border: 0;
	cursor: pointer;
	font-size: 12pt
}

.admin_id_save_p {
	background-color: transparent;
	border: 0
}

.admin_id_save_label {
	line-height: 20px;
	width: auto
}

iframe[name='ok_frame'] {
	position: absolute;
	top: 0;
	left: 0;
	z-index: 0
}
</style>
</head>

<body>
	<!-- header.jsp import -->
	<c:import url="../header2.jsp" charEncoding="UTF-8"></c:import>

	<form name='login_form' method='post'
		action="/login" autocomplete='on' style='margin: 0'>
	
			<!-- 
			<input type='hidden' name='referer'>
			<input type='hidden' name='login_type'>
			<input type='hidden' name='mode'>
			<input type='hidden' name='login_lan'>
			<input type='hidden' name='login_admin_mode'>
			<input type='hidden' name='first_url'>
			<input type='hidden' name='smart_design_yn'>
			<input type='hidden' name='smart_design_mode'>
			<input type='hidden' name='this_domain'>
			<input type='hidden' name='post_action'>
			<input type='hidden' name='form_sess_id' value='8gvcck5i2tka8fgfb9hu2soli7'>
			 -->
	
		<div id="admin_login">
			<fieldset>
				<legend>
					<strong>관리자 로그인</strong>
					<c:if test="${login_id != null and login_id != ''}">
						<em>현재 세션 ID : ${login_id}</em>
					</c:if>
				</legend>
				<p>
					<label for="id">ID</label>
					<span><input type="text" name="id" id="admin_ID" placeholder="아이디"
									value=""></span>
				</p>
			<!-- 	<p>
					<label for="bu_id">관리자ID</label>
					<span><input type="text" name="bu_id" id="bu_id"
									placeholder="부운영자 아이디"></span>
				</p> -->
				<p>
					<label for="pwd">Password</label>
					<span><input type="password" name="password" id=admin_PW
									placeholder="비밀번호" value=""></span>
				</p>
				
				<!-- csrf도 함께 -->
				<%-- <sec:csrfInput/> --%>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				
				<nav>
					<button type="button" class="submitBtn" onclick="sendit();">로그인</button>
				</nav>
			</fieldset>
		</div>
	</form>
<script>
		var form = document.login_form;
		let idTag = form.admin_ID;
		let pwTag = form.admin_PW;
		
		function sendit(){
			if(idTag.value == "" || idTag.value == null){
				alert("아이디를 입력하세요!");
				idTag.focus();
				return false;
			}
			if(pwTag.value == "" || pwTag.value == null){
				alert("비밀번호를 입력하세요!");
				pwTag.focus();
				return false;
			}
			form.submit();
		}
</script>
<!-- 로그인 실패나 성공시 메시지를 받아서 출력하는 자바스크립트 구문 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
    $(function(){
        var responseMessage = "<c:out value="${error}" />";
        if (responseMessage != ""){
            alert(responseMessage)
        }
        var responseMessage2 = "<c:out value="${logout}" />";
        if (responseMessage2 != ""){
            alert(responseMessage2)
        }
        var responseMessage3 = "<c:out value="${join}" />";
        if (responseMessage3 != ""){
            alert(responseMessage3)
        }
    })
</script>


</body><c:import url="../footer2.jsp" charEncoding="UTF-8"></c:import>


</body>


</html>