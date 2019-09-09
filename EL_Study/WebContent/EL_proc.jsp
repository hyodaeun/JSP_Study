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
	request.setCharacterEncoding("UTF-8");
	
	//String id = request.getParameter("id");
	//String pw = request.getParameter("pw");
	
%>

ID : ${param.id} <br>
PW : ${param.pw} <br>

<hr>

ID : ${param["id"]} <br>
PW : ${param["pw"]} <br>

<hr>

application 영역 : ${applicationScope.application_Key} <br>
session 영역 : ${sessionScope.session_Key} <br>
request 영역 : ${requestScope.request_Key} <br>
page 영역 : ${pageScope.page_Key} <br>

<%-- 
application 영역 : <%= application.getAttribute("application_Key") %> <br>
session 영역 : <%= session.getAttribute("session_Key") %> <br>
--%>

<hr>

<!-- web.xml에 있는 param을 불러옴 -->
${initParam.id} <br>
${initParam.pw} <br>
${initParam.name} <br>

</body>
</html>