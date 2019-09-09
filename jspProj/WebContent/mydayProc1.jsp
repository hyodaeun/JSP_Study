<%@page import="java.text.ParseException"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String startdate;
	String finaldate;
	long diffDays;
%>

<%
	request.setCharacterEncoding("UTF-8");
	startdate = request.getParameter("startdate");
	finaldate = request.getParameter("finaldate");
	
	doDiff();
%>

<%!
	public void doDiff() {
		try {
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
			Date sDate = formatter.parse(startdate);
			Date fDate = formatter.parse(finaldate);
			
			long diff = fDate.getTime() - sDate.getTime();
		    diffDays = diff / (24 * 60 * 60 * 1000);
		    
		}
		catch (ParseException e) {
			e.printStackTrace();
		}
	}
%>
<style>
  .oval-quotes {
  position:relative;
  width:400px;
  height:350px;
  margin:10% auto 0%;
  color:#000;
  background:#be8c95;
  /* css3 */
  /*
  NOTES:
  -webkit-border-radius:Apx Bpx; // produces oval in safari 4 and chrome 4
  -webkit-border-radius:Apx / Bpx; // produces oval in chrome 4 (again!) but not supported in safari 4
  Not correct application of the current spec, therefore, using longhand to avoid future problems with webkit corrects this
  */
  -webkit-border-top-left-radius:400px 350px;
  -webkit-border-top-right-radius:400px 350px;
  -webkit-border-bottom-right-radius:400px 350px;
  -webkit-border-bottom-left-radius:400px 350px;
  -moz-border-radius:400px / 350px;
  border-radius:400px / 350px;
}

/* creates opening quotation mark */
.oval-quotes:before {
  content:"\201C";
  position:absolute;
  z-index:1;
  top:20px;
  left:20px;
  font:80px/1 Georgia, serif;
  color:#be8c95;
}

/* creates closing quotation mark */
.oval-quotes:after {
  content:"\201D";
  position:absolute;
  z-index:1;
  bottom:0;
  right:20px;
  font:80px/0.25 Georgia, serif;
  color:#be8c95;
}

.oval-quotes p {
  width:250px;
  height:250px;
  padding:50px 0 0;
  margin:0 auto;
  text-align:center;
  font-size:25px;
}

/* creates smaller curve */
.oval-quotes p:before {
  content:"";
  position:absolute;
  z-index:-1;
  bottom:-30px;
  right:55%;
  width:180px; /* wider than necessary to make it look a bit better in IE8 */
  height:60px;
  background:#fff; /* need this for webkit - bug in handling of border-radius */
  /* css3 */
  -webkit-border-bottom-right-radius:40px 50px;
  -moz-border-radius-bottomright:40px 50px;
  border-bottom-right-radius:40px 50px;
  /* using translate to avoid undesired appearance in CSS2.1-capabable but CSS3-incapable browsers */
  -webkit-transform:translate(-30px, -2px);
  -moz-transform:translate(-30px, -2px);
  -ms-transform:translate(-30px, -2px);
  -o-transform:translate(-30px, -2px);
  transform:translate(-30px, -2px);
}

/* creates larger curve */
.oval-quotes p:after {
  content:"";
  position:absolute;
  z-index:-2;
  bottom:-30px;
  right:25%;
  height:80px;
  border-right:200px solid #be8c95;
  background:#be8c95; /* need this for webkit - bug in handling of border-radius */
  /* css3 */
  -webkit-border-bottom-right-radius:200px 100px;
  -moz-border-radius-bottomright:200px 100px;
  border-bottom-right-radius:200px 100px;
  /* using translate to avoid undesired appearance in CSS2.1-capabable but CSS3-incapable browsers */
  -webkit-transform:translate(0, -2px);
  -moz-transform:translate(0, -2px);
  -ms-transform:translate(0, -2px);
  -o-transform:translate(0, -2px);
  transform:translate(0, -2px);
  /* reduce the damage in FF3.0 */
  display:block;
  width:0;
}

.oval-quotes + p {
  position:relative; /* part of the IE8 width compromise */
  width:150px;
  margin:0 0 2em;
  font-size:18px;
  font-weight:bold;
}
oval-quotes + img {
	margin-right: 15%;
}
.mainBtn {
	margin-top: 2vh;
}
</style>
<body>
<center>
<div class="mainBtn">
	<a href="main.jsp"><img src="images/header.jpg" width="180vw" height="60vh" float="left"></a>
</div>
</center>

<div class="talk">
	<blockquote class="oval-quotes">
		<br><br><br><br>
	    <p>다이어트 종료일까지 <%=diffDays%>일 남았습니다.</p>
	</blockquote>
	<br><br>
	<center>
		<img src="images/sit.png" width="70%" height="50%">
	</center>
</div>
</body>