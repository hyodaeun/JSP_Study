<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	int age = Integer.parseInt(request.getParameter("age"));
	int height = Integer.parseInt(request.getParameter("height"));
	int weight = Integer.parseInt(request.getParameter("weight"));
	int kcal = Integer.parseInt(request.getParameter("kcal"));
	
	
%>

<%!
	double mybmr;
	double diffkcal;
%>

<%
	//나의 기초대사량 계산 과정
	if(gender.equals("men"))
		mybmr = 66.47 + (13.75 * weight) + (5 * height) - (6.76 * age);
	else 
		mybmr = 655.1 + (9.56 * weight) + (1.85 * height) - (4.68 * age);
	//오늘 섭취한 칼로리에서 나의 기초대사량을 뺀 후 소모해야 할 칼로리 공개

	mybmr = Math.round(mybmr*100)/100.0;
	
	diffkcal = kcal - mybmr;
	diffkcal = Math.round(diffkcal*100)/100.0;

%>
<style>
.exerimg {
	 position:absolute; left:0px; right:0px; bottom:0px;
}

.oval-thought {
  position:relative;
  width:330px;
  padding:45px 50px;
  margin:1em auto 80px;
  text-align:center;
  color:#fff;
  background:#075698;
  /* css3 */
  background:-webkit-gradient(linear, 0 0, 0 100%, from(#2e88c4), to(#075698));
  background:-moz-linear-gradient(#2e88c4, #075698);
  background:-o-linear-gradient(#2e88c4, #075698);
  background:linear-gradient(#2e88c4, #075698);
  /*
  NOTES:
  -webkit-border-radius:220px 120px; // produces oval in safari 4 and chrome 4
  -webkit-border-radius:220px / 120px; // produces oval in chrome 4 (again!) but not supported in safari 4
  Not correct application of the current spec, therefore, using longhand to avoid future problems with webkit corrects this
  */
  -webkit-border-top-left-radius:220px 120px;
  -webkit-border-top-right-radius:220px 120px;
  -webkit-border-bottom-right-radius:220px 120px;
  -webkit-border-bottom-left-radius:220px 120px;
  -moz-border-radius:220px / 120px;
  border-radius:220px / 120px;
}

.oval-thought p {font-size:1.25em;}

/* creates the larger circle */
.oval-thought:before {
  content:"";
  position:absolute;
  bottom:-20px;
  left:50px;
  width:30px;
  height:30px;
  background:#075698;
  /* css3 */
  -webkit-border-radius:30px;
  -moz-border-radius:30px;
  border-radius:30px;
}

/* creates the smaller circle */
.oval-thought:after {
  content:"";
  position:absolute;
  bottom:-30px;
  left:30px;
  width:15px;
  height:15px;
  background:#075698;
  /* css3 */
  -webkit-border-radius:15px;
  -moz-border-radius:15px;
  border-radius:15px;
}
.mainBtn {
	margin-top: 2vh;
	margin-bottom: 10vh;
}
</style>

<center>
<div class="mainBtn">
	<a href="main.jsp"><img src="images/header.jpg" width="180vw" height="60vh" float="left"></a>
</div>
</center>
<blockquote class="oval-thought">
    <p>음.. <%=name%>님의 기초대사량은<br><b><u><%=mybmr%>kcal</u></b>이니까<br><%
if(diffkcal<=0.00) {%>
	오늘 섭취한 칼로리는 모두 소모되었습니다!
<%}
else {%>
	오늘 <b><u><%=diffkcal%>kcal</u></b>이상 소모하면<br>다이어트에 성공하겠군!
<%}%></p>
</blockquote>
<div class="exerimg">
	<img src="images/exercise.png" width="70%" height="75%">
</div>