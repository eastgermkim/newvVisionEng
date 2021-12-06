<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${admin_ID != null}">
	    <script>
	        alert('안녕하세요 ${admin_ID}님');
	        location.href = '/';
	    </script>
	</c:if>
	
	<script>
        alert('잘못된 접근입니다.');
        location.href = '/';
    </script>
</body>
</html>
