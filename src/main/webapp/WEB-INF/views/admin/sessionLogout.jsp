<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%
    //session 초기화
    session.invalidate();
%>
    <script>
        alert('로그아웃 됨');
        location.href = '/admin/login';
    </script>
</body>
</html>
