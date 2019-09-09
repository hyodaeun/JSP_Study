<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="member" class="mirim.hs.kr.MemberInfo" scope="request"></jsp:useBean>
<jsp:setProperty name="member" property="name" value="hong" />
<jsp:getProperty name="member" property="id"/> <br>
<jsp:getProperty name="member" property="name"/> <br>

</body>
</html>