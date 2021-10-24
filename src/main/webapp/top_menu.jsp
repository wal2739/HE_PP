<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상단메뉴</title>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="/js/main.js?ver=13"></script>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="/css/main.css?ver=15">
<style>
* { 
	font-family: 'Spoqa Han Sans Neo', 'sans-serif'; 
	
}


body {
  font-family: 'Rubik', sans-serif;
  margin: 0;
  padding: 0;
  background: url("/image/bg_body.png") repeat center;
  -webkit-background-size: cover;
  background-size: cover;
  background-position: center center;
  background-repeat: repeat;
  height: 100vh;
}

a {
  font-size: 16px;
  text-transform: uppercase;
}

.nav-area *{
  z-index : 999;
}
.nav-area ul {float:right;}

.nav-area {
  position : static;
  background: #262626;
}


.nav-area:after {
  content: '';
  clear: both;
  display: block;
}

.nav-area ul{
  list-style: none;
  margin: 0;

}

.nav-area > ul > li {
  float: left;
  position: relative;
}

.nav-area ul li a {
  text-decoration: none;
  color: #fff;
  padding: 15px 20px;
  display: block;

}

.nav-area ul li:hover a {
  background: #34495a;
}

.nav-area ul ul {
  position: absolute;
  padding: 0;
  min-width: 160px;
  display: none;
  top: 100%;
  left: 0;
}

.nav-area ul li:hover > ul {
  display: block;
}

.nav-area ul ul li:hover a {
  background: #262626;

}

.nav-area ul ul li {
  position: relative;
}

.nav-area ul ul ul {
  top: 0;
  left: 100%;
}
</style>
<%!
	int userClass=0;
	public void cast_ob(HttpSession session){
		String userClass_t = String.valueOf(session.getAttribute("userClass"));
		if(userClass_t.equals("null")){
			userClass_t = "1";
		}
		userClass = Integer.parseInt(userClass_t);
	}
%>
<%
	cast_ob(session);
	String menuInfo[] = new String[4];
	String dropMenuInfo[] = new String[16];
	String dropMenuLink[] = new String[16];
	menuInfo[1] = "작업";
	menuInfo[2] = "정산";
	menuInfo[3] = "기타";
	if (userClass==0) {
	} else if (userClass==1) {
		menuInfo[0] = "등록";
		dropMenuInfo[0] = "사업자 정보";
		dropMenuInfo[1] = "대리 작업자";
		dropMenuInfo[2] = "차량 정보";
		dropMenuInfo[3] = "그룹 정보";
		dropMenuInfo[4] = "작업 목록";
		dropMenuInfo[5] = "완료 작업";
		dropMenuInfo[8] = "정산 조회";
		dropMenuInfo[9] = "현황/그래프";
		dropMenuInfo[10] = "";
		dropMenuInfo[11] = "";
		dropMenuInfo[12] = "그룹 공지";
		dropMenuInfo[13] = "개인 사용자 전용";
		dropMenuInfo[14] = "자유 게시판";
		dropMenuInfo[15] = "공지 사항";
		//////////
		dropMenuLink[0] = "showBO.do";
		dropMenuLink[1] = "WorkerInfo.do";
		dropMenuLink[2] = "showVehicleInfo.do";
		dropMenuLink[3] = "showMyGroup.do";
		dropMenuLink[4] = "workInfoForIndi.do?uClass=indiUsrn";
		dropMenuLink[5] = "finishedWorkList.do";
		dropMenuLink[8] = "finishedCalculate.do?classType=indiusrn";
		dropMenuLink[9] = "getStatistics.do?classType=indiusrn";
		dropMenuLink[13] = "eachBoard.do?boardClassNum=1";
		dropMenuLink[14] = "eachBoard.do?boardClassNum=0";
		dropMenuLink[15] = "eachBoard.do?boardClassNum=3";
	} else if (userClass==2) {
		menuInfo[0] = "설정";
		dropMenuInfo[0] = "사업자 정보";
		dropMenuInfo[1] = "회원 관리";
		dropMenuInfo[2] = "거래처 관리";
		dropMenuInfo[4] = "작업 관리";
		dropMenuInfo[5] = "작업 발주";
		dropMenuInfo[6] = "완료 작업";
		dropMenuInfo[8] = "정산 처리";
		dropMenuInfo[9] = "현황/그래프";
		dropMenuInfo[13] = "중계 사용자 전용";
		dropMenuInfo[14] = "자유 게시판";
		dropMenuInfo[15] = "공지 사항";
		//////////
		dropMenuLink[0] = "showBO.do";
		dropMenuLink[1] = "showGrouper.do";
		dropMenuLink[2] = "showClient.do";
		dropMenuLink[4] = "workInfo.do";
		dropMenuLink[5] = "workOrderInfo.do";
		dropMenuLink[6] = "finishedWorkList_Ass.do";
		dropMenuLink[8] = "calculate.do?classType=assUsRn";
		dropMenuLink[9] = "getStatistics.do?classType=assUsRn";
		dropMenuLink[13] = "eachBoard.do?boardClassNum=2";
		dropMenuLink[14] = "eachBoard.do?boardClassNum=0";
		dropMenuLink[15] = "eachBoard.do?boardClassNum=3";
	} else if (userClass==3) {

	}

%>
<body>
	<nav class="nav-area">
			<ul>
			<li><a href="main.do">Home</a></li>
			<li><a href="about.html">About</a></li>
			<li><a href="#"><%=menuInfo[0]%></a>
				<ul>
					<li><a href="<%=dropMenuLink[0]%>"><%=dropMenuInfo[0] %></a></li>
					<li><a href="<%=dropMenuLink[1]%>"><%=dropMenuInfo[1] %></a></li>
					<li><a href="<%=dropMenuLink[2]%>"><%=dropMenuInfo[2] %></a></li>
					<% if(userClass==1){%><li><a href="<%=dropMenuLink[3]%>"><%=dropMenuInfo[3] %></a></li><%} %>

				</ul></li>
			<li><a href="#"><%=menuInfo[1]%></a>
				<ul>
					<li><a href="<%=dropMenuLink[4]%>"><%=dropMenuInfo[4] %></a></li>
					<li><a href="<%=dropMenuLink[5]%>"><%=dropMenuInfo[5] %></a></li>
					<% if(userClass==2){%><li><a href="<%=dropMenuLink[6]%>"><%=dropMenuInfo[6] %></a></li><%} %>

				</ul></li>
			<li><a href="#"><%=menuInfo[2]%></a>
				<ul>
					<li><a href="<%=dropMenuLink[8]%>"><%=dropMenuInfo[8] %></a></li>
					<li><a href="<%=dropMenuLink[9]%>"><%=dropMenuInfo[9] %></a></li>

				</ul></li>
			<li><a href="#"><%=menuInfo[3]%></a>
				<ul>
					<li><a href="<%=dropMenuLink[13]%>"><%=dropMenuInfo[13] %></a></li>
					<li><a href="<%=dropMenuLink[14]%>"><%=dropMenuInfo[14] %></a></li>
					<li><a href="<%=dropMenuLink[15]%>"><%=dropMenuInfo[15] %></a></li>
				</ul>
			</li>
			<li><a href="logOut.do">로그아웃</a></li>
			<li><a href="checkIdentity.jsp">내정보</a></li>
		</ul>
	</nav>
</body>
</html>