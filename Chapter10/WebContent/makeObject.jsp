<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="member" class="mirim.hs.kr.MemberInfo" scope="request"/>
<%
	//setProperty와 같은 역할(하지만 이렇게 섞어쓰는 게 권고사항은 아님)
	member.setId("Hong");
	member.setName("홍길동");
	
%>

<jsp:forward page="useObject.jsp"/>

</body>
</html>