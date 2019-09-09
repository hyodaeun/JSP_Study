<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.form-style-3{
	margin-top: 10%;
	margin-bottom: 30%;
	max-width: 650px;
	font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}
.form-style-3 label{
	display:block;
	margin-bottom: 16px;
}
.form-style-3 label > span{
	float: left;
	width: 30%;
	color: #F072A9;
	font-weight: bold;
	font-size: 1.5em;
	text-shadow: 1px 1px 1px #fff;
}
.form-style-3 fieldset{
	border-radius: 10px;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	margin: 0px 0px 10px 0px;
	border: 1px solid #FFD2D2;
	padding: 20px;
	background: #FFF4F4;
	box-shadow: inset 0px 0px 15px #FFE5E5;
	-moz-box-shadow: inset 0px 0px 15px #FFE5E5;
	-webkit-box-shadow: inset 0px 0px 15px #FFE5E5;
}
.form-style-3 fieldset legend{
	color: #FFA0C9;
	border-top: 1px solid #FFD2D2;
	border-left: 1px solid #FFD2D2;
	border-right: 1px solid #FFD2D2;
	border-radius: 5px 5px 0px 0px;
	-webkit-border-radius: 5px 5px 0px 0px;
	-moz-border-radius: 5px 5px 0px 0px;
	background: #FFF4F4;
	padding: 0px 20px 4px 20px;
	box-shadow: -0px -1px 2px #F1F1F1;
	-moz-box-shadow:-0px -1px 2px #F1F1F1;
	-webkit-box-shadow:-0px -1px 2px #F1F1F1;
	font-weight: normal;
	font-size: 2em;
}
.form-style-3 input[type=date]{
	border-radius: 3px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border: 1px solid #FFC2DC;
	outline: none;
	color: #F072A9;
	padding: 5px 8px 5px 8px;
	box-shadow: inset 1px 1px 4px #FFD5E7;
	-moz-box-shadow: inset 1px 1px 4px #FFD5E7;
	-webkit-box-shadow: inset 1px 1px 4px #FFD5E7;
	background: #FFEFF6;
	width:50%;
	font-size: 2em;
}
.form-style-3  input[type=submit]
{
	background: #EB3B88;
	border: 1px solid #C94A81;
	padding: 5px 15px 5px 15px;
	color: #FFCBE2;
	box-shadow: inset -1px -1px 3px #FF62A7;
	-moz-box-shadow: inset -1px -1px 3px #FF62A7;
	-webkit-box-shadow: inset -1px -1px 3px #FF62A7;
	border-radius: 3px;
	border-radius: 3px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;	
	font-weight: bold;
	font-size: 1.2em;
}
.required{
	color:red;
	font-weight:normal;
}
.button
{
	margin-top: 3%;
}
</style>
</head>
<body>
<%!
	SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd");
	Date time = new Date();
	//날짜 형식에서 문자열로 변환 후 값을 보냄
	String setdate = dateformat.format(time);
%>
<center>
<div class="form-style-3">
<form action="mydayProc1.jsp" method="post">
<fieldset>
	<legend>D-day</legend>
		<label for="field1"><span>시작날 <span class="required">*</span></span><input type="date" class="input-field" name="startdate" value="<%=setdate%>" /></label>
		<label for="field2"><span>마지막날 <span class="required">*</span></span><input type="date" class="input-field" name="finaldate"/></label>
		<label><span> </span><input type="submit" value="확인" class="button"/></label>
</fieldset>
</form>
</div>
</center>
</body>
</html>