<%@page import="com.HEProject.he.clientInfo.ClientInfoVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%
		List<ClientInfoVO> list = null;
		list = (List)request.getAttribute("cInfo");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작업 등록</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="/css/main.css?ver=22">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="/js/main.js?ver=10" ></script>
<script type="text/javascript">
function validate() {
	var chkNum = /^[0-9]+$/;//숫자
	var clientCode = document.getElementById("clientCode").value;
	var workField = document.getElementById("workField").value;
	var fieldManager = document.getElementById("fieldManager").value;
	var fieldManagerMail01 = document.getElementById("fieldManagerMail01").value;
	var fieldManagerMail02 = document.getElementById("fieldManagerMail02").value;
	var fieldAdd02 = document.getElementById("fieldAdd02").value;
	var workAmount = document.getElementById("workAmount").value;
	var dateWork = document.getElementById("dateWork").value;
	var workRequests = document.getElementById("workRequests").value;
	var relative = document.getElementById("relative").value;
	var rv = document.getElementById("rv").value;
	var rvDirect = document.getElementById("rvDirect").value;
	var workTime01 = document.getElementById("workTime01").value;
	var workTime02 = document.getElementById("workTime02").value;
	var fieldManagerPhone01 = document.getElementById("fieldManagerPhone01").value;
	var fieldManagerPhone02 = document.getElementById("fieldManagerPhone02").value;
	var fieldManagerPhone03 = document.getElementById("fieldManagerPhone03").value;
	var fieldManagerCell01 = document.getElementById("fieldManagerCell01").value;
	var fieldManagerCell02 = document.getElementById("fieldManagerCell02").value;
	var fieldManagerCell03 = document.getElementById("fieldManagerCell03").value;
	var sido1 = document.getElementById("sido1").value;
	var gugun1 = document.getElementById("gugun1").value;
	var workTime = workTime01 + ":" + workTime02;
	var fieldManagerPhone = fieldManagerPhone01 + "-" + fieldManagerPhone02 + "-" + fieldManagerPhone03;
	var fieldManagerCell = fieldManagerCell01 + "-" + fieldManagerCell02 + "-" + fieldManagerCell03;

	if(document.getElementById("clientCpName").value==''||document.getElementById("clientManager").value==''||document.getElementById("clientPhone").value==''||document.getElementById("relative").value==''){
		alert('거래처를 선택 하세요.');
		return false;
	}
	if(workField==''){
		alert('현장명을 입력 하세요.');
		document.getElementById("workField").focus();
		return false;
	}
	if(rv==''||rv=='noData'){
		alert('필요 차량을 선택해주세요.');
		document.getElementById("rv").focus();
		return false;
	}else if(rv=='직접입력'){
		if(rvDirect==''){
			alert('필요 차량을 입력 해주세요.');
			document.getElementById("rvDirect").focus();
			return false;
		}
	}
	if(fieldManager==''){
		document.getElementById("fieldManager").focus();
		alert('현장책임자 이름을 입력 하세요.');
		return false;
	}
	if(fieldManagerPhone01==''||fieldManagerPhone02==''||fieldManagerPhone03==''){
		document.getElementById("fieldManagerPhone01").focus();
		alert('현장 책임자 전화번호를 입력 하세요.');
		return false;
	}
	if(fieldManagerCell01==''||fieldManagerCell02==''||fieldManagerCell03==''){
		document.getElementById("fieldManagerCell01").focus();
		alert('현장 책임자 핸드폰 번호를 입력 하세요.');
		return false;
	}
	if(fieldManagerMail01!=''||fieldManagerMail02!=''){
		if(fieldManagerMail01==''&&fieldManagerMail02==''){
			alert('이메일을 정확히 작성해주세요.');
			return false;
		}
	}
    if(sido1==""||gugun1=="") {
        alert("주소를 선택 해주세요");
        document.getElementById("sido1").focus();
        return false;
    }
	if(workAmount==''){
		document.getElementById("workAmount").focus();
		alert('작업 금액을 입력 하세요.');
		return false;
	}
	if(document.getElementById("dateWork").value==''){
		document.getElementById("dateWork").focus();
		alert('작업 날짜를 입력 하세요.');
		return false;
	}
	if(workTime01==''||workTime02==''){
		document.getElementById("workTime01").focus();
		alert('작업 시간을 입력 하세요.');
		return false;
	}
	
    if(!chkNum.test(fieldManagerPhone01)||!chkNum.test(fieldManagerPhone02)||!chkNum.test(fieldManagerPhone03)){
		alert('전화번호는 숫자만 입력해주세요.');
		document.getElementById("fieldManagerPhone01").value=='';
		document.getElementById("fieldManagerPhone02").value=='';
		document.getElementById("fieldManagerPhone03").value='';
		document.getElementById("fieldManagerPhone01").focus();
		return false;
	}
    if(!chkNum.test(fieldManagerCell01)||!chkNum.test(fieldManagerCell02)||!chkNum.test(fieldManagerCell03)){
		alert('핸드폰번호는 숫자만 입력해주세요.');
		document.getElementById("fieldManagerCell01").value=='';
		document.getElementById("fieldManagerCell02").value=='';
		document.getElementById("fieldManagerCell03").value='';
		document.getElementById("fieldManagerCell01").focus();
		return false;
	}
    if(!chkNum.test(workTime01)||!chkNum.test(workTime02)){
		alert('작업 시간은 숫자만 입력해주세요.');
		document.getElementById("workTime01").value=='';
		document.getElementById("workTime02").value=='';
		document.getElementById("workTime01").focus();
		return false;
	}
	document.getElementById("fieldManagerMail").value = fieldManagerMail01+'@'+fieldManagerMail02;
	document.getElementById("workTime").value = workTime;
    document.getElementById("fieldManagerPhone").value = fieldManagerPhone;
	document.getElementById("fieldManagerCell").value = fieldManagerCell;
	document.getElementById("fieldAdd01").value = sido1 + "/" + gugun1;

}
	
	function test(code) {
		var cliCode = document.getElementById("cliCode"+code).value;	
		var cpName = document.getElementById("cpName"+code).value;		
		var cliMng = document.getElementById("cliMng"+code).value;
		var cliPh = document.getElementById("cliPh"+code).value;
		var rr = document.getElementById("rr"+code).value;
	
		document.getElementById("clientCpName").value = cpName;
		document.getElementById("clientManager").value = cliMng;
		document.getElementById("clientPhone").value = cliPh;
		document.getElementById("relative").value = rr;
		document.getElementById("clientCode").value = cliCode;
	}

	function altClick() {
		if(document.getElementById("clientCpName").value==''||document.getElementById("clientManager").value==''||document.getElementById("clientPhone").value==''||document.getElementById("relative").value==''){
			alert('거래처를 선택 하세요.');
		}
	}
	
	function direct() {
		var langSelect = document.getElementById("rv"); 
		var selectValue = langSelect.options[langSelect.selectedIndex].value;
		if(selectValue=="직접입력"){
			document.getElementById("rvDirect").style.display = "inline";
		}else{
			document.getElementById("rvDirect").style.display = "none";
		}
	}
	function mailAddCG() {
		var mailAddSelect = document.getElementById('mailAdd');
		var mailAddvalue = mailAddSelect.options[mailAddSelect.selectedIndex].value;
		if(mailAddvalue==1){
			document.getElementById('fieldManagerMail02').value = '';
			document.getElementById('fieldManagerMail02').removeAttribute('readonly',''); 
		}else {
			document.getElementById('fieldManagerMail02').setAttribute('readonly','readonly'); 
			document.getElementById('fieldManagerMail02').value = mailAddSelect.value;
		}
	}
	$('document').ready(function() {
	    var area0 = ["시/도 선택","서울특별시","인천광역시","대전광역시","광주광역시","대구광역시","울산광역시","부산광역시","경기도","강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"];
	      var area1 = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
	      var area2 = ["계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군"];
	      var area3 = ["대덕구","동구","서구","유성구","중구"];
	      var area4 = ["광산구","남구","동구","북구","서구"];
	      var area5 = ["남구","달서구","동구","북구","서구","수성구","중구","달성군"];
	      var area6 = ["남구","동구","북구","중구","울주군"];
	      var area7 = ["강서구","금정구","남구","동구","동래구","부산진구","북구","사상구","사하구","서구","수영구","연제구","영도구","중구","해운대구","기장군"];
	      var area8 = ["고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시","가평군","양평군","여주군","연천군"];
	      var area9 = ["강릉시","동해시","삼척시","속초시","원주시","춘천시","태백시","고성군","양구군","양양군","영월군","인제군","정선군","철원군","평창군","홍천군","화천군","횡성군"];
	      var area10 = ["제천시","청주시","충주시","괴산군","단양군","보은군","영동군","옥천군","음성군","증평군","진천군","청원군"];
	      var area11 = ["계룡시","공주시","논산시","보령시","서산시","아산시","천안시","금산군","당진군","부여군","서천군","연기군","예산군","청양군","태안군","홍성군"];
	      var area12 = ["군산시","김제시","남원시","익산시","전주시","정읍시","고창군","무주군","부안군","순창군","완주군","임실군","장수군","진안군"];
	      var area13 = ["광양시","나주시","목포시","순천시","여수시","강진군","고흥군","곡성군","구례군","담양군","무안군","보성군","신안군","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
	      var area14 = ["경산시","경주시","구미시","김천시","문경시","상주시","안동시","영주시","영천시","포항시","고령군","군위군","봉화군","성주군","영덕군","영양군","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군"];
	      var area15 = ["거제시","김해시","마산시","밀양시","사천시","양산시","진주시","진해시","창원시","통영시","거창군","고성군","남해군","산청군","의령군","창녕군","하동군","함안군","함양군","합천군"];
	      var area16 = ["서귀포시","제주시","남제주군","북제주군"];

	    

	    // 시/도 선택 박스 초기화

	    $("select[name^=sido]").each(function() {
	      $selsido = $(this);
	      $.each(eval(area0), function() {
	      $selsido.append("<option value='"+this+"'>"+this+"</option>");
	      });
	      $selsido.next().append("<option value=''>구/군 선택</option>");
	    });

	    

	    // 시/도 선택시 구/군 설정

	    $("select[name^=sido]").change(function test() {
	      var area = "area"+$("option",$(this)).index($("option:selected",$(this))); // 선택지역의 구군 Array
	      var $gugun = $(this).next(); // 선택영역 군구 객체
	      $("option",$gugun).remove(); // 구군 초기화

	      if(area == "area0")
	      $gugun.append("<option value=''>구/군 선택</option>");
	      else {
	      $.each(eval(area), function() {
	        $gugun.append("<option value='"+this+"'>"+this+"</option>");
	      });
	      }
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


#w_50 input {
	width : 50px;
}

p {
	font-size: 17px;
	color: red;
	font-weight: bold;
}
#workInfo {
	width: 100%;
	height: 75%;
}

#sub_btn{
	background-color: #72B08E;
	color: white;
	border: none;
	width: 100px;
	height: 30px;
	margin: 10px 0 0 0 ;
}

#sub_btn:hover {
	background-color: #4E7861;
	box-shadow: 1px 1px 1px 1px #3C5C4A;
}

#sub_btn:active {
	text-shadow: 4px 2px 2px black;
}

