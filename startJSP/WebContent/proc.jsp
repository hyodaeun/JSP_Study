<%@page import="sun.nio.cs.ext.ISCII91"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//100%자바
//톰캣이 자동으로 new를 해주기 때문에 자동적으로 만들어지는 내장객체가 있어서 아래와 같은 메서드(나 멤버변수) 사용 가능
//톰캣이 request라는 내장객체으로 정함.
//이 안에 있는 건 자바로 인식, <%=는 out.println이나 출력을 의미
	String str1 = "지역변수";
	request.setCharacterEncoding("UTF-8"); //post문서 방식으로 보낼 때는 한글이 있으면 이걸 꼭 써야함!!
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String gen = request.getParameter("gen");
	
	if(gen.equals("M"))
		gen = "남자";
	else
		gen = "여자";
	
	String inotice = request.getParameter("inotice");
	String cnotice = request.getParameter("cnotice");
	String dnotice = request.getParameter("dnotice");
	String job = request.getParameter("job");
	
	//System.out.println();는 콘솔창에 찍힘 JSP는 웹브라우저에 찍어야 하므로 PrintWriter.out을 씀
	
	
//아래는 출력

%>

이름 : <%= name %> <br>
ID : <%= id %> <br>
PW : <%= pw %> <br>
성별 : <%= gen %> <br>

공지 메일 : <%= notice(inotice)%> <br>
광고 메일 : <%= notice(cnotice)%> <br>
배송 메일 : <%= notice(dnotice)%> <br>
직업 : <%= job %>

<%!
	String str2 = "전역변수";

	public String notice(String notice) {
		if(notice == null) {
			return "받지 않음";
		}
		else {
			return "받음";
		}
	}
%>