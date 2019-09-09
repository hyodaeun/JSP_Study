<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.event {
	margin-top: 5%;
	margin-bottom: 30%;
	font-size: 2em;
}
img {
	margin-bottom: 3%;
}
.moveform {
	float: right;
	font-size: 2em;
}
</style>
<body>
<center>
<div class="moveform"><a href="boardForm.jsp">이벤트 참여하기</a></div><br>
<div class="event">
<img src="images/slide4.jpg" width="30%"><br>
<%
	request.setCharacterEncoding("utf-8");

	BufferedReader reader = null;
	try {
		String filePath = application.getRealPath("/WEB-INF/event/event1.txt");
		reader = new BufferedReader(new InputStreamReader(new FileInputStream(filePath), "utf-8"));
		
		while(true) {
			String str = reader.readLine();
			if(str==null) break;
			out.println(str + "<br>");
		}//while
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	finally {
		reader.close();
	}

%>
</div>
</center>
</body>
</html>