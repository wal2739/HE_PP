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
	function confirm_check(usRn,indexNum) {
		var confirm_index;
		switch (indexNum) {
		case 1:
			confirm_index = confirm('수락 하시겠습니까?');
			break;
		case 2:
			confirm_index = confirm('거절 하시겠습니까?');
			break;
		default:
			break;
		}
		if(confirm_index=true){
			location.href='modifyAci.do?usRn=' + usRn + '&state='+indexNum;
		}else {
			alert('취소 하셨습니다.');
			return false;
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
<body onload="checkModify();">
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
				 			<th></th>
				 			<th></th>
				 		</tr>
				 		<%if(list==null){%>
						<tr>
				 			<td colspan="8">회원이 없습니다.</td>
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
				                <td><button id="check_EQ" onclick="confirm_check('<%=list.get(i).getUsRn()%>',1);">수락</button></td>
				                <td><button id="check_EQ" onclick="confirm_check('<%=list.get(i).getUsRn()%>',2);">거절</button></td>
			               </tr>
							<!--  -->
						<%}%>
						<tr id="btm_tr">
				 			<th colspan="8"><%=list.size() %></th>
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
	</main>
</body>
</html>