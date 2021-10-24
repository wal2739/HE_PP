<%@page import="java.text.DecimalFormat"%>
<%@page import="com.HEProject.he.orderInfo.OrderInfo_st2VO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%
		List<OrderInfo_st2VO> list = null;
		list = (List)request.getAttribute("list");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>발주 관리</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="/css/main.css?ver=22">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="/js/main.js?ver=10" ></script>
<script type="text/javascript">
function getAllWorkInfo(orderCode) {
	window.name="parentForm";
	window.open("getOrderInfo.do?orderCode="+orderCode,"getOrderInfo","width=1250,height=500,resizable=no,scrollbars=yes");
}
function view_iframe(code) {
	document.getElementById('orderInfo').setAttribute('src','getOrderInfo.do?orderCode='+code);
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
  height: 40%;
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
  height: 60%;
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
#orderInfo {
	width: 100%;
	height: 75%;
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
				<h2>발주 정보</h2>
			</div>
		</div>
		<div class="div2">
			<div class="div_2_back">
				<div class="div2_1">
					<div class="div2_1_1">
						<h2 id="div2_1_1_h2">발주 목록</h2>
					</div>
					<div class="div2_1_2">
						<table id="inputTB">
							<tr id="top_tr">
								<th></th>
								<th>현장명</th>
								<th>현장 책임자</th>
								<th>현장 연락처</th>
								<th>현장 주소</th>
								<th>현장 상세주소</th>
								<th>작업 금액</th>
							</tr>
							<%
									int amount = 0;
									DecimalFormat formatter = new DecimalFormat("###,### 원");
									if (list.size() == 0) {
								%>
							<tr>
								<td colspan="9">작업이 없습니다.</td>
							</tr>
							<%
									} else {
										for (int i = 0; i < list.size(); i++) {
								%>
							<tr onclick="view_iframe('<%=list.get(i).getOrderCode()%>');"
								style="cursor: pointer;">
								<td><%=i + 1%></td>
								<td><%=list.get(i).getWorkField()%></td>
								<td><%=list.get(i).getFieldManager()%></td>
								<td><%=list.get(i).getFieldManagerCell()%></td>
								<td><%=list.get(i).getFieldAdd01()%></td>
								<td><%=list.get(i).getFieldAdd02()%></td>
								<td><%=formatter.format(list.get(i).getWorkAmount())%></td>
							</tr>
							<!--  -->
							<%
									amount = amount + list.get(i).getWorkAmount();
										}
									}
								%>
							<tr id="btm_tr">
								<th>
									<%
											if (list.size() == 0) {
										%> 작업 없음 <%
											} else {
										%> 총 작업 : <%=list.size()%> <%}%>
								</th>
								<th></th>
								<th></th>
								<th></th>
								<th></th>
								<th></th>
								<th><%=formatter.format(amount)%></th>
							</tr>
						</table>
					</div>
				</div>
				<div class="div2_2">
					<div class="div2_2_1">
						<p>※ 상세보기를 원하시는 작업을 선택해주세요.</p>
						<iframe src="" frameborder="0" id="orderInfo"></iframe>
						<p>
							※ 발주 후 거절된 작업은 <b>[취소 작업 조회]</b>에서 확인 할 수 있습니다.
						</p>
					</div>
					<div class="div2_2_2">
						<div class="div2_2_2_btn">
							<button onclick="location.href='newOrder.do'">등록 하기</button>
							<button onclick="location.href='delOrder.do'">발주 취소</button>
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