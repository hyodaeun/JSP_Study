<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
/*
	h1 {
		color: #bcbcbc;
		line-height: 100px;
		float: left;
	}
	*/
	.top {
		float: right;
		margin-right:2%;
	}
	.top li {
		float: left;
		vertical-align: middle;
	}
	.top a {
		line-height: 20px;
		color: #2E2E2E;
		padding: 0 15px;
		display: block;
		text-decoration: none;
		font-size: 20px;
		font-weight: bold;
	}
	.menu {
		float: right;
		margin-right:2%;
	}
	.menu li {
		float: left;
		vertical-align: middle;
	}
	.menu a {
		line-height: 100px;
		color: #2E2E2E;
		padding: 0 15px;
		display: block;
		text-decoration: none;
		font-size: 20px;
		font-weight: bold;
	}
	li {
		list-style: none;
	}
	.menu a:hover {
		color: #FF6633;
	}
	header {
		margin-bottom: 2%;
	}
</style>
<header>
	<div>
		<ul class="top">
			<li><a href="login.jsp">로그인</a></li>
			<li><a href="insert.jsp">회원 가입 </a></li>
		</ul>
	</div>
	<div>
	<a href="main.jsp"><img src="images/header.jpg" width="200vw" height="80vh" float="left"></a>
			<ul class="menu">
				<li><a href="myday.jsp">D-day</a></li>
				<li><a href="mybmr.jsp">기초대사량</a></li>
				<li><a href="recipe.jsp">맛불리의 레시피</a></li>
				<li><a href="board.jsp">게시판</a></li>
				<li><a href="sideEf.jsp">부작용</a></li>
			</ul>
	</div>
</header>