<%@page import="java.text.DecimalFormat"%>
<%@page import="com.HEProject.he.workInfo.WorkInfo_ST0VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%WorkInfo_ST0VO vo = (WorkInfo_ST0VO)request.getAttribute("vo"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작업 상세 정보</title>
</head>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript">
	function esCheck(checkVar,amount) {
		if(checkVar==1){
			document.getElementById('et').removeAttribute('readonly');
			document.getElementById('aa').removeAttribute('readonly');
			document.getElementById('et').value='';
			document.getElementById('aa').value='';
		}else {
			document.getElementById('et').setAttribute('readonly', 'readonly');
			document.getElementById('aa').setAttribute('readonly', 'readonly');
			document.getElementById('et').value='0';
			document.getElementById('aa').value='0';
			changeAmount(amount);
		}

	}
	function finishWork(workCode) {
		var checkTorF = document.getElementById('esTrue').checked;
		var es = 0;
		if(checkTorF==true){
			if(document.getElementById('et').value==''){
				alert('연장 시간을 입력해주세요.');
				document.getElementById('et').focus();
				return false;
			}else if(document.getElementById('aa').value==''){
				alert('추가 수당을 입력해주세요.');
				document.getElementById('aa').focus();
				return false;
			}
			es = 1;
		}else {
			es = 0;
		}
		var et = document.getElementById('et').value;
		var aa = document.getElementById('aa').value;
		var cfmCheck = confirm('작업을 완료 하시겠습니까? ( 작업 정보가 완료 작업으로 이관됩니다. )');
		if(cfmCheck==true){
			location.href='workESAct.do?workCode=' + workCode + '&es=' + es + '&et=' + et + '&aa=' + aa;
		}else{
			return false;
		}
	}
	function loadOn() {
		var newAworkRst = <%=request.getAttribute("newAworkRst")%>;
		switch (newAworkRst) {
		case null:
			break;
		case 0:
			alert('작업 완료 등록이 정상적으로 실행되지 않았습니다. 다시 시도해주세요.');
			opener.parent.location='workInfoForIndi.do?uClass=indiUsrn';
			window.close();
			break;
		case 1:
			var cfmData = confirm('작업 완료가 정상적으로 등록 되었습니다. 증빙 자료 페이지로 바로 이동 하시겠습니까 ?');
			switch (cfmData) {
			case true:
				opener.parent.location='workData.do';
				window.close();
				break;
			case false:
				alert('완료 작업 페이지로 이동합니다.');
				opener.parent.location='finishedWorkList.do';
				window.close();
				break;
			}
			break;
		default:
			break;
		}
	}
	function changeAmount(amount) {
		var aa = document.getElementById('aa');
		if(parseInt(aa.value)>1500000){
			document.getElementById('aa').value = 0;
			alert('최대 입력 값은 1,500,000 원 입니다.');
			document.getElementById('aa').value.focus;
			return false;
		}else {
			var rlt = new Intl.NumberFormat().format(parseInt(aa.value) + amount);
			document.getElementById('showAmount').innerHTML=rlt + '원';
		}
		
		
	}
	function onlyNum() {
 		document.getElementById('aa').value = document.getElementById('aa').value.replace(/[^0-9.]/g, '');

	}
	function maxTime() {
		var input_Time = parseInt(document.getElementById('et').value);
		if (input_Time>24) {
			document.getElementById('et').value = 0;
			alert('최대 입력 값은 24 입니다.');
			document.getElementById('et').value.focus;
			return false;
		} 
	}
</script>
<style>
* { 
  font-family: 'Spoqa Han Sans Neo', 'sans-serif'; 	
}
body {
	height: 300px;
	font-family: 'Rubik', sans-serif;
	margin: 0;
	padding: 0;
	background: url("/image/bg_body.png") repeat center;
	-webkit-background-size: cover;
	background-size: cover;
	background-position: center center;
	background-repeat: repeat;
}
body:after {
	background: rgba(255,255,255,0.5);
}
table {
    width: 100%;
    height : 100%;
	font-size: 15px;
	text-align: center;
	background: white;
}
th {
	background: #f7f7f5;
  	border: 0.5px solid #d7d7d7;
    width: 200px;
}

