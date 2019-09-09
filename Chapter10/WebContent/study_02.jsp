<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- test를 만드는게 아니라 study_01에서 만든 test를 공유해서 사용하는 거임, scope를 꼭 지정해줘야 함-->
<jsp:useBean id="test" class="mirim.hs.kr.TestBean" scope="request"/> 

<jsp:getProperty name="test" property="id"/>
</body>
</html>