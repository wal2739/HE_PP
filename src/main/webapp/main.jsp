<%@page import="com.HEProject.he.boardInfo.BoardInfoVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%List<BoardInfoVO> list = (List)request.getAttribute("list"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>메인 화면</title>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="/js/main.js?ver=14"></script>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="/css/main.css?ver=14">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script type="text/javascript">
	<%
	Date now = Calendar.getInstance().getTime();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy@MM@dd");
	String[] nowDate = formatter.format(now).split("@");
	int nowYear = Integer.parseInt(nowDate[0]);//이번년도
	int nowMonth = Integer.parseInt(nowDate[1]);//이번달
	int today = Integer.parseInt(nowDate[2]);//오늘
	%> 
	var nowYear = <%=nowYear%>; // 년도
	var saveYear = <%=nowYear%>; // 년도
	var nowMonth = <%=nowMonth%>;  // 월
	var saveMonth = <%=nowMonth%>;  // 월 정보 저장
	var today = <%=today%>;  // 날짜
	var eachMonth = new Array(12);//월별 일수
	var sum_month = 0;
	var relsult = 0;
	var lastYear = 0;
	
	
	function set_day() {
		eachMonth[0] =  31;
		eachMonth[1] =  28;
		eachMonth[2] =  31;
		eachMonth[3] =  30;
		eachMonth[4] =  31;
		eachMonth[5] =  30;
		eachMonth[6] =  31;
		eachMonth[7] =  31;
		eachMonth[8] =  30;
		eachMonth[9] =  31;
		eachMonth[10] =  30;
		eachMonth[11] =  31;
		if(nowYear%4==0 && (nowYear%400==0 || nowYear%100!=0)){//올해가 윤년일 경우 2월을 29일로 설정
			eachMonth[1] = 29;
		}
	
		sum_month = 0;//월별 일수의 합
		lastYear = nowYear-1;//작년 년도
	
	
		relsult = lastYear + lastYear/4 + (lastYear/400 - lastYear/100);
		//0년 1월 1일 부터의 일 계산 (작년 + 작년까지의 윤년 수(4로 나눔) + 작년까지의 윤년 수(400년으로 나눔) - (100으로 나눠지면 윤년이 아님);
		//정확히는 몇일이 밀려야 하는지를 계산함
	
		for(var i = 0; i < nowMonth; i++){//이번 달까지의 월별 일 수 를 모두 더함
			sum_month = sum_month + eachMonth[i];
		}
	}
	
	function calendar_cleaner() {
		for(var i = 1; i < 43; i++){
			document.getElementById('day'+ i).innerHTML = '-';
		}
	}
	
	function show_calendar(){
		set_day();
		var rlt = 0;
		sum_month -= eachMonth[nowMonth-1];//이번달까지의 일수 - 이번달의 일수
		relsult = relsult + sum_month;//0년 1월 1일부터 올해까지 밀린 일수 + 오늘까지 지난 올해의 일수
		rlt = Math.round(relsult%7);//일주일을 나누면 나머지 값을 통해 이번달 첫 요일이 나옴
		for(var i = 0 ; i < eachMonth[nowMonth-1]; i++){
			rlt++;
			if(saveMonth==nowMonth&&saveYear==nowYear){
				if(rlt==today){
					document.getElementById('day'+rlt).innerHTML = '<span class="active">' + (i+1) + '</span>';
				}else {
					document.getElementById('day'+rlt).innerHTML = i+1;
				}
			}else {
				document.getElementById('day'+rlt).innerHTML = i+1;
			}
		}
		document.getElementById('month').innerHTML = nowMonth + '<br><span style="font-size: 18px">'+ nowYear +'</span>';
		relsult=0;
		sum_month=0;
		lastYear=0;
	}
	
	function prevOrNext(click_num) {
		switch (click_num) {
		case 0:
			calendar_cleaner();
			if(nowMonth==1){
				nowYear--;
				nowMonth=12;
			}else {
				nowMonth--;
			}
			show_calendar();
			break;
		case 1:
			calendar_cleaner();
			if(nowMonth==12){
				nowYear++;
				nowMonth=1;
			}else {
				nowMonth++;
			}
			show_calendar();
			break;
		default:
			alert('에러');
			break;
		}
		
		
	}
	
	function today_fun() {
		set_day();
		var rlt = 0;
	    sum_month = sum_month - eachMonth[nowMonth-1] + today-1;//(이번달까지의 총일수 - 이번달 일수 + 오늘 날짜+1)
	    relsult = relsult + sum_month;//0년 1월 1일부터 올해까지 밀린 일수 + 오늘까지 지난 올해의 일수
	    rlt = Math.round(relsult%7);//일주일을 나누면 나머지 값을 통해 오늘의 요일이 나옴
	    
	}
    $(function () {
        var $slider = $('.slider'),
            $firstSlide = $slider.find('li').first()
                .stop(true).animate({ 'opacity': 1 }, 200);

        function PrevSlide() {
            stopSlide(); startSlide();
            var $lastSlide = $slider.find('li').last()
                .prependTo($slider);
            $secondSlide = $slider.find('li').eq(1)
                .stop(true).animate({ 'opacity': 0 }, 400);
            $firstSlide = $slider.find('li').first()
                .stop(true).animate({ 'opacity': 1 }, 400);
        }

        function NextSlide() {
            stopSlide(); startSlide();
            $firstSlide = $slider.find('li').first()
                .appendTo($slider);
            var $lastSlide = $slider.find('li').last()
                .stop(true).animate({ 'opacity': 0 }, 400);
            $firstSlide = $slider.find('li').first()
                .stop(true).animate({ 'opacity': 1 }, 400);
        }

        $('.next_btn').on('click', function () {
            NextSlide();
        });
        $('.prev_btn').on('click', function () {
            PrevSlide();
        });

        startSlide();

        var theInterval;

        function startSlide() {
            theInterval = setInterval(NextSlide, 5000);
        }

        function stopSlide() {
            clearInterval(theInterval);
        }

        $('.slider').hover(function () {
            stopSlide();
        }, function () {
            startSlide();
        });
    });

