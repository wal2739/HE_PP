<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Formatter"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>달력 테스트</title>
</head>
<%
	Date now = Calendar.getInstance().getTime();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy@MM@dd");
	String[] nowDate = formatter.format(now).split("@");
	int nowYear = Integer.parseInt(nowDate[0]);//이번년도
	int nowMonth = Integer.parseInt(nowDate[1]);//이번달
	int today = Integer.parseInt(nowDate[2]);//오늘
%> 
<script type="text/javascript">
	var nowYear = <%=nowYear%>; // 년도
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
			if(saveMonth==nowMonth){
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
	
</script>
<style>
	* {box-sizing:border-box;}
	ul {list-style-type: none;}
	body {font-family: Verdana,sans-serif;}
	
	.cal_div{
		width: 720px;
		height: 600px;
	}
	
	.month {
	    padding: 70px 25px;
	    width: 100%;
	    background: #1abc9c;
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
	    font-size:12px;
	    color: #777;
	}
	
	.days li .active {
	    padding: 5px;
	    background: #1abc9c;
	    color: white !important
	}
	
	/* Add media queries for smaller screens */
	@media screen and (max-width:720px) {
	    .weekdays li, .days li {width: 13.1%;}
	}
	
	@media screen and (max-width: 420px) {
	    .weekdays li, .days li {width: 12.5%;}
	    .days li .active {padding: 2px;}
	}
	
	@media screen and (max-width: 290px) {
	    .weekdays li, .days li {width: 12.2%;}
	}
</style>
<body onload="show_calendar();">
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
</html>