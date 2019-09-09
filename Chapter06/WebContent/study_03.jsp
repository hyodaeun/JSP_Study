<%@ page 
	language="java"
 	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.*"
    import = "java.sql.*"
    session = "true"
    buffer = "8kb"
    autoFlush="true"
    isThreadSafe="true"
    info = "jsp 문서 수정 - 2019년 5월 20일 by hyoeun"
    isErrorPage="false"
    errorPage="choi.jsp"
%>
<%--
	* jsp에서 기본으로 제공하는 패키지 (시험문제내기좋음)
	import java.lang.*;
	import javax.servlet.*;
	import javax.servlet.jsp.*;
	import javax.servlet.http.*;
	
	
 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페이지 지시어</title>
</head>
<body>

	* 페이지 지시어 & 에러 페이지 정리 <br>
	<b>페이지 지시어(디렉티브)는 JSP문서의 앞에서 문서에 대한 정보를 기술한다.</b>
	<p> ** 날짜 및 시간 출력 **
	<br>
	<%
		Calendar date = Calendar.getInstance();
		int year = date.get(Calendar.YEAR);
		int month = date.get(Calendar.MONTH) + 1;
		int day = date.get(Calendar.DATE);
		out.println("오늘은 " + year + "년 " + month + "월 " + day + "일입니다.");
	
	%>
	
	<hr>
	<%= this.getServletInfo() %>
	
<hr>

<%= 10 / 0 %> <%-- 강제 에러 발생 --%>

<%--<%
	Exception e = new Exception();	
	e.printStackTrace();
	%>
--%>
</body>
</html>