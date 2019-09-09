<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ include file="top.jsp" %>

<h1>include 연습(유지보수에 좋음)</h1>
<i>
include file 지시어 : 여러 jsp파일에서 공통으로 사용되는 부분을 별도의 파일로 만들어 필요할 때마다 불러다 쓴다.
</i>
<b>액션 태그를 이용한 include </b><br>
=========================================<br>
<font color="blue" size=4>
<jsp:include page="intag.jsp"/><%--액션태그는 결과값을 가져옴 --%>
<br>
<jsp:include page="intag1.jsp">
	<jsp:param name="name" value="Korea"/><%--인자값을 전달해줄수있음 --%>
</jsp:include>

</font>
=========================================<br>

<%@ include file="bottom.jsp" %> <%--페이지 디렉티브는 소스코드를 가져옴--%>

</body>
</html>