<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="servletProc" method="post"> <!-- 서블릿의 클래스 이름으로 넘김, method는 기본값이 get방식임 -->
이름 : <input type = "text" name ="name" size = "10"> <br>
아이디 : <input type = "text" name ="id" size = "10"> <br>
비밀번호 : <input type = "password" name ="pw" size = "10"> <br>
취미 :
<input type = "checkbox" name ="hobby" value="read">독서
<input type = "checkbox" name ="hobby" value="cook">요리
<input type = "checkbox" name ="hobby" value="run">조깅
<input type = "checkbox" name ="hobby" value="swim">수영
<input type = "checkbox" name ="hobby" value="sleep">낮잠
<br>
과목 : 
<input type="radio" name="major" value="kor">국어
<input type="radio" name="major" value="eng">영어
<input type="radio" name="major" value="mat">수학
<input type="radio" name="major" value="jsp" checked>웹프로그래밍
<br>

영웅 : 
<select name="hero">
	<option value="line">라인</option>
	<option value="kengi">겐지</option>
	<option value="junk">정크랫</option>
	<option value="mersi">메르시</option>
</select>
<br>
<input type ="submit" value="전송"> <!-- submit은 유효성 체크 안하는 것으로 button타입과는 다름 -->
<input type = "reset" value="취소">

</form>

</body>
</html>