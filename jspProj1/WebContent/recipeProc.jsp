<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.recipe_tb {
	margin-top: 10%;
	margin-bottom: 30%;
	font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
	max-width: 100%;
	height: auto;
}

.overlay-image {
 position: relative;
 width: 100%;
}

.overlay-image .text {
 color: #fff;
 font-size: 30px;
 line-height: 1.5em;
 text-shadow: 2px 2px 2px #000;
 text-align: center;
 position: absolute;
 top: 50%;
 left: 50%;
 transform: translate(-50%, -50%);
 width: 100%;
}
.overlay-image .hover {
 position: absolute;
 top: 0;
 height: 100%;
 width: 100%;
 opacity: 0;
 transition: .5s ease;
}
.overlay-image:hover .hover {
 opacity: 1;
}
.overlay-image .hover {
 background-color: rgba(0,0,0,0.5);
}
.point {
	color: yellow;
}
</style>
<body>
<center>
	<div class="recipe_tb">
		<table>
			<tr>
				<td>
					<div class="overlay-image">
					<a href="https://www.instagram.com/p/BpGaYBRnBE9/">
						<img class="image" src="images/recipe1.jpg" alt="Alt text">
						<div class="hover">
	  						<div class="text">
	  						재료 : 오리고기, 연어, 두부, 새송이 버섯<br>
	  						상추, 새싹채소, 현미밥 반 공기, 김가루
	  						</div>
	 					</div>
	 				</a>
	 				</div>
				</td>
				<td>
					<div class="overlay-image">
					<a href="https://www.instagram.com/p/Boan-WQnlaf/">
						<img class="image" src="images/recipe2.jpg" alt="Alt text">
						<div class="hover">
	  						<div class="text">
	  						재료 : 두부, 낫또, 김치 조금, 현미+귀리 밥<br>
	  						간장 한 큰술, 김, 어린 잎 채소
	  						</div>
	 					</div>
	 				</a>
	 				</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="overlay-image">
					<a href="https://www.instagram.com/p/Bn5BF9iA7xB/">
						<img class="image" src="images/recipe3.jpg" alt="Alt text">
						<div class="hover">
	  						<div class="text">
	  						재료 : 당근, 양배추, 고추, 버섯, 양파<br>
	  						백미+귀리 곤드레밥, 두부, 달래 간장<br>
	  						<span class="point">&lt;TIP&gt; 버섯과 양파는 에어프라이어로 익히면 효과 UP!</span>
	  						</div>
	 					</div>
	 				</a>
	 				</div>				
				</td>
				<td>
					<div class="overlay-image">
					<a href="https://www.instagram.com/p/BnsT17Qj9df/">
						<img class="image" src="images/recipe4.jpg" alt="Alt text">
						<div class="hover">
	  						<div class="text">
	  						재료 : 고추, 버섯, 새싹 채소, 당근, 양배추, 상추<br>
	  						돼지고기 앞다리살, 현미+귀리 반 공기<br>
	  						<span class="point">&lt;TIP&gt; 앞다리살은 지방 제거 후, 에어프라이어로 익히면 효과 UP!</span>
	  						</div>
	 					</div>
	 				</a>
	 				</div>
				</td>
			</tr>
		</table>
	</div>
</center>
</body>
</html>