</script>
<style>
/* 배너 */
body, section, ul, dl, dd {
	margin: 0;
	padding: 0;
	user-select: none;
}

body {
	height: 200vh;
}

.div1 {
	margin: 0;
	width: 100%;
	height: 550px;
}

.slider {
	list-style: none;
	height: 500px;
	overflow: hidden;
}

.slider>li {
	top: 0;
	left: 0;
	width: 100%;
	height: 500px;
	opacity: 0;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
}

.slideBtn {
	height: 50px;
	cursor: pointer;
}

.slideBtn>div {
	display: flex;
	float: left;
	width: 50%;
	height: 50px;
	vertical-align: middle;
	align-items: center;
	text-align: center;
}

.slideBtn>div:hover {
	background-color: rgba(255, 255, 251, 7);
}

#prev_btn_img,#next_btn_img {
	display: inline-block;
	margin: 0 auto;
	height: 40px;
	width: 30px;
}
/* 배너 하단 div2 */
.div2 {
	width: auto;
	height: 700px;
	display: flex;
	justify-content: center;
	align-items: center;
	text-align: center;
	background-color: rgba(255, 255, 255, 0.7);
}

.div2_1 {
	float: left;
	width: 950px;
	height: 100%;
	display: inline-block;
	text-align: center;
	align-items: center;
	position: relative;
}

.div2_1_1 {
	margin-top: 30px;
	height: 80%;
	width: 100%;
	display: flex;
	float: left;
	align-items: center;
	justify-content: center;
}

.div2_1_2 {
	height: 20%;
	width: 100%;
	display: flex;
	float: left;
	text-align: center;
	justify-content: center;
}

.div2_2 {
	width: 950px;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
}

#div2_2_tb {
	width: 900px;
	height: 560px;
	background-color: white;
}

#div2_2_tb>caption {
	caption-side: bottom;
	text-align: left;
	font-weight: 700;
}

/* 마지막 div3 */
.div3 {
	width: auto;
	height: 500px;
	display: flex;
	justify-content: center;
	align-items: center;
	text-align: center;
}

