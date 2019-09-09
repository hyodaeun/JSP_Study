<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
오늘은 월요일 <br>
<%
	out.println("내일은 화요일 <br>");
%>

<%= "모레는 수요일" %> <br>
<hr>
<h3>현재 페이지는 1.jsp입니다. </h3>
<%--
<%
	response.sendRedirect("2.jsp"); //버퍼는 8kb인데 다 차지 않아서 보내지지 않고 sendRedirect가 될 때 모두 버리고 감
%>
 --%>
 <jsp:forward page="2.jsp"/> <!-- 위와 공통점은 페이지를 이동시키는 것, 차이점은 보내는 방식(url)이 다름 -->
sendRedirect() 이후입니다. <br>

</body>
</html>