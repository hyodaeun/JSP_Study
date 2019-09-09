<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 
isAutoFlush() : <%= out.isAutoFlush() %> <br>
getBufferSize() : <%= out.getBufferSize() %> <br>
getRemaining() : <%= out.getRemaining() %> <br>
<% out.clearBuffer() %>
--%>

<h2>out 내장객체 out.println() 활용</h2>

<%
	String name="Mirim";
	out.println("출력되는 내용은 <b>" + name + "</b> 입니다.<br>");
%>

출력되는 내용은 <b><%= name %></b> 입니다. <br>

출력되는 내용은 <b> Mirim </b> 입니다. <br> <!-- 정적인 것이므로 동적인 자바로 쓰기! -->
</body>
</html>