<%@page import="com.HEProject.he.boInfo.BOInfoVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%List<BOInfoVO> nowAsslist = (List)request.getAttribute("nowAsslist"); %>
    <%List<BOInfoVO> newAsslist = (List)request.getAttribute("newAsslist"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록된 중계/협회 목록</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="/js/main.js" ></script>
<link rel="stylesheet" href="/css/main.css?ver=16">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript">
function messageCheck() {
	window.open("messageCheck.do?wMsg=1","EquipType","width=1000,height=600,resizable=no,scrollbars=yes");
}
function loadon() {
	
	var resultNum = <%=request.getAttribute("resultNum")%>;
	var checkNum = <%=request.getAttribute("delCheckNum")%>;
	if(resultNum==null&&checkNum==null){
		
	}else {
		if(resultNum==1){
			alert('그룹 신청이 정상적으로 처리되었습니다.');
		}else if(resultNum==0){
			alert('그룹 신청이 정상적으로 처리되지 않았습니다. 다시 시도 해주세요');
		}else if(checkNum==0){
			alert('정상적으로 처리되지 않았습니다.');
		}else if(checkNum==1){
			alert('정상적으로 처리 되었습니다.');
		}else{
			alert('정상적인 요청이 아닙니다.');
		}
		location.href='showMyGroup.do';
	}
	
	
	if(checkNum==2){
		alert('정상적인 요청이 아닙니다.');
	}
	
}
function conFirm_Forms(num) {
	switch (num) {
	case 0:
		var rpNum = document.getElementsByName('new_chkUsRn');
		for(var i = 0; i < rpNum.length; i++){
			if(rpNum[i].checked==true){
				var check_confirm = confirm('가입 신청 하시겠습니까?');
				if(check_confirm==true){
					document.getElementById('form_Aci').submit();
				}
				return false;
			}
		}
		alert('가입 신청 하실 그룹을 선택하세요.');
		break;
	case 1:
		var rpNum = document.getElementsByName('del_chkUsRn');
		for(var i = 0; i < rpNum.length; i++){
			if(rpNum[i].checked==true){
				var check_confirm = confirm('정말 탈퇴 하시겠습니까?');
				if(check_confirm==true){
					document.getElementById('form_del').submit();
				}
				return false;
			}
		}
		alert('탈퇴 하실 그룹을 선택하세요.');
		break;

	default:
		alert('잘못된 요청입니다.');
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
	height: 100%;
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

.inputTBDiv {
	width: 100%;
	height: 80%;
}
#form_del #form_Aci {
	height: 100%;
	overflow-y: scroll;
}
#inputTB {
  width: 100%;
  height : auto;
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

#workerInfoTB {
    width: 100%;
    height : auto;
    border-right: 0.5px solid #d7d7d7;
    border-left: 0.5px solid #d7d7d7;
	font-size: 15px;
	text-align: center;
	background: white; 
}



#workerInfoTB td {
  width: 300px;
  border: 0.5px solid #d7d7d7;
  white-space:normal;
}

#workerInfoTB th {
	background: #f7f7f5;
	border: 0.5px solid #d7d7d7;
    width: 200px;
}

#top_tr th{
	position: sticky;
	top: 0px;
}
.btn {
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

.btn:hover {
	background-color: #2EE59D;
	box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
	color: #fff;
	transform: translateY(-7px);
}

.btnDiv_01 {
	display: inline-block;
	align-items: center;
	justify-content: center;
	left : 45%;
	top : 90%;
}

#offer_Btn {
	background-color: #72B08E;
	color: white;
	border: none;
	width: auto;
	height: 30px;
}


#offer_Btn:hover {
	background-color: #4E7861;
	box-shadow: 1px 1px 1px 1px #3C5C4A;
}

#offer_Btn:active {
	text-shadow: 6px 2px 2px black;
}

.btnDiv_02 {
	display: inline-block;
	align-items: center;
	justify-content: center;
	left : 45%;
	top : 90%;
}

