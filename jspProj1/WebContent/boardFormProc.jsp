<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맛불리의 이벤트</title>
<style type="text/css">
.form-style-2{
	margin: 5% 0% 20% 5%;
	max-width: 700px;
	padding: 20px 12px 10px 20px;
	font: 13px Arial, Helvetica, sans-serif;
}
.form-style-2-heading{
	font-weight: bold;
	font-style: italic;
	border-bottom: 2px solid #ddd;
	margin-bottom: 20px;
	font-size: 2em;
	padding-bottom: 3px;
}
.form-style-2 label{
	display: block;
	margin: 0px 0px 15px 0px;
}
.form-style-2 label > span{
	width: 100%;
	font-size: 1.2em;
	font-weight: bold;
	float: left;
	padding-top: 8px;
	padding-right: 5px;
	margin-bottom: 5px;
}
.form-style-2 span.required{
	color:red;
}

.form-style-2 input.input-field{
	width: 48%;	
	font-size:2em;
}
.form-style-2 input.input-field,
.form-style-2 .textarea-field{
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	border: 1px solid #C2C2C2;
	box-shadow: 1px 1px 4px #EBEBEB;
	-moz-box-shadow: 1px 1px 4px #EBEBEB;
	-webkit-box-shadow: 1px 1px 4px #EBEBEB;
	border-radius: 3px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	padding: 7px;
	outline: none;
}
.form-style-2 .input-field:focus,
.form-style-2 .textarea-field:focus{
	border: 1px solid #0C0;
}
.form-style-2 .textarea-field{
	height:100px;
	width: 60%;
	font-size: 1.5em;
}
.form-style-2 input[type=submit]{
	border: none;
	padding: 8px 15px 8px 15px;
	background: #FF8500;
	color: #fff;
	box-shadow: 1px 1px 4px #DADADA;
	-moz-box-shadow: 1px 1px 4px #DADADA;
	-webkit-box-shadow: 1px 1px 4px #DADADA;
	border-radius: 3px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	font-size: 1.5em;
}
.form-style-2 input[type=submit]:hover{
	background: #EA7B00;
	color: #fff;
}
</style>
</head>
<body>
<div class="ideaForm">
<div class="form-style-2">
<div class="form-style-2-heading">맛불리의 소소한 이벤트</div>
<form action="boardProc1.jsp" method="post">
<label for="field1"><span>Name <span class="required">*</span></span><input type="text" class="input-field" name="name" value="" /></label>
<label for="field2"><span>Idea <span class="required">*</span></span><input type="text" class="input-field" name="title" value="" /></label>
<label for="field3"><span>Explain <span class="required">*</span></span><textarea name="content" class="textarea-field" placeholder="아이디어에 대해 간략하게 설명해주세요."></textarea></label>

<label><span> </span><input type="submit" value="신청하기" /></label>
</form>
</div>
</div>
</body>
</html>