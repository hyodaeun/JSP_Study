<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--<meta name="viewport" content="width=device-width, initial-scale=1">  -->

<style>
      #container {
        width: 100%;
        height:800px;
        margin-top: 2%;
        margin-left: 2%;
        margin-right: 2%;
        padding: 20px;
      }
      #header {
        height: 20%;
      }
      #content {
        width: 90%;
        height: 60%;
        padding: 40px;
        float: center;
      }
      #footer {
      	height: 20%;
      }
      
</style>
<title>Template 페이지</title>
</head>
<body>
<%
	String contentPage = request.getParameter("CONTENTPAGE");
%>

<table id="container" cellpadding="2" cellspacing="0">

<tr id="header">
	<td colspan=2>
		<jsp:include page="top.jsp" flush="false"/>
	</td>
</tr>

<tr id="content">
	<td>
		<jsp:include page="<%= contentPage %>" flush="false"/>
	</td>
</tr>

<tr id="footer">
	<td colspan=2>
		<jsp:include page="bottom.jsp" flush="false"/>
	</td>
</tr>

</table>
</body>
</html>