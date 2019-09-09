<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- java에 html코드를 넣는 건 서블릿, html에 java코드를 넣는 건 jsp -->
안녕하세요
<%
	String name = "홍길동";
	for(int i=1; i<7; i++) {
		out.println("<h" + i + ">"); //<h1> <h2> .... <h6>
		out.println("류현진 화이팅~~~");
		out.println("</h" + i + ">"); //</h1> </h2> .... </h6>
	} //for
%>
<hr>

<%= new Date() %>
<br>

<%
	int a = 0, sum = 0;
	do {
		a++;
		sum += a;
	} while(a<10);
%>

<%= "10까지의 합은 " + sum + " 입니다." %>
<br>

<%= name + "님의 전화는 " + tel %>

<%! 
	String tel = "123-4567-8900"; // 변수를 뒤에 선언했지만, 전역변수라서 됨 -->
	public int add(int a, int b) {
		return a + b;
	}
%>

<br>

<%
	out.println(add(10,20));
%>

<br>

<%= add(10,20) %>
</body>
</html>