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
	request.setCharacterEncoding("utf-8");
	String num = request.getParameter("num");
	String name = request.getParameter("name");
	String grade = request.getParameter("grade");
	String subject = request.getParameter("subject");
%>

학번 : <%= num %> <br>
이름 : <%= name %> <br>
학년 : <%= grade %> <br>
과목 : <%= subject %> <br>

<%
	Enumeration en = request.getParameterNames();
	
	//아주 유용한 구문 (게시판 등 많이 사용됨)
	while(en.hasMoreElements()) {
		String key = (String)en.nextElement();
		String value = request.getParameter(key);
		out.println(key + " : " + value + "<br>");
	}
%>

<hr>

<%
	request.setAttribute("jung", "1");
	request.setAttribute("hyo", "2");
	request.setAttribute("eun", "3");
	
	String hyo = (String)request.getAttribute("hyo");
	out.println(hyo);
	out.println("<br>");
	
	Enumeration enum1 = request.getAttributeNames();
	while(enum1.hasMoreElements()) {
		String key = (String)enum1.nextElement();
		String value = (String)request.getAttribute(key);
		out.println(key + " : " + value + "<br>");
	}
	
	request.removeAttribute("hyo");
	
	out.println("<br>");
	
	Enumeration enum2 = request.getAttributeNames();
	while(enum2.hasMoreElements()) {
		String key = (String)enum2.nextElement();
		String value = (String)request.getAttribute(key);
		out.println(key + " : " + value + "<br>");
	}
	
	
	
%>
</body>
</html>