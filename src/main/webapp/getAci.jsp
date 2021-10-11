<%@page import="com.HEProject.he.groupAssInfo.GrouperInfoVO"%>
<%@page import="com.HEProject.he.boInfo.BOInfoVO"%>
<%@page import="com.HEProject.he.usersInfo.SearchInfoVO"%>
<%@page import="com.HEProject.he.groupAssInfo.GroupAssInfoVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%
    	List<GrouperInfoVO> list = (List)request.getAttribute("list");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입 신청 현황</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="/css/main.css?ver=22">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="/js/main.js?ver=10" ></script>
<script type="text/javascript">
	function checkModify() {
		<%
		String loginCheckData="";
		try{
			loginCheckData= (String)session.getAttribute("userId");
		}catch(NullPointerException e){
			System.err.println("비회원 아이디 에러 : "+e);
		}
		%>
		var loginCheckData = '<%=loginCheckData%>';
		loginCheck(loginCheckData);
		
		var checkNum = <%=request.getAttribute("modifyAciCheck")%>;
		if(checkNum==null){
			
		}else if(checkNum==0){
			alert('정상적으로 처리되지 않았습니다. 다시 시도해주세요.');
		}else if(checkNum==1){
			alert('정상적으로 처리되었습니다.');
		}else {
			alert('유효하지 않은 요청입니다.');
		}
	}
	function showGrouperInfo(gourperUsRn) {
		document.getElementById('grouperInfo').setAttribute('src','getGrouperInfo.do?usRn='+gourperUsRn + "&gst=4");
	}
	function check_EQ(usRn) {
		window.open("getGrouperEquipInfo.do?usRn="+usRn+"&gst=4","eq","width=1000,height=600,resizable=no,scrollbars=yes");
	}
	$(document).ready(function(){
		var currentPosition = parseInt($("#floating_btn").css("top"));
		$(window).scroll(function() {
			var position = $(window).scrollTop();
			$("#floating_btn").stop().animate({"top":position+currentPosition+"px"},700);
		});
	});
</script>
<style>
	.mainDiv{
  width: 100%;
  height: 100%;
}

.div1{
  border-bottom: 0.5px solid #d7d7d7;
  height: 70px;
  width: 100%;
  display: inline-block;
}
.div1_textArea{
  padding-left: 100px;
  padding-top: 10px;
  margin-left: 10%;
}
.div2{
  display: inline-block;
  width: 100%;
  height: 1200px;
  text-align: center;
}
.div_2_back {
	display : inline-block;
	width: 70%;
	height: 90%;
	background: rgba(255,255,255,.75);
	
}
.div2_1 {
  width: 80%;
  height: 35%;
  overflow: auto;
  margin : 0 auto 30px auto;
}
.div2_1_1 {
  width: 100%;
  height: 50px;  
}
#div2_1_1_h2 {
  display: inline-block;
  margin : 10px;
}
.div2_1_2 {
  width: 100%;
  height: calc(100% - 50px);
  overflow: auto;
}

.inpuTBDiv {
	width: 100%;
	height: calc(100%-30px);
}
#inputTB {
    width: 100%;
    border-right: 0.5px solid #d7d7d7;
    border-left: 0.5px solid #d7d7d7;
	font-size: 15px;
	text-align: center;
	background: white;
}

#inputTB th {
	background: #f7f7f5;
	border: 0.5px solid #d7d7d7;
    width: 200px;
}

#inputTB td{
  width: 300px;
  border: 0.5px solid #d7d7d7;
  white-space:normal;
}

#top_tr th{
	position: sticky;
	top: 0px;
}
#btm_tr th{
	position: sticky;
	bottom: 0;
}
.div2_2 {
  width: 85%;
  height: 65%;
  margin : 0 auto 0 auto;
  border-top: 0.5px solid black;
}
.div2_2_1 {
  width: 100%;
  height: 80%;
}
.div2_2_2 {
  width: 100%;
  height: 10%;
  padding-left: 3px;
  padding-top: 5px;
  
}

.div3{
  display: inline-block;
  width: 100%;
  height: 200px;

}
.div2_2_2_btn {
	top: 20%;
}
.div2_2_2_btn button{
	width: 120px;
	height: 30px;
	font-family: 'Roboto', sans-serif;
	font-size: 11px;
	text-transform: uppercase;
	letter-spacing: 2.5px;
	font-weight: 500;
	color: #000;
	background-color: #fff;
	border: 0.5px solid black;
	border-radius: 45px;
	box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease 0s;
	cursor: pointer;
	outline: none;
	margin-left: 10px;
	margin-top: 15px;
}