.div3_1 {
	float: left;
	width: 100%;
	height: 500px;
	display: flex;
	justify-content: center;
	align-items: center;
}

.div3_2_2 {
	
}
/* 달력 스타일 */
.cal_div {
	display: inline-block;
	width: 900px;
	height: 450px;
	border-radius: 30px/30px;
	overflow: hidden;
}

.cal_div>* {
	box-sizing: border-box;
}

.month {
	padding: 70px 25px;
	width: 100%;
	background: #1abc9c;
}

.cal_div ul {
	list-style-type: none;
}

.month ul {
	margin: 0;
	padding: 0;
}

.month ul li {
	color: white;
	font-size: 20px;
	text-transform: uppercase;
	letter-spacing: 3px;
}

.month .prev {
	float: left;
	padding-top: 10px;
}

.month .next {
	float: right;
	padding-top: 10px;
}

.weekdays {
	margin: 0;
	padding: 10px 0;
	background-color: #ddd;
}

.weekdays li {
	display: inline-block;
	width: 13.6%;
	color: #666;
	text-align: center;
}

.days {
	padding: 10px 0;
	background: white;
	margin: 0;
}

.days li {
	list-style-type: none;
	display: inline-block;
	width: 13.6%;
	text-align: center;
	margin-bottom: 5px;
	font-size: 12px;
	color: #777;
}

.days li .active {
	padding: 5px;
	background: #1abc9c;
	color: white !important
}

.footer {
	width:100%;
	height: 200px;
	background: black;
	display: flex;
	justify-content: center;
	align-items: center;
	text-align: center;
}
.footer_div1{
	display: inline-block;
	height: auto;
}
/*  .footer_div2{
	display: inline-block;
	float: left;
	height: 30px;
}
.footer_div3{
	display: inline-block;
	float: left;
	height: 30px;
} */
.footer_div1>p{
	color: white;
	display: inline-block;
	margin: 0 5px 0 5px;
}
/*
.footer_div2>p{
	color: white;
	display: inline-block;
	margin: 0 5px 0 5px;
}
.footer_div3>p{
	color: white;
	display: inline-block;
	margin: 0 5px 0 5px;
}
.footer_div1>p>a {
	color: white;
	text-decoration: none;
} */
#tag_a{
	color: white;
	text-decoration: none;
}
#tag_a:visited {
	color: white;
	text-decoration: none;
}

#tag_a:hover {
	text-decoration: underline;
}




/* Add media queries for smaller screens */
@media screen and (max-width:720px) {
	.weekdays li, .days li {
		width: 13.1%;
	}
}

@media screen and (max-width: 420px) {
	.weekdays li, .days li {
		width: 12.5%;
	}
	.days li .active {
		padding: 2px;
	}
}

