<%@page import="com.HEProject.he.workInfo.WorkInfo_ST0VO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%
	    String loginCheckData="";
		try{
			loginCheckData= (String)session.getAttribute("userId");
		}catch(NullPointerException e){
			System.err.println("비회원 아이디 에러 : "+e);
		}	
		List<WorkInfo_ST0VO> list = null;
		int indexNum = 0;
		if(loginCheckData!=null){
			list = (List)request.getAttribute("list"); 
		}
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>발주 등록</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="/css/main.css?ver=22">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="/js/main.js?ver=10" ></script>
<script type="text/javascript">
	function workInfoDraw(iNum) {
		var FphoneNum = new Array(2);
		var CphoneNum = new Array(2);
		var FcellNum = new Array(2);
		var workTime = new Array(1);

		FphoneNum = document.getElementById("fieldManagerPhone"+iNum).value.split("-");
		CphoneNum = document.getElementById("clientPhone"+iNum).value.split("-");
		FcellNum = document.getElementById("fieldManagerCell"+iNum).value.split("-");
		workTime = document.getElementById("workTime"+iNum).value.split(":");
		for(var i = 1 ; i < 4; i ++){
			document.getElementById("fieldManagerPhone0" + i).value = FphoneNum[i-1];
			document.getElementById("fieldManagerCell0" + i).value = FcellNum[i-1];
			document.getElementById("clientPhone0" + i).value = CphoneNum[i-1];
		}
		document.getElementById("workTime01").value = workTime[0];
		document.getElementById("workTime02").value = workTime[1];
		document.getElementById("workField").value = document.getElementById("workField"+iNum).value;
		document.getElementById("fieldManager").value = document.getElementById("fieldManager"+iNum).value;
		document.getElementById("boName").value = document.getElementById("boName"+iNum).value;
		document.getElementById("fieldAdd01").value = document.getElementById("fieldAdd01"+iNum).value;
		document.getElementById("fieldAdd02").value = document.getElementById("fieldAdd02"+iNum).value;
		document.getElementById("workAmount").value = document.getElementById("workAmount"+iNum).value;
		document.getElementById("workRequests").value = document.getElementById("workRequests"+iNum).value;
		document.getElementById("workRelative").value = document.getElementById("workRelative"+iNum).value;
		document.getElementById("clientCpName").value = document.getElementById("clientCpName"+iNum).value;
		document.getElementById("ClientManager").value = document.getElementById("ClientManager"+iNum).value;
		document.getElementById("fieldManagerMail").value = document.getElementById("workField"+iNum).value;
		document.getElementById("workDate").value = document.getElementById("workDate"+iNum).value;
		document.getElementById("workCode").value = document.getElementById("workCode"+iNum).value;

		
	}
	function sltWorkInfo() {
		if(document.getElementById("fieldManager").value==''||document.getElementById("fieldAdd01").value==''||document.getElementById("workRequests").value==''||document.getElementById("workDate").value==''){
			alert('작업을 선택 해주세요.');
		}else{
			document.getElementById("workList").style.display = "none";
			document.getElementById("workMsg").innerHTML = "<b>발주 하실 사용자를 선택해주세요.</b><select name=\"rv\" id=\"rv\" onchange=\"changeWorker();\"><option value=\"noData\">선택 해주세요.</option><option value=\"지게차\">지게차</option><option value=\"사다리\">사다리</option><option value=\"스카이\">스카이</option><option value=\"크레인\">크레인</option><option value=\"카고\">카고</option><option value=\"굴삭기\">굴삭기</option><option value=\"화물차\">화물차</option><option value=\"직접입력\">직접입력</option></select> ";
			document.getElementById("workerInfo").style.display = "inline";
		}
	}
	function changeWorker() {
		var langSelect = document.getElementById("rv"); 
		var selectValue = langSelect.options[langSelect.selectedIndex].value;
		document.getElementById("workerList").innerHTML = "<iframe src=\"getWorker.do?equipType="+selectValue+"\" id=\"iframeToWorker\" name=\"iframeToWorker\"></iframe>";
	}
	function changeWorkerAct() {
		var usRn = $("#iframeToWorker").contents().find("#usRn").attr("value");
		var userName = $("#iframeToWorker").contents().find("#userName").attr("value");
		var userCell = $("#iframeToWorker").contents().find("#userCell").attr("value");
		var equipType = $("#iframeToWorker").contents().find("#equipType").attr("value");
		var equipClass = $("#iframeToWorker").contents().find("#equipClass").attr("value");
		var equipOption = $("#iframeToWorker").contents().find("#equipOption").attr("value");
		var eqRn = $("#iframeToWorker").contents().find("#eqRn").attr("value");
		document.getElementById("usRn").value=usRn;
		document.getElementById("userName").value=userName;
		document.getElementById("userCell").value=userCell;
		document.getElementById("equipType").value=equipType;
		document.getElementById("equipClass").value=equipClass;
		document.getElementById("equipOption").value=equipOption;
		document.getElementById("eqRn").value=eqRn;

	}
	function sltWorker() {
		if(document.getElementById("usRn").value==''||document.getElementById("userCell").value==''||document.getElementById("equipType").value==''||document.getElementById("equipOption").value==''){
			alert('작업자 선택 해주세요.');
		}else{
			document.getElementById("workListAll").style.display = "none";
			document.getElementById("workMsg").innerHTML = "";
			document.getElementById("relativeBox").style.display = "inline";
			document.getElementById("submitBtn").style.display = "inline";
		}
	}
	function finalCheck() {
		var check = confirm("발주 등록 하시겠습니까?");
		if(check==true){
			if(document.getElementById("workCode").value==""||document.getElementById("usRn").value==""){
				alert('정상적으로 입력되지 않은 데이터가 있습니다');
				return false;
			}
		}else{
			return false;
		}
	}
	function onLoad() {
		var loginCheckData = <%=loginCheckData%>;
		loginCheck(loginCheckData);
		
		var checkNum = <%=request.getAttribute("newOrderSuccess")%>;
		if(checkNum==null){
			
		}else if(checkNum==0){
			alert('정상적으로 처리 되지 않았습니다.');
		}else if(checkNum==1){
			alert('정상적으로 처리 되었습니다.');
			location.href = 'workOrderInfo.do';
		}else{
			alert('정상적인 요청이 아닙니다.');
		}
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
	  height: 30%;
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
	    border: 0.5px solid #d7d7d7;
		font-size: 15px;
		text-align: center;
		background: white;
	}
	
	#inputTB th {
		background: #f7f7f5;
		border: 0.5px solid #d7d7d7;
	    width: 170px;
	    height: 60px;
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
		background: #f7f7f5;
	}
	#btm_tr td{
		position: sticky;
		bottom: 0;
		background: #f7f7f5;
	}
	
	.div2_2 {
	  width: 85%;
	  height: 70%;
	  margin : 0 auto 0 auto;
	  border-top: 0.5px solid black;
	}
	
	.div2_2_1 {
	  width: 100%;
	  height: 80%;
	  padding : 5px 0 0 0;
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
	th {
		border: 1px solid black;
		background-color: #dcdcdc;

	}
	td {
		border: 1px solid black;
		background-color: white;
	}
	table {
		border: 1px solid black;
		background-color: #f0f8ff;
	}
	.workList{
		border: 1px solid black;
		background: #dcdcdc;
		overflow: scroll;
		width: 1500px;
		height: 200px;
	}
	.workListAll{
		border: 1px solid black;
		width: 1500px;
		height: 200px;
		overflow: hidden;
	}
	.workerInfo, .relativeBox, .submitBtn {
		display: none;
	}
	.relativeBox{
		width: 300px;
		height: 300px;
	}
	.workerList{
		border: 1px solid black;
		width: 1500px;
		height: 200px;
	}
	#iframeToWorker {
		width: 1500px;
		height: 200px;
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
<body onload="onLoad();">
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
	<h1>발주 등록</h1>
	<div class="workListAll" id="workListAll">
		<p id="workMsg"><b>발주 할 작업을 선택해주세요.</b></p>
		<div class="workList" id="workList">
			<%if(list==null||list.size()==0){%>
				<p>등록된 작업이 없습니다.</p>
			<%}else{for(int i = 0 ; i < list.size(); i++){%>
				<p onclick="workInfoDraw(<%=i%>)">
					<%=i+1 %>. 거래처 : <%=list.get(i).getClientCPName() %> | 거래처 전화번호 : <%=list.get(i).getClientPhone() %> | 현장명 : <%=list.get(i).getWorkField() %> | 현장 주소 : <%=list.get(i).getFieldAdd01() %> , <%=list.get(i).getFieldAdd02() %>
					<input type="hidden" id="workCode<%=i %>" name="workCode<%=i %>" value="<%=list.get(i).getWorkCode()%>"/>
					<input type="hidden" id="workField<%=i %>" name="workField<%=i %>" value="<%=list.get(i).getWorkField()%>"/>
					<input type="hidden" readonly="readonly" id="boName<%=i %>" name="boName<%=i %>" value="<%=list.get(i).getBoName()%>"/>
					<input type="hidden" readonly="readonly" id="clientCpName<%=i %>" name="clientCpName<%=i %>" value="<%=list.get(i).getClientCPName()%>"/>
					<input type="hidden" readonly="readonly" id="ClientManager<%=i %>" name="ClientManager<%=i %>" value="<%=list.get(i).getClientManager()%>"/>
					<input type="hidden" readonly="readonly" id="clientPhone<%=i %>" name="clientPhone<%=i %>" value="<%=list.get(i).getClientPhone()%>"/>
					<input type="hidden" readonly="readonly" id="fieldManager<%=i %>" name="fieldManager<%=i %>" value="<%=list.get(i).getFieldManager()%>"/>
					<input type="hidden" readonly="readonly" id="fieldManagerPhone<%=i %>" name="fieldManagerPhone<%=i %>" value="<%=list.get(i).getFieldManagerPhone()%>"/>
					<input type="hidden" readonly="readonly" id="fieldManagerCell<%=i %>" name="fieldManagerCell<%=i %>" value="<%=list.get(i).getFieldManagerCell()%>"/>
					<input type="hidden" readonly="readonly" id="fieldManagerMail<%=i %>" name="fieldManagerMail<%=i %>" value="<%=list.get(i).getFieldManagerMail()%>"/>
					<input type="hidden" readonly="readonly" id="fieldAdd01<%=i %>" name="fieldAdd01<%=i %>" value="<%=list.get(i).getFieldAdd01()%>"/>
					<input type="hidden" readonly="readonly" id="fieldAdd02<%=i %>" name="fieldAdd02<%=i %>" value="<%=list.get(i).getFieldAdd02()%>"/>
					<input type="hidden" readonly="readonly" id="workDate<%=i %>" name="workDate<%=i %>" value="<%=list.get(i).getWorkDate()%>"/>
					<input type="hidden" readonly="readonly" id="workTime<%=i %>" name="workTime<%=i %>" value="<%=list.get(i).getWorkTime()%>"/>
					<input type="hidden" readonly="readonly" id="workAmount<%=i %>" name="workAmount<%=i %>" value="<%=list.get(i).getWorkAmount()%>"/>
					<input type="hidden" readonly="readonly" id="workRequests<%=i %>" name="workRequests<%=i %>" value="<%=list.get(i).getWorkRequests()%>"/>
					<input type="hidden" readonly="readonly" id="workRelative<%=i %>" name="workRelative<%=i %>" value="<%=list.get(i).getRelative()%>"/>
				</p>
				<hr />
			<%}} %>		
		</div>
	<div class="workerList" id="workerList"></div>
		
	</div>
	<div>
		<h3>작업 정보</h3>
		<table>
			<tr>
				<th>현장명</th>
				<td><input type="text" readonly="readonly" id="workField" name="workField"/></td>
				<th>중계자</th>
				<td><input type="text" readonly="readonly" id="boName" name="boName"/></td>
			</tr>
			<tr>
				<th>거래처 명</th>
				<td><input type="text" readonly="readonly" id="clientCpName" name="clientCpName"/></td>
				<th>거래처 담당자</th>
				<td><input type="text" readonly="readonly" id="ClientManager" name="ClientManager"/></td>
				<th>거래처 전화번호</th>
				<td><input type="text" readonly="readonly" id="clientPhone01" name="clientPhone01" style="width: 30px;"/>-<input type="text" readonly="readonly" id="clientPhone02" name="clientPhone02" style="width: 30px;"/>-<input type="text" readonly="readonly" id="clientPhone03" name="clientPhone03" style="width: 30px;"/></td>
			</tr>
			<tr>
				<th>현장 책임자</th>
				<td><input type="text" readonly="readonly" id="fieldManager" name="fieldManager"/></td>
				<th>현장 책임자 전화번호</th>
				<td><input type="text" readonly="readonly" id="fieldManagerPhone01" name="fieldManagerPhone01" style="width: 30px;"/>-<input type="text" readonly="readonly" id="fieldManagerPhone02" name="fieldManagerPhone02" style="width: 30px;"/>-<input type="text" readonly="readonly" id="fieldManagerPhone03" name="fieldManagerPhone03" style="width: 30px;"/></td>
				<th>현장 책임자 핸드폰</th>
				<td><input type="text" readonly="readonly" id="fieldManagerCell01" name="fieldManagerCell01" style="width: 20px;"/>-<input type="text" readonly="readonly" id="fieldManagerCell02" name="fieldManagerCell02" style="width: 30px;"/>-<input type="text" readonly="readonly" id="fieldManagerCell03" name="fieldManagerCell03" style="width: 30px;"/></td>
				<th>현장 책임자 메일 주소</th>
				<td><input type="text" readonly="readonly" id="fieldManagerMail" name="fieldManagerMail"/></td>
			</tr>
			<tr>
				<th>현장 주소</th>
				<td><input type="text" readonly="readonly" id="fieldAdd01" name="fieldAdd01"/></td>
				<th>현장 상세 주소</th>
				<td><input type="text" readonly="readonly" id="fieldAdd02" name="fieldAdd02"/></td>
			</tr>
			<tr>
				<th>작업 날짜</th>
				<td><input type="date" readonly="readonly" id="workDate" name="workDate"/></td>
				<th>작업 시간</th>
				<td><input type="text" readonly="readonly" id="workTime01" name="workTime01" style="width: 15px;"/>:<input type="text" readonly="readonly" id="workTime02" name="workTime02" style="width: 15px"/></td>
				<th>작업 수당</th>
				<td><input type="text" readonly="readonly" id="workAmount" name="workAmount"/></td>
				<th>요청 사항</th>
				<td><input type="text" readonly="readonly" id="workRequests" name="workRequests"/></td>
			</tr>
			<tr>
				<th>비고</th>
				<td><input type="text" readonly="readonly" id="workRelative" name="relative"/></td>
				<td><input type="button" value="작업 확정" onclick="sltWorkInfo();"/></td>
			</tr>
		</table>
	</div>
	<div class="workerInfo" id="workerInfo">
		<h3>작업자 정보</h3>
		<table>
			<tr>
				<th>작업자 이름</th>
				<td><input type="text" id="userName" name="userName" readonly="readonly"/></td>
			</tr>
			<tr>
				<th>작업자 연락처</th>
				<td><input type="text" id="userCell" name="userCell" readonly="readonly"/></td>
			</tr>
			<tr>
				<th>장비 종류 </th>
				<td><input type="text" id="equipType" name="equipType" readonly="readonly"/></td>
			</tr>
			<tr>
				<th>장비 분류</th>
				<td><input type="text" id="equipClass" name="equipClass" readonly="readonly"/></td>
			</tr>
			<tr>
				<th>장비 옵션</th>
				<td><input type="text" id="equipOption" name="equipOption" readonly="readonly"/></td>
			</tr>
			<tr>
				<td><input type="button" value="작업자 확정" onclick="sltWorker();"/></td>
			</tr>
		</table>
	</div>
	<form action="newOrderAct.do">
		<div>
			<h3>발주 등록</h3>
			<input type="hidden" id="workCode" name="workCode"/>
			<input type="hidden" id="usRn" name="usRn" readonly="readonly"/>
			<input type="hidden" id="eqRn" name="eqRn" readonly="readonly"/>
			<table class="relativeBox" id="relativeBox">
				<tr>
					<th>비고</th>
					<td><textarea rows="10" cols="10" id="relative" name="relative" maxlength="39" style="resize: none;" placeholder="작업자에게 전달 해야 하는 사항 혹은 하고 싶은 말을 적으세요."></textarea></td>
				</tr>
			</table>
		</div>
		<input type="submit" class="submitBtn" id="submitBtn" onclick="return finalCheck();"/>
	</form>
	<input type="button" value="뒤로가기" onClick="location.href='workOrderInfo.do'"/>
	
</body>
</html>