<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.main-block__radio-group {
		margin-top: 10%;
		margin-bottom: 30%;
	}
	.main-block__radio-group.main-block__radio-group--nowrap-desktop {
		white-space: nowrap;
		width:20%;
	}

	.main-block__radio-group .radio-group__radio {
		margin: 7px 0;
		color: #d7d7d7;
	}

	.main-block__radio-group .radio-group__radio .radio__input {
		display: none;
	}

	.main-block__radio-group .radio-group__radio .radio__label {
		display: inherit;
		padding: 5px 20px;
		border: solid 1px #FF6633;
		border-radius: 15px;
		font-size: 2em;
		font-weight: 500;
		color: #FF6633;
		word-break: break-all;
		text-align: center;
		cursor: pointer;
	}
	.main-block__radio-group .radio-group__radio:hover .radio__label {
		border: solid 1px #FF6633;
	}
	.main-block__radio-group .radio-group__radio .radio__input:checked + .radio__label {
		border: solid 1px #FF6633;
		background-color: #FF6633;
		color: white;
	}
	.main-block__radio-group .radio-group__radio .radio__label.radio__label--desktop-small {
		font-size: 18px;
	}
	.main-block__radio-group .radio-group__radio .radio__label.radio__label--desktop-big {
		padding: 12px 20px;
		font-size: 23px;
	}
	.main-block__radio-group .radio-group__radio .radio__label.radio__label--desktop-left-align {
		text-align: left;
	}
</style>
</head>
<body>

<%
	String dirPath = application.getRealPath("/WEB-INF/side-effect");
	//out.println(dirPath);
	File dir = new File(dirPath);
	String fileNames[] = dir.list();
	
	/*
	for(int i=0; i<fileNames.length; i++) {
		out.println(fileNames[i] + "<br>");
	}
	*/
%>
	<center>
	<div class="main-block__radio-group main-block__radio-group--nowrap-mobile main-block__radio-group--nowrap-desktop">
        <h2>어떤 부작용이 생겼나요?</h2>
        <div class="radio-group__radio">
          <input type="radio" name="side-effect" class="radio__input" id="age_band_1" onClick="checkBox()" />
          <label for="age_band_1" class="radio__label radio__label--desktop-small">푸석해진 피부</label>
        </div>
        
        <div class="radio-group__radio">
          <input type="radio" name="side-effect" class="radio__input" id="age_band_2" onClick="checkBox()" />
          <label for="age_band_2" class="radio__label radio__label--desktop-small">빈혈</label>
        </div>
        
        <div class="radio-group__radio">
          <input type="radio" name="side-effect" class="radio__input" id="age_band_3" onClick="checkBox()" />
          <label for="age_band_3" class="radio__label radio__label--desktop-small">탈모</label>
        </div>
        
        <div class="radio-group__radio">
          <input type="radio" name="side-effect" class="radio__input" id="age_band_4" onClick="checkBox()" />
          <label for="age_band_4" class="radio__label radio__label--desktop-small">부종</label>
        </div>
        
        <div class="radio-group__radio">
          <input type="radio" name="side-effect" class="radio__input" id="age_band_5" onClick="checkBox()" />
          <label for="age_band_5" class="radio__label radio__label--desktop-small">생리불순</label>
        </div>
		
		<div id="1" style="display: none"><a href="sideEfReader.jsp?NAME=prob1.txt"><br>당신의 피부를 보호하려면?</a></div>
	    <div id="2" style="display: none"><a href="sideEfReader.jsp?NAME=prob2.txt"><br>어지러움을 없애려면?</a></div>
	    <div id="3" style="display: none"><a href="sideEfReader.jsp?NAME=prob3.txt"><br>당신의 소중한 모발을 지키려면?</a></div>
	    <div id="4" style="display: none"><a href="sideEfReader.jsp?NAME=prob4.txt"><br>팅팅붓는 몸과 얼굴을 보호하려면?</a></div>
	    <div id="5" style="display: none"><a href="sideEfReader.jsp?NAME=prob5.txt"><br>계속 신경쓰이는 이 고민을 없애려면?</a></div>
	</div>
	</center>
</body>
<script>
function checkBox() {
	var check_Box = document.getElementsByName("side-effect"); //체크박스 name
	for (j = 0; j < check_Box.length; j++) {
	 var disign = document.getElementById([j+1]); // 보여질내용
	 if(check_Box[j].checked == true ){
	  disign.style.display = "block";
	 }else{
	  check_Box[j].checked = false;
	  disign.style.display = "none";
	 }
	 }
	}
</script>
</html>