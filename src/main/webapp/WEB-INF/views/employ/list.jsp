<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<c:set var="root" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<style>
.title {
	font-size: 20pt;
	height: 60px;
	margin-bottom: 10px;
}

table tr {
	text-align: center;
}

.big {
	width: 80%;
	margin: auto;
	align: center;
	margin-top: 20px;
	border-radius: 15px;
}

.seongbukNews1, .seongbukNews2 {
	width: 100%;
}

.seongbukNews1 tr, .seongbukNews2 tr {
	height: 50px;
}

div {
	text-align: center;
}

.seongbukNews1 tr, .seongbukNews1 td, .seongbukNews2 tr, .seongbukNews2 td
	{
	border-collapse: separate;
	border-spacing: 1px;
	border: 3px solid #ccc;
}
</style>

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

<!-- <link rel="stylesheet" href="resources/css/responsive.css"> -->


<body>
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
							<h2>채용 정보</h2>
							<p style="opacity: 0.6">New Vision ENG. Employment</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section>
			<br>
			
			
<%-- 			<section class="">
				<div class="container" style="padding-bottom: 20%;">
					<table class=big>
						<colgroup>
							<col width="50%">
							<col width="50%">
						</colgroup>
						<thead>
						<tbody>
							<tr>
								<td>
									<table class="seongbukNews1">
										<colgroup>
											<col width="10%">
											<col width="90%">
										</colgroup>
										<c:forEach var="url" items="${urls}" varStatus="status"
											begin="3" end="13">
											<c:if test="${titles[status.index]!=''}">
												<tr>
													<td>${status.index-2}</td>
													<td><a href="${url}">${titles[status.index]}</a></td>
												</tr>
											</c:if>
										</c:forEach>
									</table>
								</td>
								<td>
									<table class="seongbukNews2">
										<colgroup>
											<col width="10%">
											<col width="90%">
										</colgroup>
										<c:forEach var="url" items="${urls}" varStatus="status"
											begin="14" end="${titles.size()}">
											<c:if test="${titles[status.index]!=''}">
												<tr>
													<td>${status.index-2}</td>
													<td><a href="${url}">${titles[status.index]}</a></td>
												</tr>
											</c:if>
										</c:forEach>
									</table>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</section> --%>
	</section>

	<section>
		<div class="container"></div>
	</section>

	<c:import url="../footer2.jsp" charEncoding="UTF-8"></c:import>
</body>

</html>
