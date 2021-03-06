<%@page import="com.HEProject.he.workInfo.WorkInfo_ST0VO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
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
	function onLoad() {
		var checkNum = <%=request.getAttribute("newOrderSuccess")%>;
		if(checkNum!=null){
			if(checkNum==0){
				alert('정상적으로 처리 되지 않았습니다.');
			}else if(checkNum==1){
				alert('정상적으로 처리 되었습니다.');
			}else{
				alert('정상적인 요청이 아닙니다.');
			}	
			location.href = 'workOrderInfo.do';
		}
		document.getElementById('info_Frame').setAttribute('src','order_frame01.do');
	}
	var info_num01;
	var info_num02;
	function insert_val01() {
 		var workField = document.getElementById('info_Frame').contentDocument.getElementsByName('workField')[info_num01].value;
 		var fieldManager = document.getElementById('info_Frame').contentDocument.getElementsByName('fieldManager')[info_num01].value;
 		var fieldManagerMail = document.getElementById('info_Frame').contentDocument.getElementsByName('fieldManagerMail')[info_num01].value;
 		var fieldManagerPhone01 = document.getElementById('info_Frame').contentDocument.getElementsByName('fieldManagerPhone01')[info_num01].value;
 		var fieldManagerPhone02 = document.getElementById('info_Frame').contentDocument.getElementsByName('fieldManagerPhone02')[info_num01].value;
 		var fieldManagerPhone03 = document.getElementById('info_Frame').contentDocument.getElementsByName('fieldManagerPhone03')[info_num01].value;
 		var fieldManagerCell01 = document.getElementById('info_Frame').contentDocument.getElementsByName('fieldManagerCell01')[info_num01].value;
 		var fieldManagerCell02 = document.getElementById('info_Frame').contentDocument.getElementsByName('fieldManagerCell02')[info_num01].value;
 		var fieldManagerCell03 = document.getElementById('info_Frame').contentDocument.getElementsByName('fieldManagerCell03')[info_num01].value;
 		var fieldAdd01 = document.getElementById('info_Frame').contentDocument.getElementsByName('fieldAdd01')[info_num01].value;
 		var fieldAdd02 = document.getElementById('info_Frame').contentDocument.getElementsByName('fieldAdd02')[info_num01].value;
 		var workTime01 = document.getElementById('info_Frame').contentDocument.getElementsByName('workTime01')[info_num01].value;
 		var workTime02 = document.getElementById('info_Frame').contentDocument.getElementsByName('workTime02')[info_num01].value;
 		var workAmount = document.getElementById('info_Frame').contentDocument.getElementsByName('workAmount')[info_num01].value;
 		var workRequests = document.getElementById('info_Frame').contentDocument.getElementsByName('workRequests')[info_num01].value;
 		var clientCpName = document.getElementById('info_Frame').contentDocument.getElementsByName('clientCpName')[info_num01].value;
 		var ClientManager = document.getElementById('info_Frame').contentDocument.getElementsByName('ClientManager')[info_num01].value;
 		var clientPhone01 = document.getElementById('info_Frame').contentDocument.getElementsByName('clientPhone01')[info_num01].value;
 		var clientPhone02 = document.getElementById('info_Frame').contentDocument.getElementsByName('clientPhone02')[info_num01].value;
 		var clientPhone03 = document.getElementById('info_Frame').contentDocument.getElementsByName('clientPhone03')[info_num01].value;
 		var workCode = document.getElementById('info_Frame').contentDocument.getElementsByName('workCode')[info_num01].value;
 		var rv = document.getElementById('info_Frame').contentDocument.getElementsByName('rv')[info_num01].value;
 		
 		document.getElementById('workField').value = workField;
 		document.getElementById('fieldManager').value = fieldManager;
 		document.getElementById('fieldManagerMail').value = fieldManagerMail;
 		document.getElementById('fieldManagerPhone01').value = fieldManagerPhone01;
 		document.getElementById('fieldManagerPhone02').value = fieldManagerPhone02;
 		document.getElementById('fieldManagerPhone03').value = fieldManagerPhone03;
 		document.getElementById('fieldManagerCell01').value = fieldManagerCell01;
 		document.getElementById('fieldManagerCell02').value = fieldManagerCell02;
 		document.getElementById('fieldManagerCell03').value = fieldManagerCell03;
 		document.getElementById('fieldAdd01').value = fieldAdd01;
 		document.getElementById('fieldAdd02').value = fieldAdd02;
 		document.getElementById('workTime01').value = workTime01;
 		document.getElementById('workTime02').value = workTime02;
 		document.getElementById('workAmount').value = workAmount;
 		document.getElementById('workRequests').value = workRequests;
 		document.getElementById('clientCpName').value = clientCpName;
 		document.getElementById('ClientManager').value = ClientManager;
 		document.getElementById('clientPhone01').value = clientPhone01;
 		document.getElementById('clientPhone02').value = clientPhone02;
 		document.getElementById('clientPhone03').value = clientPhone03;
 		document.getElementById('workCode').value = workCode;
 		document.getElementById('rv').value = rv;
	}
	function insert_val02() {
 		var usRn = document.getElementById('info_Frame').contentDocument.getElementsByName('usRn')[info_num02].value;
 		var userName = document.getElementById('info_Frame').contentDocument.getElementsByName('userName')[info_num02].value;
 		var userCell = document.getElementById('info_Frame').contentDocument.getElementsByName('userCell')[info_num02].value;
 		var equipType = document.getElementById('info_Frame').contentDocument.getElementsByName('equipType')[info_num02].value;
 		var equipClass = document.getElementById('info_Frame').contentDocument.getElementsByName('equipClass')[info_num02].value;
 		var equipOption = document.getElementById('info_Frame').contentDocument.getElementsByName('equipOption')[info_num02].value;
 		var eqRn = document.getElementById('info_Frame').contentDocument.getElementsByName('eqRn')[info_num02].value;
 		
 		
 		document.getElementById('usRn').value = usRn;
 		document.getElementById('userName').value = userName;
 		document.getElementById('userCell').value = userCell;
 		document.getElementById('equipType').value = equipType;
 		document.getElementById('equipClass').value = equipClass;
 		document.getElementById('equipOption').value = equipOption;
 		document.getElementById('eqRn').value = eqRn;
	}
	function confirm_work() {
 		var btn_val = document.getElementById('confirmBtn').value;
 		var confirmBtn = document.getElementById('confirmBtn');
 		var backBtn = document.getElementById('backBtn');
 		switch (btn_val) {
		case '0':
			if(document.getElementById('workCode').value==''){
				alert('작업을 선택 해주세요.');
			}else {
				var rv = document.getElementById('rv');
				var h2 = document.getElementById('div2_1_1_h2');
				document.getElementById('info_Frame').setAttribute('src','order_frame02.do?equipType=' + rv.value);
				confirmBtn.value = 1;
				backBtn.removeAttribute('disabled');
				confirmBtn.innerHTML='작업자 확정';
				h2.innerHTML='작업자 선택';
			}
			break;
		case '1':
			if(document.getElementById('workCode').value==''){
				alert('잘못된 접근 입니다.');
			}else if(document.getElementById('usRn').value==''||document.getElementById('eqRn').value==''){
				alert('작업자를 선택 해주세요.');
			}else {
				confirmBtn.value = 2;
				backBtn.setAttribute('disabled','disabled');
				confirmBtn.setAttribute('disabled','disabled');
				alert('발주 정보 등록이 완료 되었습니다. \n하단의 [ 발주 등록 ] 버튼을 눌러주세요.');
			}
			break;

		default:
			alert('err - 관리자에게 문의 하세요. 페이지가 새로고침 됩니다.');
			location.href = 'newOrder.do';
			break;
		}
	}
	
	function back_btn() {
		var confirmBtn = document.getElementById('confirmBtn');
		var h2 = document.getElementById('div2_1_1_h2');
		document.getElementById('info_Frame').setAttribute('src','order_frame01.do');
		document.getElementById('backBtn').setAttribute('disabled','disabled');
		confirmBtn.innerHTML='작업 확정';
		confirmBtn.value = 0;
		h2.innerHTML='작업 선택';
		alert('작업 선택 후 [ 작업 확정 ] 버튼을 다시 눌러주세요.');
	}
	function confirm_All() {
 		var confirmBtn = document.getElementById('confirmBtn');
		switch (confirmBtn.value) {
		case '2':
			return confirm('발주 등록을 완료 하시겠습니까?');
			break;
		default:
			alert('정상적인 접근이 아닙니다.\n입력된 정보를 다시 확인 해주세요.');
			return false;
			break;
		}
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
	    width: 100px;
	    height: 40px;
	}
	
	#inputTB td{
	  width: 183px;
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
	#info_Frame {
	width: 100%;
	height: 75%;
	}
