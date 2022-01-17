<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page session="true"%>

<!doctype html>
<html class="no-js" lang="zxx">

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

</head>
<script>
<!--
	function Timer() {
		setTimeout("locateHome()", 3000);
	}
	function locateHome() {
		location.replace("http://localhost:8081/");
	}
//-->
</script>
<script>
	cnt = 3; // 카운트다운 시간 초단위로 표시
	function countdown() {
		if (cnt == 0) {
			// 시간이 0일경우

			locateHome();
		} else {
			// 시간이 남았을 경우 카운트다운을 지속한다.
			document.all.choonDiv.innerHTML = cnt + "초후에 홈페이지로 이동합니다.";
			setTimeout("countdown()", 1000);
			cnt--;
		}
	}
</script>
<body>
	<!-- header.jsp import -->
	<c:import url="./header.jsp" charEncoding="UTF-8"></c:import>
	<h3>404잘못된 접근입니다.</h3>
	<div id="choonDiv"></div>
	<script>countdown();</script>
	<c:import url="./footer.jsp" charEncoding="UTF-8"></c:import>
</body>
</html>