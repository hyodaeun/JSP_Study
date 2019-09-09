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
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
%>

<center>
<b><font size=6> <%= id %>님 환영합니다 </font></b>
</center>

</body>
<script>
alert("로그인 성공");
</script>
</html>