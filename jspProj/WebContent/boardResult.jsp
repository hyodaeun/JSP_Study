<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String str = request.getParameter("result");
	
	if(str.equals("ok")) {
		out.println("<h1><font color='red'>이벤트 참여 완료</font></h1>");
	}
	else {
		out.println("파일에 데이터를 저장할 수 없습니다.");
	}
	
	out.println("<font color='red' size='6'><a href='boardForm.jsp'>다른 아이디어로 신청하기</a></font><br>");
	out.println("<font color='red' size='6'><a href='main.jsp'>메인화면으로 돌아가기</a>");
%>