.div2_2_2_btn button:hover {
	background-color: #2EE59D;
	box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
	color: #fff;
	transform: translateY(-7px);
}



p {
	font-size: 17px;
	color: red;
	font-weight: bold;
}
#grouperInfo {
	width: 100%;
	height: 75%;
}
#check_EQ{
	background-color: #72B08E;
	color: white;
	border: none;
	width: auto;
	height: 30px;
}

#check_EQ:hover {
	background-color: #4E7861;
	box-shadow: 1px 1px 1px 1px #3C5C4A;
}

#check_EQ:active {
	text-shadow: 4px 2px 2px black;
}

</style>
<%
	Object userClassData = session.getAttribute("userClass");
	String menuInfo[] = new String[4];
	String dropMenuInfo[] = new String[16];
	String dropMenuLink[] = new String[16];
	try {
		menuInfo[1] = "작업";
		menuInfo[2] = "정산";
		menuInfo[3] = "기타";
		if (userClassData.equals(0)) {
		} else if (userClassData.equals(1)) {
			menuInfo[0] = "등록";
			dropMenuInfo[0] = "사업자 정보";
			dropMenuInfo[1] = "대리 작업자";
			dropMenuInfo[2] = "차량 정보";
			dropMenuInfo[3] = "그룹 정보";
			dropMenuInfo[4] = "작업 목록";
			dropMenuInfo[5] = "증빙 자료";
			dropMenuInfo[6] = "완료 작업";
			dropMenuInfo[7] = "현황/그래프";
			dropMenuInfo[8] = "정산 조회";
			dropMenuInfo[9] = "자료 조회";
			dropMenuInfo[10] = "재발송";
			dropMenuInfo[11] = "#";
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
			dropMenuLink[5] = "workData.do";
			dropMenuLink[6] = "finishedWorkList.do";
			dropMenuLink[7] = "#";
			dropMenuLink[8] = "#";
			dropMenuLink[9] = "#";
			dropMenuLink[10] = "#";
			dropMenuLink[11] = "#";
			dropMenuLink[12] = "#";
			dropMenuLink[13] = "eachBoard.do?boardClassNum=1";
			dropMenuLink[14] = "eachBoard.do?boardClassNum=0";
			dropMenuLink[15] = "eachBoard.do?boardClassNum=3";
		} else if (userClassData.equals(2)) {
			menuInfo[0] = "설정";
			dropMenuInfo[0] = "사업자 정보";
			dropMenuInfo[1] = "회원 관리";
			dropMenuInfo[2] = "거래처 관리";
			dropMenuInfo[3] = "#";
			dropMenuInfo[4] = "작업 관리";
			dropMenuInfo[5] = "작업 발주";
			dropMenuInfo[6] = "발주 현황";
			dropMenuInfo[7] = "완료 작업";
			dropMenuInfo[8] = "정산 처리/통보";
			dropMenuInfo[9] = "자료 조회";
			dropMenuInfo[10] = "자료 요청";
			dropMenuInfo[11] = "#";
			dropMenuInfo[12] = "그룹 공지";
			dropMenuInfo[13] = "중계 사용자 전용";
			dropMenuInfo[14] = "자유 게시판";
			dropMenuInfo[15] = "공지 사항";
			//////////
			dropMenuLink[0] = "showBO.do";
			dropMenuLink[1] = "showGrouper.do";
			dropMenuLink[2] = "showClient.do";
			dropMenuLink[3] = "#";
			dropMenuLink[4] = "workInfo.do";
			dropMenuLink[5] = "workOrderInfo.do";
			dropMenuLink[6] = "#";
			dropMenuLink[7] = "#";
			dropMenuLink[8] = "#";
			dropMenuLink[9] = "#";
			dropMenuLink[10] = "#";
			dropMenuLink[11] = "#";
			dropMenuLink[12] = "#";
			dropMenuLink[13] = "eachBoard.do?boardClassNum=2";
			dropMenuLink[14] = "eachBoard.do?boardClassNum=0";
			dropMenuLink[15] = "eachBoard.do?boardClassNum=3";
		} else if (userClassData.equals(3)) {

		}
	} catch (NullPointerException e) {
		userClassData = "0";
		System.err.println("비회원 아이디 에러 : " + e);
	}
