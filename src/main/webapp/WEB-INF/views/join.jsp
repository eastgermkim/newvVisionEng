<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>뉴비젼이엔지</title>
<meta name="description" content="">
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

form #admin_join {
	display: table-cell;
	padding: 20px 10px 150px;
	margin: 0;
	border: 0;
	height: 100%;
	vertical-align: middle;
	text-align: left
}

form #admin_join fieldset {
	margin: 0 auto;
	border: 0;
	padding: 10px;
	/* max-width: 370px */
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
	/* margin-left: 150px */
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
</style>

<style>
.joinBtn {
	width: 410px;
	text-align: center;
	margin: 0 auto;
	border-color: grey;
}
.joinTable{
	width: 410px;
}
.joinName{
	padding: 0 1%;
}
.joinInput{
	width: 80%;
}
@media ( max-width : 450px) {
	.joinBtn {
		width: 100%;
	}
	.joinTable{
		width: 100%;
	}
}
</style>

<script>
	/* 휴대폰 번호 하이픈 자동 삽입 */
	function inputPhoneNumber(obj) {
		var number = obj.value.replace(/[^0-9]/g, "");
		var phone = "";
		if (number.length < 4) {
			return number;
		} else if (number.length < 7) {
			phone += number.substr(0, 3);
			phone += "-";
			phone += number.substr(3);
		} else if (number.length < 11) {
			phone += number.substr(0, 3);
			phone += "-";
			phone += number.substr(3, 3);
			phone += "-";
			phone += number.substr(6);
		} else {
			phone += number.substr(0, 3);
			phone += "-";
			phone += number.substr(3, 4);
			phone += "-";
			phone += number.substr(7);
		}
		obj.value = phone;
	}
</script>
</head>

<body>
	<!-- header.jsp import -->
	<c:import url="./header.jsp" charEncoding="UTF-8"></c:import>
	<script>
		addClassName6();
	</script>

	<form action="/join" name=form method="post"
		onsubmit="return checkAll()">
		<div id="admin_join">
			<fieldset>
				<legend>
					<strong>관리자 회원가입</strong>
					<sec:authorize access="isAuthenticated()">
						<em>현재 로그인된 ID : ${admin_Login_id}</em>
					</sec:authorize>
				</legend>
				<table class="joinTable" border="1px" align=center>
					<tr>
						<th colspan="2" bgcolor=antiquewhite class="joinName">회원 기본 정보</th>
					</tr>
					<tr>
						<td class="joinName">아이디</td>
						<td><input type="text" name="id" class="joinInput">
							<br> 4~16자의 영문 대소문자 혹은 숫자</td>
					</tr>
					<tr>
						<td class="joinName">비밀번호</td>
						<td><input type="password" name="password" class="joinInput">
							<br> 8~16자의 영문 대소문자 혹은 숫자</td>
					</tr>
					<tr>
						<td class="joinName">비밀번호 확인</td>
						<td><input type="password" name="confirmPassword" class="joinInput"></td>
					</tr>
					<tr>
						<td class="joinName">메일주소</td>
						<td><input type="text" name="email" class="joinInput">
							<br>예)abc1234@gmail.com</td>
					</tr>
					<tr>
						<td class="joinName">이름</td>
						<td><input type="text" name="name" class="joinInput"></td>
					</tr>
					<tr>
						<td class="joinName">휴대폰 번호</td>
						<td><input type="text" name="phone"
							onKeyup="inputPhoneNumber(this);" maxlength="13"
							style="text-align: center;" class="joinInput"></td>
					</tr>
				</table>
				<div>
					<p class="joinBtn">
						<input type="submit" name="join" value="회원 가입"> 
						<input type="reset" name="reset" value="다시 입력">
					</p>
				</div>
			</fieldset>
		</div>
	</form>


	<c:import url="./footer.jsp" charEncoding="UTF-8"></c:import>

	<script>
		function checkAll() {
			if (!checkid(form.id.value)) {
				return false;
			}
			if (!checkPassword(form.id.value, form.password.value,
					form.confirmPassword.value)) {
				return false;
			}
			if (!checkemail(form.email.value)) {
				return false;
			}
			if (!checkName(form.name.value)) {
				return false;
			}
			if (!checkPhone(form.phone.value)) {
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

		function checkid(id) {
			//Id가 입력되었는지 확인하기
			if (!checkExistData(id, "아이디를"))
				return false;

			var idRegExp = /^[a-zA-z0-9]{4,16}$/; //아이디 유효성 검사
			if (!idRegExp.test(id)) {
				alert("아이디는 영문 대소문자와 숫자 4~16자리로 입력해야합니다!");
				form.id.value = "";
				form.id.focus();
				return false;
			}
			return true; //확인이 완료되었을 때
		}

		function checkPassword(id, password, confirmPassword) {
			//비밀번호가 입력되었는지 확인하기
			if (!checkExistData(password, "비밀번호를"))
				return false;
			//비밀번호 확인이 입력되었는지 확인하기
			if (!checkExistData(confirmPassword, "비밀번호 확인을"))
				return false;

			var passwordRegExp = /^[a-zA-z0-9]{8,16}$/; //비밀번호 유효성 검사
			if (!passwordRegExp.test(password)) {
				alert("비밀번호는 영문 대소문자와 숫자 8~16자리로 입력해야합니다!");
				form.password.value = "";
				form.password.focus();
				return false;
			}
			//비밀번호와 비밀번호 확인이 맞지 않다면..
			if (password != confirmPassword) {
				alert("두 비밀번호가 맞지 않습니다.");
				form.password.value = "";
				form.confirmPassword.value = "";
				form.confirmPassword.focus();
				return false;
			}

			//아이디와 비밀번호가 같을 때..
			if (id == password) {
				alert("아이디와 비밀번호는 같을 수 없습니다!");
				form.password.value = "";
				form.confirmPassword.value = "";
				form.confirmPassword.focus();
				return false;
			}
			return true; //확인이 완료되었을 때
		}

		function checkemail(email) {
			//email이 입력되었는지 확인하기
			if (!checkExistData(email, "이메일을"))
				return false;

			var emailRegExp = /^[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{1,3}$/;
			if (!emailRegExp.test(email)) {
				alert("이메일 형식이 올바르지 않습니다!");
				form.email.value = "";
				form.email.focus();
				return false;
			}
			return true; //확인이 완료되었을 때
		}

		function checkName(name) {
			if (!checkExistData(name, "이름을"))
				return false;

			var nameRegExp = /^[가-힣]{2,4}$/;
			if (!nameRegExp.test(name)) {
				alert("이름이 올바르지 않습니다.");
				form.name.value = "";
				form.name.focus();
				return false;
			}
			return true; //확인이 완료되었을 때
		}

		function checkPhone(phone) {
			if (!checkExistData(phone, "휴대폰 번호를"))
				return false;

			var regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
			if (!regPhone.test(phone)) {
				alert('핸드폰 번호를 확인 해주세요');
				form.phone.value = "";
				form.phone.focus();
				return;
			}

			return true; //확인이 완료되었을 때
		}
	</script>
</body>


</html>