td{
  width: 300px;
  	border: 0.5px solid #d7d7d7;
  white-space:normal;
}
p {
	color: red;
}
.btnArea {
	width : 100%;
	height : 50px;
	background: white;
	text-align: center;
	align-items: center;
}
.btnArea button{
	display : inline-block;
	margin : 0 auto;
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

.btnArea button:hover {
	background-color: #2EE59D;
	box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
	color: #fff;
	transform: translateY(-7px);
}
</style>
<body onload="loadOn();">
<%
	int amount = 0;
	DecimalFormat formatter = new DecimalFormat("###,### 원");
%>
	<div>
		<table>
			<tr>
				<th colspan="8"><h1>작업 상세 정보</h1></th>
			</tr>
			<tr>
				<th>현장명</th>
				<td colspan="3"><%=vo.getWorkField() %></td>
				<th>필요 차량</th>
				<td><%=vo.getRv() %></td>
				<th>중계자</th>
				<td><%=vo.getBoName() %></td>
			</tr>
			<tr>
				<th>거래처 명</th>
				<td><%=vo.getClientCPName() %></td>
				<th>거래처 담당자</th>
				<td><%=vo.getClientManager() %></td>
				<th>거래처 전화번호</th>
				<td colspan="3"><%=vo.getClientPhone() %></td>
			</tr>
			<tr>
				<th>현장 책임자</th>
				<td><%= vo.getFieldManager()%></td>
				<th>현장 책임자 전화번호</th>
				<td><%= vo.getFieldManagerPhone()%></td>
				<th>현장 책임자 핸드폰</th>
				<td><%= vo.getFieldManagerCell()%></td>
				<th>현장 책임자 메일 주소</th>
				<td><%= vo.getFieldManagerMail()%></td>
			</tr>
			<tr>
				<th>현장 주소</th>
				<td colspan="3"><%= vo.getFieldAdd01()%></td>
				<th>현장 상세 주소</th>
				<td colspan="3"><%= vo.getFieldAdd02()%></td>
			</tr>
			<tr>
				<th>작업 날짜</th>
				<td><%= vo.getWorkDate() %></td>
				<th>작업 시간</th>
				<td><%= vo.getWorkTime() %></td>
				<th>작업 수당</th>
				<td><%= formatter.format(vo.getWorkAmount())%></td>
				<th>요청 사항</th>
				<td><%= vo.getWorkRequests()%></td>
			</tr>
			<tr>
				<th>비고</th>
				<td colspan="7"><%=vo.getRelative() %></td>
			</tr>
		</table>
		<table>
			<tr>
				<th>작업 연장 유무</th>
				<td>
					<input type="radio" id="esTrue" name="es" checked="checked" onchange="esCheck(1,<%=vo.getWorkAmount()%>);"/><label for="esTrue">연장 있음</label>
					<input type="radio" id="esFalse" name="es" onchange="esCheck(0,<%=vo.getWorkAmount()%>);"/><label for="esFalse">연장 없음</label>
				</td>
			</tr>
			<tr>
				<th>연장 시간</th>
				<td><input type="number" id="et" name="et" min="0" oninput="maxTime();"/>시간</td>
			</tr>
			<tr>
				<th>추가 수당</th>
				<td><input type="number" id="aa" name="aa" min="0" oninput="changeAmount(<%=vo.getWorkAmount()%>);onlyNum();"/>원</td>
			</tr>
			<tr>
				<th>총 작업 수당</th>
				<td style="color: red;" id="showAmount"></td>
			</tr>
		</table>
	</div>
	<div class="btnArea">
		<button onclick="window.close();">취소</button>
		<button onclick="return finishWork('<%=vo.getWorkCode()%>');">작업 완료</button>
	</div>
</body>
</html>