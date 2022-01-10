<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<html>
<head>
<title>회원가입 페이지</title>
<script>
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
	<form action="/join" name=form method="post"
		onsubmit="return checkAll()">
		<table width=750 border="1px" align=center>
			<tr>
				<th colspan="2" bgcolor="#E4F7BA">회원 기본 정보</th>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id"> 4~12자의 영문 대소문자와 숫자로만
					입력</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="password"> 4~12자의 영문
					대소문자와 숫자로만 입력</td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="password" name="confirmPassword"></td>
			</tr>
			<tr>
				<td>메일주소</td>
				<td><input type="text" name="email"> 예)id@domain.com</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>휴대폰 번호</td>
				<td><input type="text" name="phone" onKeyup="inputPhoneNumber(this);"
					maxlength="13" style="text-align: center;" /></td>
			</tr>
		</table>
		<p align=center>
			<input type="submit" name="join" value="회원 가입"> <input
				type="reset" name="reset" value="다시 입력">
		</p>
	</form>

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

			var idRegExp = /^[a-zA-z0-9]{4,12}$/; //아이디 유효성 검사
			if (!idRegExp.test(id)) {
				alert("아이디는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
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

			var passwordRegExp = /^[a-zA-z0-9]{4,12}$/; //비밀번호 유효성 검사
			if (!passwordRegExp.test(password)) {
				alert("비밀번호는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
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
				return;
			}

			return true; //확인이 완료되었을 때
		}
	</script>



</body>
</html>