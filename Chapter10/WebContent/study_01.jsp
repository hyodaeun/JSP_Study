<%@page import="mirim.hs.kr.TestBean"%>
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
	TestBean test = new TestBean();
	test.setId("Hong");
	out.println(test.getId());
--%>
<jsp:useBean id="test" class="mirim.hs.kr.TestBean" scope="request"/>
<jsp:setProperty name="test" property="id" value="Hong"/>
<jsp:getProperty name="test" property="id"/>

<jsp:forward page="study_02.jsp"/>
</body>
</html>