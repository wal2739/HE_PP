<%@page import="com.HEProject.he.clientInfo.ClientInfoVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	List<ClientInfoVO> list = (List) request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>거래처 정보</title>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="/css/main.css?ver=22">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="/js/main.js?ver=10"></script>
<script type="text/javascript">
function ModifyCliCheck() {


		var modCliCheck = <%=request.getAttribute("modCliCheck")%>;
		if (modCliCheck == null) {

		} else if (modCliCheck == 0) {
			alert('정상적으로 거래처 등록이 진행되지 않았습니다. 잠시 후 다시 시도해주세요.');
			return location.href = "showClient.do";
		} else if (modCliCheck == 1) {
			alert('거래처 등록이 정상적으로 처리 되었습니다.');
			return location.href = "showClient.do";
		} else {
			alert('정상적인 요청이 아닙니다.');
			return location.href = "showClient.do";
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
.mainDiv {
	width: 100%;
	height: 100%;
}

.div1 {
	border-bottom: 0.5px solid #d7d7d7;
	height: 70px;
	width: 100%;
	display: inline-block;
}

.div1_textArea {
	padding-left: 100px;
	padding-top: 10px;
	margin-left: 10%;
}

.div2 {
	display: inline-block;
	width: 100%;
	height: 1200px;
	text-align: center;
}

.div_2_back {
	display: inline-block;
	width: 70%;
	height: 70%;
	background: rgba(255, 255, 255, .75);
}

.div2_1 {
	width: 80%;
	height: 85%;
	overflow: auto;
	margin: 0 auto 30px auto;
}

.div2_1_1 {
	width: 100%;
	height: 50px;
}

#div2_1_1_h2 {
	display: inline-block;
	margin: 10px;
}

.div2_1_2 {
	width: 100%;
	height: calc(100% - 50px);
	overflow: auto;
}

.inpuTBDiv {
	width: 100%;
	height: calc(100% -30px);
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

#inputTB td {
	width: 300px;
	border: 0.5px solid #d7d7d7;
	white-space: normal;
}

#top_tr th {
	position: sticky;
	top: 0px;
}

#btm_tr th {
	position: sticky;
	bottom: 0;
}

.div2_2 {
	width: 85%;
	height: 15%;
	margin: 0 auto 0 auto;
	border-top: 0.5px solid black;
}

.div2_2_1 {
	width: 100%;
	height: 100%;
}

.div2_2_2 {
	width: 100%;
	height: 40%;
	padding-left: 3px;
	padding-top: 5px;
}

.div3 {
	display: inline-block;
	width: 100%;
	height: 200px;
}

#sbt_btn {
	width: 100px;
	height: 25px;
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
	margin: 0 auto;
}

#sbt_btn:hover {
	background-color: #2EE59D;
	box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
	color: #fff;
	transform: translateY(-7px);
}

.div2_2_2_btn {
	top: 20%;
}

.div2_2_2_btn button {
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
</style>

<body onload="ModifyCliCheck();">
	<jsp:include page="top_menu.jsp" />
	<jsp:include page="floating_module.jsp" />
	<jsp:include page="boCheck_module.jsp" />
	<main>
	<div class="mainDiv">
		<div class="div1">
			<div class="div1_textArea">
				<h2>거래처 관리</h2>
			</div>
		</div>
		<div class="div2">
			<div class="div_2_back">
				<div class="div2_1">
					<div class="div2_1_1">
						<h2 id="div2_1_1_h2">거래처 목록</h2>
					</div>
					<div class="div2_1_2">
		          		<table id="inputTB">
				            <tr id="top_tr">
			            		<th></th>
				            	<th>거래처</th>
					 			<th>담당자</th>
					 			<th>대표번호</th>
					 			<th>핸드폰번호</th>
					 			<th>이메일</th>
					 			<th>주소</th>
					 			<th>상세 주소</th>
					 			<th>사업자번호</th>
					 		</tr>
							<%if(list.size()==0||list==null){%>
							<tr>
								<td colspan="9">등록된 거래처가 없습니다.</td>
							</tr>		 		
							<%}else{for(int i = 0 ; i < list.size(); i++){%>
							<tr>
								<td><%=i+1 %></td>
								<td><%=list.get(i).getClientCpName() %></td>
								<td><%=list.get(i).getClientManager() %></td>
								<td><%=list.get(i).getClientPhone() %></td>
								<td><%=list.get(i).getClientCell() %></td>
								<td><%=list.get(i).getClientMail() %></td>
								<td><%=list.get(i).getClientAdd01() %></td>
								<td><%=list.get(i).getClientAdd02() %></td>
								<td><%=list.get(i).getClientBoNumber() %></td>
							</tr>
							<%}%>
							<tr id="btm_tr">
					 			<th colspan="9" style="height: 30px; align-items: center;"><%=list.size() %></th>
					 		</tr>
					 		<%}%> 
				 		</table>
					</div>
				</div>
				<div class="div2_2">
					<div class="div2_2_1">
						<div class="div2_2_2_btn">
							<button onclick="location.href='newClient.do'">거래처 추가</button>
							<button onclick="location.href='delClient.do'">거래처 삭제</button>
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