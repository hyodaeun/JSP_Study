<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= 10 %> : ${10}<br>
<%= 99.99 %> : ${99.99}<br>
<%= "ABCD" %> : ${"ABCD"}<br>
<%= true %> : ${true}<br>

<hr>

<%= 1+2 %> : ${1+2}<br>
<%= 1-2 %> : ${1-2}<br>
<%= 1*2 %> : ${1*2}<br>
<%= (double)1/2 %> : ${1/2}<br> <!-- EL표현법은 자동으로 소수점 처리해줌 -->
<%= (1 > 2) ? 1 : 2 %> : ${(1 > 2) ? 1 : 2}<br>
<%= (1 > 2) || (1 < 2) %> : ${(1 > 2) || (1 < 2)}<br>



</body>
</html>