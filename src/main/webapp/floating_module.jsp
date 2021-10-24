<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>플로팅 모듈</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="/css/main.css?ver=22">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="/js/main.js?ver=10" ></script>
<script type="text/javascript">
$(document).ready(function(){
	var currentPosition = parseInt($("#floating_btn").css("top"));
	$(window).scroll(function() {
		var position = $(window).scrollTop();
		$("#floating_btn").stop().animate({"top":position+currentPosition+"px"},700);
	});
});
</script>
<body>
	<div class="floating_btn" id="floating_btn">
    	<p id="floating_title"><b>리모컨</b></p>
    	<div class="floating_btn_img" onclick="show_top();">
    		<img src="/image/up_arrow.png" alt="상단 이동"/>
    	</div>
    	<p>맨위로</p>
    	<div class="floating_btn_img" onclick="link_call();">
    		<img src="/image/call_img.png" alt="상담 버튼"/>
    	</div>
    	<p>고객센터</p>
    	<div class="floating_btn_img" onclick="location.href='main.do'">
    		<img src="/image/home_btn.png" alt="상담 버튼"/>
    	</div>
    	<p>HOME</p>
    </div>
</body>
</html>