@media screen and (max-width: 290px) {
	.weekdays li, .days li {
		width: 12.2%;
	}
}
</style>
<body onload="show_calendar();">
	<jsp:include page="top_menu.jsp" />
	<jsp:include page="floating_module.jsp" />
	<main>
	<div class="div1">
		<ul class="slider">
            <li id="img1" style="background-image: url('image/test01.jpg'); "></li>
            <li id="img2" style="background-image: url('image/test02.jpg'); "></li>
            <li id="img3" style="background-image: url('image/test03.jpg'); "></li>
            <li id="img4" style="background-image: url('image/test04.jpg'); "></li>
        </ul>
        <div class="slideBtn">
            <div class="prev_btn">
                <img id="prev_btn_img" src="image/left.png" alt="">
            </div>
            <div class="next_btn">
                <img id="next_btn_img" src="image/right.png" alt="">
            </div>
        </div>
	</div>
	<div class="div2">
		<div class="div2_1">
			<div class="div2_1_1">
				<iframe id="ytb_iframe" width="900" height="480" src="https://www.youtube.com/embed/wHQZxrz29L4" 
				title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<br />
			<div class="div2_1_2">
				<p><b>사이트 이용방법이 궁금하시다면, 위의 유튜브 영상을 참고해주세요!</b></p>
			</div>
		</div>
		<div class="div2_2">
			<table id="div2_2_tb" class="table table-hover">
				<caption>공지 게시판</caption>
				<thead>
					<tr>
						<th></th>
						<th>글번호</th>
						<th>제목</th>
						<th>작성일</th>
						<th>작성자</th>
					</tr>
				</thead>
				<tbody>
					<%for(int i = 0 ; i < list.size(); i++){ %>
					<tr onclick="location.href='getBoard.do?boardCode=<%=list.get(i).getBoardCode()%>&statusNum=1'" style="cursor: pointer;">
						<td><%=i+1 %></td>
						<td><%=list.get(i).getBoardCode() %></td>
						<td><%=list.get(i).getBoardTitle() %></td>
						<td><%=list.get(i).getWriteDate() %></td>
						<td>admin</td>
					</tr>
					<%} %>
				</tbody>
			</table>
		</div>
	</div>
	<div class="div3">
		<div class="div3_1">
			<div class="cal_div">
				<div class="month">
					<ul>
						<li class="prev" onclick="prevOrNext(0);" style="cursor: pointer;">❮</li>
						<li class="next" onclick="prevOrNext(1);" style="cursor: pointer;">❯</li>
						<li style="text-align: center" id="month"></li>
					</ul>
				</div>
				<ul class="weekdays">
					<li>월</li>
					<li>화</li>
					<li>수</li>
					<li>목</li>
					<li>금</li>
					<li style="color: blue;">토</li>
					<li style="color: red">일</li>
				</ul>
				<ul class="days">
					<li id="day1">-</li>
					<li id="day2">-</li>
					<li id="day3">-</li>
					<li id="day4">-</li>
					<li id="day5">-</li>
					<li id="day6" style="color: blue;">-</li>
					<li id="day7" style="color: red">-</li>
					<li id="day8">-</li>
					<li id="day9">-</li>
					<li id="day10">-</li>
					<li id="day11">-</li>
					<li id="day12">-</li>
					<li id="day13" style="color: blue;">-</li>
					<li id="day14" style="color: red">-</li>
					<li id="day15">-</li>
					<li id="day16">-</li>
					<li id="day17">-</li>
					<li id="day18">-</li>
					<li id="day19">-</li>
					<li id="day20" style="color: blue;">-</li>
					<li id="day21" style="color: red">-</li>
					<li id="day22">-</li>
					<li id="day23">-</li>
					<li id="day24">-</li>
					<li id="day25">-</li>
					<li id="day26">-</li>
					<li id="day27" style="color: blue;">-</li>
					<li id="day28" style="color: red">-</li>
					<li id="day29">-</li>
					<li id="day30">-</li>
					<li id="day31">-</li>
					<li id="day32">-</li>
					<li id="day33">-</li>
					<li id="day34" style="color: blue;">-</li>
					<li id="day35" style="color: red">-</li>
					<li id="day36">-</li>
					<li id="day37">-</li>
					<li id="day38">-</li>
					<li id="day39">-</li>
					<li id="day40" style="color: blue;">-</li>
					<li id="day41" style="color: red">-</li>
					<li id="day42">-</li>
				</ul>
			</div>
		</div>
	</div>
	<footer class="footer">
		<div class="footer_div1">
			<p><a id="tag_a" href="about.html">회사소개</a></p>
			<p><a id="tag_a" href="#">제휴제안</a></p>
			<p><a id="tag_a" href="#">이용약관</a></p>
			<p><a id="tag_a" href="#">개인정보 처리방침</a></p>
			<p><a id="tag_a" href="#" onclick="alert('고객센터 연결');">고객센터</a></p>
			<br />
			<br />
			<p>사업자 번호 : 000-00-00000</p>
			<p>고객센터 : 00-000-0000</p>
			<br />
			<br />
			<p>ⓒ 2021. 권상원 except for some photos, all rights reserved</p>
		</div>
		<div class="footer_div2"></div>
		<div class="footer_div3"></div>
	</footer>
	</main>
</body>
</html>