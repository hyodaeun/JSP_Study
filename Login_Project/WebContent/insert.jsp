<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼</title>
</head>
<body>

<b>회원가입 폼</b>

<form action="insertProc.jsp" method="post">
이름 : <input type="text" name="name"> <br>
ID : <input type="text" name="id"> <br>
비밀번호 : <input type="password" name="pw"> <br>
비밀번호 확인 : <input type="password" name="pw2"> <br>
주소 : <input type="text" name="address" size=20> <br>
<input type="submit" value="회원가입">
</form>

</body>
</html>