%>
<body onload="checkModify();">
	<nav class="nav-area">
		<ul>
			<li><a href="main.do">Home</a></li>
			<li><a href="about.html">About</a></li>
			<li><a href="#"><%=menuInfo[0]%></a>
				<ul>
					<li><a href="<%=dropMenuLink[0]%>"><%=dropMenuInfo[0]%></a></li>
					<li><a href="<%=dropMenuLink[1]%>"><%=dropMenuInfo[1]%></a></li>
					<li><a href="<%=dropMenuLink[2]%>"><%=dropMenuInfo[2]%></a></li>
					<li><a href="<%=dropMenuLink[3]%>"><%=dropMenuInfo[3]%></a></li>

				</ul></li>
			<li><a href="#"><%=menuInfo[1]%></a>
				<ul>
					<li><a href="<%=dropMenuLink[4]%>"><%=dropMenuInfo[4]%></a></li>
					<li><a href="<%=dropMenuLink[5]%>"><%=dropMenuInfo[5]%></a></li>
					<li><a href="<%=dropMenuLink[6]%>"><%=dropMenuInfo[6]%></a></li>
					<li><a href="<%=dropMenuLink[7]%>"><%=dropMenuInfo[7]%></a></li>

				</ul></li>
			<li><a href="#"><%=menuInfo[2]%></a>
				<ul>
					<li><a href="<%=dropMenuLink[8]%>"><%=dropMenuInfo[8]%></a></li>
					<li><a href="<%=dropMenuLink[9]%>"><%=dropMenuInfo[9]%></a></li>
					<li><a href="<%=dropMenuLink[10]%>"><%=dropMenuInfo[10]%></a></li>
					<li><a href="<%=dropMenuLink[11]%>"><%=dropMenuInfo[11]%></a></li>

				</ul></li>
			<li><a href="#"><%=menuInfo[3]%></a>
				<ul>
					<li><a href="<%=dropMenuLink[12]%>"><%=dropMenuInfo[12]%></a></li>
					<li><a href="<%=dropMenuLink[13]%>"><%=dropMenuInfo[13]%></a></li>
					<li><a href="<%=dropMenuLink[14]%>"><%=dropMenuInfo[14]%></a></li>
					<li><a href="<%=dropMenuLink[15]%>"><%=dropMenuInfo[15]%></a></li>

				</ul></li>
			<li><a href="logOut.do">로그아웃</a></li>
			<li><a href="checkIdentity.jsp">내정보</a></li>
		</ul>
	</nav>
	<main>
	    <div class="mainDiv">
	      <div class="div1">
	        <div class="div1_textArea"><h2>가입 신청 확인</h2></div>
	      </div>
	      <div class="div2">
	        <div class="div_2_back">
	        	<div class="div2_1">
	          <div class="div2_1_1">
	            <h2 id="div2_1_1_h2">가입 희망자 회원 목록</h2>
	          </div>
	          <div class="div2_1_2">
	          		<table id="inputTB">
			            <tr id="top_tr">
			            	<th></th>
			            	<th>회원명</th>
				 			<th>아이디</th>
				 			<th>연락처</th>
				 			<th>이메일</th>
				 			<th></th>
				 		</tr>
				 		<%if(list==null){%>
						<tr>
				 			<td colspan="5">회원이 없습니다.</td>
				 		</tr>
						<%}else{
							for(int i = 0 ; i < list.size(); i++){%>
							<tr style="cursor: pointer;" onclick="showGrouperInfo('<%=list.get(i).getUsRn()%>');">
			                	<td><%=i+1 %></td>
			                	<td><%=list.get(i).getUserName() %></td>
			                	<td><%=list.get(i).getUserID() %></td>
				                <td><%=list.get(i).getUserCell() %></td>
				                <td><%=list.get(i).getUserEmail() %></td>
				                <td><button id="check_EQ" onclick="check_EQ('<%=list.get(i).getUsRn()%>');">차량 확인</button></td>
			               </tr>
							<!--  -->
						<%}%>
						<tr id="btm_tr">
				 			<th colspan="6"><%=list.size() %></th>
				 		</tr>
						<%} %>
		            </table>
	          </div>
	        </div>
	        <div class="div2_2">
	          <div class="div2_2_1">
	            <p>※ 상세보기를 원하시는 회원을 선택해주세요.</p>
	      		<iframe src="" frameborder="0" id="grouperInfo"></iframe>
	      		<p>※ 차량 확인은 해당 회원 우측 [차량확인] 버튼으로 확인 가능합니다<span class=""></span></p>
	          </div>
	          <div class="div2_2_2">
	          	<div class="div2_2_2_btn">
	          		<button onclick="location.href='showGrouper.do'">뒤로가기</button>
	          	</div>
	          </div>
	        </div>
	        </div>
	      </div>
	      <div class="div3">
	      </div>
	    </div>
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
	</main>
</body>
</html>