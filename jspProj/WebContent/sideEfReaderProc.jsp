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
<body style="padding-bottom: 20%">

<div class="fcon" style="font-size: 1.5em">
<%
	request.setCharacterEncoding("utf-8");
	String filename = request.getParameter("NAME");
	//out.println(filename);

	BufferedReader reader = null;
	try {
		String filePath = application.getRealPath("/WEB-INF/side-effect/" + filename);
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
<div class="other" style="font-size: 1.2em; margin-top: 5%;">
	<a href="sideEf.jsp">다른 부작용 보기</a>
</div>
</body>
</html>