</style>
<body>
	<jsp:include page="top_menu.jsp" />
	<jsp:include page="floating_module.jsp" />
	<jsp:include page="boCheck_module.jsp" />
	<main>
	<div class="mainDiv">
		<div class="div1">
			<div class="div1_textArea">
				<h2>작업 등록</h2>
			</div>
		</div>
		<div class="div2">
			<div class="div_2_back">
				<div class="div2_1">
					<div class="div2_1_1">
						<h2 id="div2_1_1_h2">거래처 선택</h2>
					</div>
					<div class="div2_1_2">
						<table id="inputTB">
							<tr id="top_tr">
								<th></th>
								<th>거래처 명</th>
								<th>담당자</th>
								<th>거래처 전화번호</th>
								<th>비고</th>
							</tr>

							<%
								if (list == null || list.size() == 0) {
							%>
							<tr>
								<td colspan="6">등록된 거래처가 없습니다.</td>
							</tr>
							<%
								} else {
									for (int i = 0; i < list.size(); i++) {
							%>
							<tr onclick="test('<%=i%>');" style="cursor: pointer;">
								<td><input type="hidden"
									value="<%=list.get(i).getClientCode()%>" id="cliCode<%=i%>"
									name="cliCode<%=i%>" /><%=i + 1%></td>
								<td><input type="hidden"
									value="<%=list.get(i).getClientCpName()%>" id="cpName<%=i%>"
									name="cpName<%=i%>" /><%=list.get(i).getClientCpName()%></td>
								<td><input type="hidden"
									value="<%=list.get(i).getClientManager()%>"
									id="cliMng<%=i%>" name="cliMng<%=i%>" /><%=list.get(i).getClientManager()%></td>
								<td><input type="hidden"
									value="<%=list.get(i).getClientPhone()%>" id="cliPh<%=i%>"
									name="cliPh<%=i%>" /><%=list.get(i).getClientPhone()%></td>
								<td><input type="hidden"
									value="<%=list.get(i).getRelative()%>" id="rr<%=i%>"
									name="rr<%=i%>" /><%=list.get(i).getRelative()%></td>
							</tr>
							<%
								}
								}
							%>
							<tr id="btm_tr">
								<th>선택된 거래처 정보</th>
								<td><input type="text" readonly="readonly"
									name="clientCpName" id="clientCpName" onclick="altClick();" /></td>
								<td><input type="text" readonly="readonly"
									name="clientManager" id="clientManager" onclick="altClick();" /></td>
								<td><input type="text" readonly="readonly"
									name="clientPhone" id="clientPhone" onclick="altClick();" /></td>
								<td><input type="text" readonly="readonly" name="relative"
									id="relative" onclick="altClick();" /></td>
							</tr>
						</table>
						<p style="font-size: 15px;">※ 선택하실 거래처를 클릭하시면 자동으로 정보가 입력됩니다.</p>
					</div>
				</div>
				<div class="div2_2">
					<div class="div2_2_1">
						<h2>작업 정보 입력</h2>
						<form action="newWorkACT.do" id="form" name="form">
							<input type="hidden" name="clientCode" id="clientCode" />
							<table id="inputTB">
								<tr>
									<th>현장명*</th>
									<td><input type="text" name="workField" id="workField"
										maxlength="20" /></td>
									<th>필요 차량*</th>
									<td><select name="rv" id="rv" onchange="direct();">
											<option value="noData">선택 해주세요.</option>
											<option value="지게차">지게차</option>
											<option value="사다리">사다리</option>
											<option value="스카이">스카이</option>
											<option value="크레인">크레인</option>
											<option value="카고">카고</option>
											<option value="굴삭기">굴삭기</option>
											<option value="화물차">화물차</option>
											<option value="직접입력">직접입력</option>
									</select> <input type="text" name="rvDirect" id="rvDirect" maxlength="7" />
									</td>
								</tr>
								<tr>
									<th>현장 책임자*</th>
									<td colspan="3"><input type="text" name="fieldManager"
										id="fieldManager" maxlength="7" /></td>
								</tr>
								<tr id="w_50">
									<th>현장 책임자 전화번호*</th>
									<td><input type="hidden" id="fieldManagerPhone"
										name="fieldManagerPhone" /><input type="text"
										name="fieldManagerPhone01" id="fieldManagerPhone01"
										maxlength="4" /> - <input type="text"
										name="fieldManagerPhone02" id="fieldManagerPhone02"
										maxlength="4" /> - <input type="text"
										name="fieldManagerPhone03" id="fieldManagerPhone03"
										maxlength="4" /><br /></td>
									<th>현장책임자 핸드폰 번호*</th>
									<td><input type="hidden" id="fieldManagerCell"
										name="fieldManagerCell" /><input type="text"
										name="fieldManagerCell01" id="fieldManagerCell01"
										maxlength="3" /> - <input type="text"
										name="fieldManagerCell02" id="fieldManagerCell02"
										maxlength="4" /> - <input type="text"
										name="fieldManagerCell03" id="fieldManagerCell03"
										maxlength="4" /></td>
								</tr>
								<tr>
									<th>현장 책임자 이메일</th>
									<td colspan="3"><input type="hidden"
										name="fieldManagerMail" id="fieldManagerMail" /> <input
										type="text" name="fieldManagerMail01" id="fieldManagerMail01" />
										<b>@</b> <input type="text" name="fieldManagerMail02"
										id="fieldManagerMail02" /> <select name="mailAdd"
										id="mailAdd" onchange="mailAddCG();">
											<option value="1" selected>직접입력</option>
											<option value="naver.com">naver.com</option>
											<option value="hanmail.net">hanmail.net</option>
											<option value="hotmail.com">hotmail.com</option>
											<option value="nate.com">nate.com</option>
											<option value="yahoo.co.kr">yahoo.co.kr</option>
											<option value="empas.com">empas.com</option>
											<option value="dreamwiz.com">dreamwiz.com</option>
											<option value="freechal.com">freechal.com</option>
											<option value="lycos.co.kr">lycos.co.kr</option>
											<option value="korea.com">korea.com</option>
											<option value="gmail.com">gmail.com</option>
											<option value="hanmir.com">hanmir.com</option>
											<option value="paran.com">paran.com</option>
									</select></td>
								</tr>
								<tr>
									<th>현장 주소*</th>
									<td><input type="hidden" name="fieldAdd01" id="fieldAdd01" />
										<select name="sido1" id="sido1"></select> <select
										name="gugun1" id="gugun1"></select></td>
									<th>상세 주소</th>
									<td><input type="text" name="fieldAdd02" id="fieldAdd02"
										maxlength="19" /></td>
								</tr>
								<tr>
									<th>작업 금액*</th>
									<td><input type="number" name="workAmount" id="workAmount"
										maxlength="9" /></td>
									<th>작업 날짜*</th>
									<td><input type="date" name="dateWork" id="dateWork"
										placeholder="클릭하면 달력이 생성됩니다." /><br /></td>
								</tr>
								<tr>
									<th>작업 시간*</th>
									<td id="w_50"><input type="hidden" id="workTime"
										name="workTime" /><input type="number" name="workTime01"
										id="workTime01" maxlength="2" /> : <input type="number"
										name="workTime02" id="workTime02" maxlength="2" /><br /></td>
									<th>작업 요청 사항*</th>
									<td><input type="text" name="workRequests"
										id="workRequests" maxlength="40" /><br /></td>
								</tr>
							</table>
							<button id="sub_btn" type="submit" onclick="return validate();">저장</button>
						</form>
						<p style="font-size: 15px;">※ 작업 등록 후 하단 [발주 이동] 버튼을 클릭 하시면
							빠르게 발주페이지로 넘어갈 수 있습니다.</p>
					</div>
					<div class="div2_2_2">
						<div class="div2_2_2_btn">
							<button onclick="location.href='workInfo.do'">뒤로가기</button>
							<button onclick="location.href='#'">발주 이동</button>
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