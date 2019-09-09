<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!
	String str1 = "전역변수";

	public String getStr() {
		return str1;	
	}
%>
<%
	String str2 = "지역변수1";

	out.println(str1 + "<br>");
	out.println(str2 + "<br>");
%>
<hr>
<%
	String str3 = "지역변수2";
	out.println(str3 + "<br>");
%>

스크립트에서 선언한 변수 str2는 <%= str2 %> <br>
선언문에서 선언한 변수 str1은 <%= getStr() %> <br>
</body>
</html>