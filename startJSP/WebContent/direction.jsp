<%@page %>
<%@page %>
<%@ page language="java"
 contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info = "2019-4-8 2번째 수정 by Hyo"
    import="java.util.*"
    import="java.text.SimpleDateFormat"
    import="java.sql.Timestamp"
    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Timestamp now = new Timestamp(System.currentTimeMillis());
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	String strDate = format.format(now);
%>

오늘은 <%= strDate %> 입니다.
</body>
</html>