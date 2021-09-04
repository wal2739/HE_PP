<%@page import="com.HEProject.he.usersInfo.UsersInfoVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%
    	
	    String loginCheckData="";
		try{
			loginCheckData= (String)session.getAttribute("userId");
		}catch(NullPointerException e){
			System.err.println("비회원 아이디 에러 : "+e);
		}
		UsersInfoVO vo = null;
		String userClass = "";
    	String backPath = "";
		if(loginCheckData!=null){
			vo = (UsersInfoVO)request.getAttribute("vo");
			if(vo.getUserClass()==1){
	    		userClass = "개인";
	    		backPath="etcForIndi.do";
	    	}else if(vo.getUserClass()==2){
	    		userClass = "중계/협회";
	    		backPath="etcForAss.do";
	    	}else if(vo.getUserClass()==3){
	    		userClass = "통합";
	    	}else {
	    		userClass = "userClass 에러 - jsp";
	    	}
		}
    	
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="/css/main.css?ver=22">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="/js/main.js?ver=10" ></script>
<script type="text/javascript">
	function loadOn() {
		var loginCheckData = '<%=loginCheckData%>';
		loginCheck(loginCheckData);
	}
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
  height: 1000px;
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
  height: 80%;
  overflow: auto;
  margin : 0 auto 30px auto;
}
.div2_1_1 {
  width: 100%;
  height: 50px; 
  margin-top: 50px; 
}
#div2_1_1_h2 {
  display: inline-block;
  margin : 10px;
}
.div2_1_2 {
  width: 100%;
  height: calc(100% - 100px);
  overflow: auto;
}

.inpuTBDiv {
	width: 100%;
	height: calc(100%-30px);
}
#inputTB {
    width: 100%;
    height : 500px;
    border: 0.5px solid #d7d7d7;
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
.btn_Area {
	align-items: center;
	margin-top : 30px;
}
.btn_Area button {
	float : right;
	margin: auto 20px auto 20px;
	width: 120px;
	height: 30px;
	font-size: 11px;
	text-transform: uppercase;
	letter-spacing: 2.5px;
	font-weight: 500;
	color: #000;
	background-color: #fff;
	border-radius: 45px;
	transition: all 0.3s ease 0s;
	cursor: pointer;
	outline: none;
}
.btn_Area button:hover {
	background-color: #2EE59D;
	box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
	color: #fff;
	transform: translateY(-7px);
}

.btn_Area #red_btn {
	float: left;
}
.btn_Area #red_btn:hover {
	background-color: red;
	box-shadow: 0px 15px 20px rgba(97, 34, 29, 0.4);
	color: #fff;
	transform: translateY(-7px);
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
<body onload="loadOn();">
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
		    	<div class="div1_textArea"><h2>내 정보</h2></div>
			</div>
	        <div class="div2">
	        	<div class="div_2_back">
			        <div class="div2_1">
				        <div class="div2_1_1">
				        	<h2 id="div2_1_1_h2">내 정보 상세보기</h2>
				        </div>
				        <div class="div2_1_2">
				        	<div class="inpuTBDiv">
          						<%if(vo==null){%>
									<p>에러</p>
								<%}else{%>
          						<table id="inputTB">
          						<%
          							//데이터 변환
          							String rlt[] = new String[5];
          							switch(vo.getUserClass()){
          								case 0:
          									rlt[0] = "admin";
          									break;
          								case 1:
          									rlt[0] = "개인 사용자";
          									break;
          								case 2:
          									rlt[0] = "중계 사용자";
          									break;
          								case 3:
          									rlt[0] = "통합 사용자";
          									break;
          									default:
              									rlt[0] = "error";
          										break;
          							}
          							switch(vo.getSt()){
      								case 0:
      									rlt[1] = "사용중";
      									break;
      									default:
          									rlt[1] = "error";
      										break;
      								}
          							switch(vo.getUserConsent01()){
      								case 0:
      									rlt[2] = "미동의";
      									break;
      								case 1:
      									rlt[2] = "동의";
      									break;
      									default:
          									rlt[2] = "error";
      										break;
      								}
          							switch(vo.getUserConsent02()){
      								case 0:
      									rlt[3] = "미동의";
      									break;
      								case 1:
      									rlt[3] = "동의";
      									break;
      									default:
          									rlt[3] = "error";
      										break;
      								}
          							switch(vo.getUserConsent03()){
      								case 0:
      									rlt[4] = "미동의";
      									break;
      								case 1:
      									rlt[4] = "동의";
      									break;
      									default:
          									rlt[4] = "error";
      										break;
      								}
          							
          							int length_pw = vo.getUserPW().length()/2;
          							String pw_Rlt = vo.getUserPW().substring(0,length_pw);
          							for(int i = 0 ; i < vo.getUserPW().substring(length_pw).length();i++){
          								pw_Rlt = pw_Rlt + "*";
          							}
          						%>
          							<tr>
          								<th>이름</th>
          								<td><%=vo.getUserName() %></td>
          								<th>아이디</th>
          								<td><%=vo.getUserID() %></td>
          								<th>비밀번호</th>
          								<td colspan="3"><%=pw_Rlt %></td>
          							</tr>
          							<tr>
          								<th>연락처</th>
          								<td><%=vo.getUserCell() %></td>
          								<th>이메일</th>
          								<td><%=vo.getUserEmail() %></td>
          								<th>가입 종류</th>
          								<td><%=rlt[0] %></td>
          								<th>상태</th>
          								<td><%=rlt[1] %></td>
          							</tr>
          							<tr height="30%">
          								<th>주소</th>
          								<td colspan="3"><%=vo.getUserAdd01() %></td>
          								<th>상세 주소</th>
          								<td colspan="3"><%=vo.getUserAdd02() %></td>
          							</tr>
          							<tr height="10%">
          								<th>사이트 이용 약관 동의</th>
          								<td><%=rlt[2] %></td>
          								<th>개인 정보 수집 동의</th>
          								<td><%=rlt[3] %></td>
          								<th>마케팅/홍보 수집 동의</th>
          								<td><%=rlt[4] %></td>
          								<th>가입일</th>
          								<td><%=vo.getRegiDate() %></td>
          							</tr>
          							<tr height="20%">
          								<td colspan="8" style="text-align: left; padding-left: 30px;">
          									<p>※ 비밀번호 변경은 하단에 [비밀번호 변경] 버튼을 눌러주세요.</p>
          									<p>※ 정보 수정은 하단에 [정보 수정] 버튼을 눌러주세요</p>
          									<p>※ 회원 탈퇴 시 탈퇴일 기준 7일안에 [복구신청]을 할 수 있습니다.</p>
          								</td>
          							</tr>
          						</table>
          						<%} %>
				        	</div>
				        	<div class="btn_Area">
								<button onclick="location.href='modifyUserInfo.do'">정보 수정</button>
								<button onclick="location.href='changePW.jsp'">비밀번호 변경</button>
								<button id="red_btn" onclick="alert('미구현')">회원 탈퇴</button>
				        	</div>
				        </div>
			        </div>
				</div>
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