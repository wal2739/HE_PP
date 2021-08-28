<%@page import="com.HEProject.he.boInfo.BOInfoVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%List<BOInfoVO> list = (List)request.getAttribute("list"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그룹 제의 승락/거절</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="/js/main.js" ></script>
<link rel="stylesheet" href="/css/main.css?ver=16">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript">
	function MOcheck() {
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
		
		
		var moCheck = <%=request.getAttribute("MO")%>
		console.log(moCheck);
		if(moCheck==null){}
		if(moCheck==0){
			alert('정상적으로 처리되지 않았습니다.');
			return location.href="getOffer.do";
		}
		if(moCheck==1){
			alert('정상적으로 처리되었습니다.');
			return location.href="getOffer.do";
		}
		if(moCheck==2){
			alert('정상적이지 않은 요청입니다.');
			return location.href="getOffer.do";
		}
	}
</script>
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
			dropMenuInfo[6] = "작업 조회";
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
			dropMenuLink[6] = "#";
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
	height: auto;
	background: rgba(255,255,255,.75);
	
}
.div2_1 {
  width: 80%;
  height: 40%;
  overflow: auto;
  margin : 0 auto 0 auto;
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
}
.div2_2 {
  width: 80%;
  height: 60%;
  overflow-y: auto;
  overflow-x: hidden;
  margin : 0 auto 0 auto;
  border-top: 0.5px solid black;
}
.div2_2_1 {
  width: 100%;
  height: 100%;
}
.div2_2_2 {
  width: 100%;
  height: calc(100% - 50px);
  padding-left: 3px;
  padding-top: 5px;
  
}

.div3{
  display: inline-block;
  width: 100%;
  height: 200px;

}
#top_tr th{
	position: sticky;
	top: 0px;
}
#btn_offer {
	background-color: #72B08E;
	color: white;
	border: none;
	width: auto;
	height: 30px;
}


#btn_offer:hover {
	background-color: #4E7861;
	box-shadow: 1px 1px 1px 1px #3C5C4A;
}

#btn_offer:active {
	text-shadow: 6px 2px 2px black;
}
p {
	color: red;
	font-size: 16px;
}
</style>
<body onload="MOcheck();">

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
			</ul>
		</li>
		<li><a href="#"><%=menuInfo[1]%></a>
			<ul>
				<li><a href="<%=dropMenuLink[4]%>"><%=dropMenuInfo[4]%></a></li>
				<li><a href="<%=dropMenuLink[5]%>"><%=dropMenuInfo[5]%></a></li>
				<li><a href="<%=dropMenuLink[6]%>"><%=dropMenuInfo[6]%></a></li>
				<li><a href="<%=dropMenuLink[7]%>"><%=dropMenuInfo[7]%></a></li>
			</ul>
		</li>
		<li><a href="#"><%=menuInfo[2]%></a>
			<ul>
				<li><a href="<%=dropMenuLink[8]%>"><%=dropMenuInfo[8]%></a></li>
				<li><a href="<%=dropMenuLink[9]%>"><%=dropMenuInfo[9]%></a></li>
				<li><a href="<%=dropMenuLink[10]%>"><%=dropMenuInfo[10]%></a></li>
				<li><a href="<%=dropMenuLink[11]%>"><%=dropMenuInfo[11]%></a></li>
			</ul>
		</li>
		<li><a href="#"><%=menuInfo[3]%></a>
			<ul>
				<li><a href="<%=dropMenuLink[12]%>"><%=dropMenuInfo[12]%></a></li>
				<li><a href="<%=dropMenuLink[13]%>"><%=dropMenuInfo[13]%></a></li>
				<li><a href="<%=dropMenuLink[14]%>"><%=dropMenuInfo[14]%></a></li>
				<li><a href="<%=dropMenuLink[15]%>"><%=dropMenuInfo[15]%></a></li>
			</ul>
		</li>
		<li><a href="logOut.do">로그아웃</a></li>
		<li><a href="checkIdentity.jsp">내정보</a></li>
	</ul>
	</nav>
	<main>
    <div class="mainDiv">
      <div class="div1">
        <div class="div1_textArea"><h2>그룹 가입 제의</h2></div>
      </div>
      <div class="div2">
        <div class="div_2_back">
        	<div class="div2_1">
          <div class="div2_1_1">
            <h2 id="div2_1_1_h2">가입 제의 확인</h2>
            <button id="btn_offer" onclick="location.href='showMyGroup.do'">뒤로가기</button>
          </div>
          <div class="div2_1_2">
          <table id="inputTB">
		        <tr id="top_tr">
		  	     	<th></th>
					<th>업체명</th>
			 		<th>사업자번호</th>
			 		<th>대표자명</th>
			 		<th>대표 번호</th>
			 		<th>핸드폰번호</th>
			 		<th>이메일</th>
			 		<th></th>
			 		<th></th>
			 	</tr>
				<%if(list.size()==0){%>
				<tr>
					<td colspan="9">가입 제의가 없습니다.</td>
				</tr>
				<% }else{%>
				<%for(int i = 0 ; i < list.size(); i++){ %>				
				<tr>
					<td><%=i+1 %></td>
					<td><%=list.get(i).getCpName() %></td>
					<td><%=list.get(i).getBoNumber() %></td>
					<td><%=list.get(i).getBoName() %></td>
					<td><%=list.get(i).getBoPhone() %></td>
					<td><%=list.get(i).getBoCell() %></td>
					<td><%=list.get(i).getBoMail() %></td>
					<td><button id="btn_offer" onclick="location.href='modifyOffer.do?assUrRn=<%=list.get(i).getUsRn() %>&state=1'">승락</button></td>
					<td><button id="btn_offer" onclick="location.href='modifyOffer.do?assUrRn=<%=list.get(i).getUsRn() %>&state=2'">거절</button></td>
				</tr>
				<%}	} %>
	      </table>
          <p>※  중계 사업자에 의해 가입 제의가 취소 될 수 있습니다.</p>
          <p>※  가입 제의 거절 시 추후 해당 중계 사업자의 그룹에 참여 할 수 없습니다.</p>
          </div>
          
        </div>
        </div>
      </div>
      <div class="div3">
      </div>
    </div>
  </main>
<%-- 	<h1>그룹 제의 승락/거절</h1>
	<div>
		<%if(list.size()==0){ %>
		<p>들어온 그룹 제의가 없습니다.</p>
		<%}else{for(int i = 0 ; i < list.size(); i++){ %>
		<p><%=i+1 %>. 업체명 : <%=list.get(i).getCpName() %> | 사업자번호 : <%=list.get(i).getBoNumber() %> | 대표자명 : <%=list.get(i).getBoName() %> | 대표 번호 : <%=list.get(i).getBoPhone() %> | 이메일 : <%=list.get(i).getBoMail() %> |&nbsp;&nbsp;  <input type="button" value="승락" onclick="location.href='modifyOffer.do?boNumber=<%=list.get(i).getBoNumber() %>&state=1'"/>&nbsp;&nbsp; <input type="button" value="거절" onclick="location.href='modifyOffer.do?boNumber=<%=list.get(i).getBoNumber() %>&state=2'"/> </p><br />
		<%}}%>
	</div>
	<input type="button" value="뒤로가기" onclick="location.href='showMyGroup.do'"> --%>
</body>
</html>