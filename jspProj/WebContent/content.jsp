<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{margin:0; padding:0;}
	ul,ol,dl{list-style:none;}
	img , video{max-width:100%; border:0;}
	a{text-decoration:none; color:#333; display:inline-block;}
	table{border-collapse:collapse; border-spacing:0;}
	input , select {vertical-align:middle;}
	html{height:100%;}
	label{cursor:pointer;}
	i , em , address{font-style:normal; font-weight:normal;}

	.slide{text-align:center; position:relative; width: 90%; margin: 0 auto; display: block; margin-top: 5%; margin-bottom:50%;}
	
	.slide_ul{display: block;}
	.slide_ul>li{position:absolute; top:0; left:0; list-style:none;z-index:10; display: block;}
	.slide_ul>li img{}
	li{list-style: none;}
	
	.show{display:block;}
	
	.slide_btn>li{float: left; margin:0 5px 5px 0;}
	.slide_btn>li>a{display:block; width: 14px; height:14px; background: url(../images/spr.png) -24px -125px; text-indent: -999em; }
	.slide_btn>li>a.active{background-position: 0 -126px;}
	
	.slide_btn{z-index:100; position:absolute; right: 0; bottom:0; }
	
	.slide_btn:after{content:''; display:block; clear:both;}
	.slide_btn{*zoom:1;}

	.exp {
		text-align:center; position:relative; width: 90%; margin: 0 auto; display: block; margin-bottom: 10%;
	}
	.h_1 {
		font-size: 3em;
	}
	.h_2 {
		font-size: 1.5em;
	}
	.h_3 {
		font-size: 2em;
	}
	iframe {
		margin-bottom: 5%;
	}
	.food1 {
		float:left;
	}
	.food2 {
		float:right;
	}
	.food {
		position:relative; margin: 0 auto; display: block; margin-bottom: 20%;
	}
	.foodtb {
		width: 60%;
		height: auto;
	}
</style>
</head>
<body>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script>
//JavaScript Document

$(document).ready(function() {
	
	var current=0;
	var slide_length = $('.slide_ul>li').length;
	var btn_ul = '<ul class="slide_btn"></ul>';
	
	$('.slide_ul>li').hide();
	$('.slide_ul>li').first().show();
	
	
	$(btn_ul).prependTo($('.slide'))
	for (var i = 0 ; i < slide_length; i++){
		var child = '<li><a href="#none">'+i+'</a></li>';
		$(child).appendTo($('.slide_btn'));
	}
	
	$('.slide_btn > li > a').first().addClass('active');	
	$('.slide_btn > li > a').on('click' , slide_stop);
	
function autoplay(){
	
	if(current == slide_length-1){
	current = 0;
}else{
	current++;
}
	$('.slide_ul>li').stop().fadeOut(1000);
	$('.slide_ul>li').eq(current).stop().fadeIn(1000);
	$('.slide_btn > li > a').removeClass('active');	
	$('.slide_btn > li > a').eq(current).addClass('active');	
}
setInterval(autoplay,2000);

//버튼 클릭시 호출되는 함수
function slide_stop(){
		var fade_idx = $(this).parent().index(); 
		current = $(this).parent().index();//클릭한 버튼의 Index 를 받아서 그 다음 이미지부터 슬라이드 재생.
		if($('.slide_ul > li:animated').length >= 1) return false; //버튼 반복 클릭시 딜레이 방지
		$('.slide_ul > li').fadeOut(400);
		$('.slide_ul > li').eq(fade_idx).fadeIn(400);
		$('.slide_btn > li > a').removeClass('active');	
		$(this).addClass('active');
		
	}	
});
</script>

<div class="slide">
	<ul class="slide_ul">
		<li><a href="#"><img src="images/slide1.PNG" alt="dane"></a></li>
		<li><a href="#"><img src="images/slide2.jpg" alt="dane"></a></li>
		<li><a href="#"><img src="images/slide3.jpg" alt="dane"></a></li>
		<li><a href="boardForm.jsp"><img src="images/slide4.jpg" alt="dane"></a></li>
	</ul>
</div>
<div class="exp">
	<p class="h_1">맛불리</p><br><br><br>
	<p class="h_2">
	맛불리 TV라는 유튜브 채널에서 이 채널의 유튜버를 말합니다.<br>
	맛불리의 다이어트 방법은 굶거나 운동으로 살을 빼는 것이 아니라 <br>
	식단 조절과 16시간의 공복으로 생체리듬을 유지하는 방법입니다.<br>
	</p><br><br><br><br>
		<iframe src="https://scontent-nrt1-1.cdninstagram.com/vp/e4302b1e695a8448fdb12e8d5a2a7719/5CDAB953/t50.2886-16/50692638_167500570892795_5571004309965940101_n.mp4?_nc_ht=scontent-nrt1-1.cdninstagram.com" width="800" height="400"></iframe>
	<h2 class="h_3">
	고통 받는 다이어트 대신<br><br>
	맛불리와의 즐거운 다이어트 어때요?
	</h2>
</div>
<center>
<div class="food">
<table class="foodtb">
	<tr>
		<td rowspan=2 width="40%"><img class="food1" src="images/food1.jpg" width="100%" hegiht="100%"></td>
		<td width="20%"><img class="food2" src="images/food2.jpg" width="100%" hegiht="100%"></td>
	</tr>
	<tr>
		<td width="20%"><img class="food3" src="images/food3.jpg" width="100%" hegiht="100%"></td>
	</tr>
</table>
</div>
</center>
</body>
</html>

