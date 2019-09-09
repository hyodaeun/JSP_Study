<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Date"%>
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
	String name = request.getParameter("name");
	String title = request.getParameter("title");
	String content = request.getParameter("contents");
	
	Date date = new Date();
	Long time = date.getTime();
	//out.println(time);
	String filename = time + ".txt";
	
	PrintWriter writer = null;
	String result;
	
	try {
		String filePath = application.getRealPath("/WEB-INF/event/" + filename);
		writer = new PrintWriter(filePath);
		writer.printf("제목 : %s %n", title);
		writer.printf("글쓴이 : %s %n", name);
		writer.println(content);
		
		writer.flush();
		result = "ok";
	}
	catch(Exception e) {
		out.println("오류발생");
		result = "fail";
	}
	finally {
		writer.close();
	}
	
	response.sendRedirect("boardResult.jsp?result="+result);
	
%>
</body>
</html>