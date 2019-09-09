<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String name1 = "홍길동";
%>

이름  : <%= name1 %> <br>

<%
	name1 = "";
%>

이름  : <%= name1 %> <br>

<hr>

<c:set var="name2" value="홍길순" />
이름 : <c:out value="${name2}" /> <br>

<c:remove var="name2"/>
이름 : <c:out value="${name2}" /> <br>

<hr>

<%
	try {
		out.println(2/0);
		
	} catch(Exception e) { %>
	<%= "Exception 발생" %>
<%
		out.println(e.getMessage());
	}
%>

<hr>

<c:catch var="message">
	<%= 2 / 0 %>
</c:catch>
Exception 발생
<c:out value="${message}"/>

<hr>

<%
	if((1+2) == 3) { %>
		<%= "1 + 2 = 3" %>
<%	}%>

<br>

<c:if test="${1+2==3}">
	1 + 2 = 3
</c:if>

<hr>

<%
	if((1+2) != 4) { %>
		<%= "1 + 2 != 4" %>
<%	}%>

<br>

<c:if test="${1+2!=4}">
	1 + 2 != 4
</c:if>

<hr>

<%
	for(int i=1; i<=10; i++) {%>
		<%= i %>	<br>
<%	}%>

<hr>

<!-- 홀수찍기 -->
<c:forEach var="i" begin="1" end="10" step="2">
	${i} <br>
</c:forEach>










</body>
</html>