p {
	color: red;
	font-size: 14px;
}
</style>
<body onload="loadon();">
    <jsp:include page="top_menu.jsp" />
    <jsp:include page="floating_module.jsp" />
    <jsp:include page="boCheck_module.jsp" />
	<main>
    <div class="mainDiv">
      <div class="div1">
        <div class="div1_textArea"><h2>그룹 등록 및 삭제</h2></div>
      </div>
      <div class="div2">
        <div class="div_2_back">
        	<div class="div2_1">
          <div class="div2_1_1">
            <h2 id="div2_1_1_h2">그룹 목록 및 등록</h2>
            <button id="offer_Btn" onclick="location.href='getOffer.do'">가입 제의 확인</button>
          </div>
          <div class="div2_1_2">
	          <div class="inputTBDiv">
		          <form action="newAci.do" name="form_Aci" id="form_Aci">
			          <table id="inputTB">
					            <tr id="top_tr">
					            	<th></th>
						 			<th>업체명</th>
						 			<th>사업자번호</th>
						 			<th>대표자명</th>
						 			<th>대표 번호</th>
						 			<th>핸드폰번호</th>
						 			<th>이메일</th>
						 		</tr>
								<%if(newAsslist.size()==0){%>
							    <% }else{%>
								<%for(int i = 0 ; i < newAsslist.size(); i++){ %>				
								<tr>
									<td><input type="checkbox" value="<%=newAsslist.get(i).getUsRn() %>" name="new_chkUsRn" id="new_chkUsRn"/></td>
									<td><%=newAsslist.get(i).getCpName() %></td>
									<td><%=newAsslist.get(i).getBoNumber() %></td>
									<td><%=newAsslist.get(i).getBoName() %></td>
									<td><%=newAsslist.get(i).getBoPhone() %></td>
									<td><%=newAsslist.get(i).getBoCell() %></td>
									<td><%=newAsslist.get(i).getBoMail() %></td>
								</tr>
								<%}	} %>
								
				            </table>
		          </form>
		          <div class="btnDiv_01">
			      	<input type="button" class="btn" value="가입 신청" onclick="conFirm_Forms(0)"/>
			      </div>
	          </div>
          </div>
          
        </div>
        <div class="div2_2">
          <div class="div2_2_1">
          <div class="inputTBDiv">
	          <form action="delGroupAction.do" id="form_del" name="form_del" onsubmit="return confirm('정말로 탈퇴 하시겠습니까?');">
	          		<table id="workerInfoTB">
		              <tr id="top_tr">
		                <th></th>
		                <th>업체명</th>
		                <th>사업자번호</th>
		                <th>대표자명</th>
		                <th>대표 번호</th>
		                <th>핸드폰번호</th>
		                <th>이메일</th>
		              </tr>
			<%if(nowAsslist==null||nowAsslist.size()==0){ %>
			<%}else{for(int i = 0 ; i < nowAsslist.size(); i++){ %>
					<tr>
						<td><input type="checkbox" value="<%=nowAsslist.get(i).getUsRn() %>" name="del_chkUsRn" id="del_chkUsRn"/></td>
						<td><%=nowAsslist.get(i).getCpName() %></td>
						<td><%=nowAsslist.get(i).getBoNumber() %></td>
						<td><%=nowAsslist.get(i).getBoName() %></td>
						<td><%=nowAsslist.get(i).getBoPhone() %></td>
						<td><%=nowAsslist.get(i).getBoCell() %></td>
						<td><%=nowAsslist.get(i).getBoMail() %></td>
					</tr>
			<%}}%>
		          </table>
		      </form>
		      <div class="btnDiv_02">
	          		<input type="button" class="btn" value="삭제" onclick="conFirm_Forms(1)"/>
	          </div>
		      <p>※ 탈퇴 후 재가입 가능합니다.</p>
	      </div>

          </div>
        </div>
        </div>
      </div>
      <div class="div3">
      </div>
    </div>
  </main>
</body>
</html>