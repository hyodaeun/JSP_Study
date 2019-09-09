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
	max-width: 750px;
	font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}
.form-style-3 label{
	display:block;
	margin-bottom: 16px;
}
.form-style-3 label > span{
	float: left;
	width: 100%;
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
.form-style-3 textarea{
	width:250px;
	height:100px;
}
.form-style-3 input[type=text]
{
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
	width:70%;
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
td
{
	padding-bottom: 3%;
}
</style>
</head>
<body>
<center>
<div class="form-style-3">
<form name="kcalForm" action="mybmrProc1.jsp" method="post">
<fieldset>
	<legend>kcal계산기</legend>
	<table>
		<tr>
			<td><label for="field1"><span>이름 <span class="required">*</span></span></td>
			<td><input type="text" class="input-field" name="name" /></label></td>
		</tr>
		<tr>
			<td><label for="field2"><span>성별 <span class="required">*</span></span></td>
			<td>
				여<input type="radio" class="input-field" name="gender" value="women" checked/>
				남<input type="radio" class="input-field" name="gender" value="men"/></label>
			</td>
		</tr>
		<tr>
			<td><label for="field3"><span>나이 <span class="required">*</span></span></td>
			<td><input type="text" class="input-field" name="age" /> 세</label></td>
		</tr>
		<tr>
			<td><label for="field4"><span>신장 <span class="required">*</span></span></td>
			<td><input type="text" class="input-field" name="height" title="소수점은 생략" /> cm</label></td>
		</tr>
		<tr>
			<td><label for="field5"><span>체중 <span class="required">*</span></span></td>
			<td><input type="text" class="input-field" name="weight" title="소수점은 생략" /> kg</label></td>
		</tr>
		<tr>
			<td><label for="field6"><span>오늘 섭취한 칼로리 <span class="required">*&nbsp;</span></span></td>
			<td><input type="text" class="input-field" name="kcal" /> kcal</label></td>
		</tr>
		
	</table>
	<center><label><span> </span><input type="submit" value="확인" class="button" /></label></center>
</fieldset>
</form>
</div>
</center>
</body>
</html>