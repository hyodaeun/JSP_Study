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
	String id = request.getParameter("id");
	String name= request.getParameter("name");
%>

<jsp:useBean id="test" class="mirim.hs.kr.TestBean"/>
<!--<jsp:setProperty name="test" property="id"/>  property="id"는 form에서 id를 찾아가 값을 가져가 setId()를 호출, value값 지정시 출력되는 값 바뀜 
<jsp:setProperty name="test" property="name"/>-->
<jsp:setProperty name="test" property="*"/> <!-- 어떤 form이든 모두 불러와 사용 가능 -->
<%= test.getId() %> <br>
<%= test.getName() %> <br>

<%-- 
ID : <%= id %> <br>
이름 : <%= name %> <br>
 --%>

</body>
</html>