<%@page import="java.util.Enumeration"%>
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
	String names[] = {"프로토콜 이름", "서버이름", "Method방식", "컨텍스트 경로", "URI", "접속한 클라이언트의 IP"};
	String values[] = {request.getProtocol(), request.getServerName(), request.getMethod(), request.getContextPath(), request.getRequestURI(), request.getRemoteAddr() };
	
	for(int i=0; i<names.length; i++) {
		out.println(names[i] + " : " + values[i] + "<br>");
	}
	
	Enumeration en = request.getHeaderNames();
	while(en.hasMoreElements()) { //bool 타입임
		String key = (String)en.nextElement();
		String value = request.getHeader(key);
		out.println("<font color='red'>" + key + "</font>" + " : " + value + "<br>");
	}
%>

</body>
</html>