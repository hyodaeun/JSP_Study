<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String su = request.getParameter("localNum");
	String localName="";
	
	switch(su) {
		case "0" :
			localName = "종로";
			break;
		case "1" :
			localName = "도봉";
			break;
		case "2" :
			localName = "동대문";
			break;
		case "3" :
			localName = "강동";
			break;
		case "4" :
			localName = "서초";
			break;
		case "5" :
			localName = "동작";
			break;
		case "6" :
			localName = "강서";
			break;
		case "7" :
			localName = "은평";
			break;
		default : 
			localName = "없는 권역";
			break;
	}
	
	out.println("선택하신 지역은 <b>" + localName + "</b> 입니다.");
%>