.h2_btn_div {
	width: 200px;
	height: 100%;
	display: flex;
	float: right;
	align-items: center;
}
.check_btn{
	display : inline-block;
	margin : 0 auto;
	background-color: #72B08E;
	color: white;
	border: none;
	width: 90px;
	height: 30px;
}

.check_btn:hover {
	background-color: #4E7861;
	box-shadow: 1px 1px 1px 1px #3C5C4A;
}

.check_btn:active {
	text-shadow: 4px 2px 2px black;
}
.check_btn:disabled {
	background: #517D65;
	color: red;
}
</style>
<body onload="onLoad();">
	<jsp:include page="top_menu.jsp" />
	<jsp:include page="floating_module.jsp" />
	<jsp:include page="boCheck_module.jsp" />
	<main>
	<div class="mainDiv">
		<div class="div1">
			<div class="div1_textArea">
				<h2>새 발주 등록</h2>
			</div>
		</div>
		<div class="div2">
			<div class="div_2_back">
				<div class="div2_1">
					<div class="div2_1_1">
						<h2 id="div2_1_1_h2">작업 선택</h2>
						<div class="h2_btn_div">
							<button disabled="disabled" id="backBtn" onclick="back_btn();"
								class="check_btn">이전</button>
							<button onclick="confirm_work();" id="confirmBtn" value="0"
								class="check_btn">작업 확정</button>
						</div>
					</div>
					<div class="div2_1_2">
						<iframe src="" frameborder="0" id="info_Frame"></iframe>
						<p style="font-size: 18px;">※ 작업 선택 및 확정 > 작업자 선택 및 확정 > 발주 등록
						</p>
					</div>
				</div>
				<div class="div2_2">
					<div class="div2_2_1">
						<p style="font-size: 12px;">※ 상단에 원하시는 작업 혹은 작업자 를 선택 하시면 정보가
							자동으로 입력 됩니다.</p>
						<h3>작업 정보</h3>
						<table id="inputTB">
							<tr>
								<th>현장명</th>
								<td><input type="text" readonly="readonly" id="workField"
									name="workField" /></td>
								<th>현장 책임자</th>
								<td><input type="text" readonly="readonly"
									id="fieldManager" name="fieldManager" /></td>
								<th colspan="2">현장 책임자 메일 주소</th>
								<td colspan="2"><input type="text" readonly="readonly"
									id="fieldManagerMail" name="fieldManagerMail" /></td>
							</tr>
							<tr>
								<th colspan="2">현장 책임자 전화번호</th>
								<td colspan="2"><input type="text" readonly="readonly"
									id="fieldManagerPhone01" name="fieldManagerPhone01"
									style="width: 30px;" /> - <input type="text"
									readonly="readonly" id="fieldManagerPhone02"
									name="fieldManagerPhone02" style="width: 35px;" /> - <input
									type="text" readonly="readonly" id="fieldManagerPhone03"
									name="fieldManagerPhone03" style="width: 35px;" /></td>
								<th colspan="2">현장 책임자 핸드폰</th>
								<td colspan="2"><input type="text" readonly="readonly"
									id="fieldManagerCell01" name="fieldManagerCell01"
									style="width: 30px;" /> - <input type="text"
									readonly="readonly" id="fieldManagerCell02"
									name="fieldManagerCell02" style="width: 35px;" /> - <input
									type="text" readonly="readonly" id="fieldManagerCell03"
									name="fieldManagerCell03" style="width: 35px;" /></td>
							</tr>
							<tr>
								<th colspan="2">현장 주소</th>
								<td colspan="2"><input type="text" readonly="readonly"
									id="fieldAdd01" name="fieldAdd01" /></td>
								<th colspan="2">현장 상세 주소</th>
								<td colspan="2"><input type="text" readonly="readonly"
									id="fieldAdd02" name="fieldAdd02" /></td>
							</tr>
							<tr>
								<th>작업 날짜</th>
								<td><input type="date" readonly="readonly" id="workDate"
									name="workDate" /></td>
								<th>작업 시간</th>
								<td><input type="text" readonly="readonly" id="workTime01"
									name="workTime01" style="width: 15px;" /> : <input type="text"
									readonly="readonly" id="workTime02" name="workTime02"
									style="width: 15px" /></td>
								<th>작업 수당</th>
								<td colspan="3"><input type="text" readonly="readonly"
									id="workAmount" name="workAmount" /></td>
							</tr>
							<tr>
								<th>거래처 명</th>
								<td><input type="text" readonly="readonly"
									id="clientCpName" name="clientCpName" /></td>
								<th>거래처 담당자</th>
								<td><input type="text" readonly="readonly"
									id="ClientManager" name="ClientManager" /></td>
								<th colspan="2">거래처 전화번호</th>
								<td colspan="2"><input type="text" readonly="readonly"
									id="clientPhone01" name="clientPhone01" style="width: 35px;" />-<input
									type="text" readonly="readonly" id="clientPhone02"
									name="clientPhone02" style="width: 35px;" />-<input
									type="text" readonly="readonly" id="clientPhone03"
									name="clientPhone03" style="width: 35px;" /></td>
							</tr>
							<tr>
								<th colspan="2">요청 사항</th>
								<td colspan="6"><input style="width: 90%;" type="text"
									readonly="readonly" id="workRequests" name="workRequests" /></td>
							</tr>
						</table>
						<h3>작업자 정보</h3>
						<table id="inputTB">
							<tr>
								<th>작업자 이름</th>
								<td colspan="2"><input type="text" id="userName"
									name="userName" readonly="readonly" /> <input type="hidden"
									id="rv" name="rv" readonly="readonly" /></td>
								<th>작업자 연락처</th>
								<td colspan="2"><input type="text" id="userCell"
									name="userCell" readonly="readonly" /></td>
							</tr>
							<tr>
								<th>장비 종류</th>
								<td><input type="text" id="equipType" name="equipType"
									readonly="readonly" /></td>
								<th>장비 분류</th>
								<td><input type="text" id="equipClass" name="equipClass"
									readonly="readonly" /></td>
								<th>장비 옵션</th>
								<td><input type="text" id="equipOption" name="equipOption"
									readonly="readonly" /></td>
							</tr>
						</table>
					</div>
					<div class="div2_2_2">
						<div class="div2_2_2_btn">
							<form action="newOrderAct.do" style="display: inline-block;">
								<input type="hidden" id="workCode" name="workCode" /> <input
									type="hidden" id="usRn" name="usRn" readonly="readonly" /> <input
									type="hidden" id="eqRn" name="eqRn" readonly="readonly" />
								<button type="submit" onclick="return confirm_All();">발주
									등록</button>
							</form>
							<button onclick="location.href='workOrderInfo.do'">뒤로가기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="div3"></div>
	</div>
	</main>
</body>
</html>