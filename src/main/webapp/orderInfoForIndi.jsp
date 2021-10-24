<%@page import="java.text.DecimalFormat"%>
<%@page import="com.HEProject.he.orderInfo.OrderInfoForIndiVO"%>
<%@page import="com.HEProject.he.orderInfo.impl.OrderInfoForIndiRowMapper"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%List<OrderInfoForIndiVO> list = (List)request.getAttribute("list"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작업 의뢰 정보</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="/js/main.js?ver=1" ></script>
<link rel="stylesheet" href="/css/main.css?ver=22">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="/js/main.js?ver=10" ></script>
<script type="text/javascript">

	var globalNum = 0;
	function getOrderInfo(codeNum) {
		document.getElementById('workInfo').setAttribute('src','orderInfo.do?orderCode='+codeNum);
	}
	function sOrd(iNum,codeNum) {
		var confirmTF;
		if(iNum==0){
			confirmTF = confirm('거절하시겠습니까?');
			switch (confirmTF) {
			case true:
				location.href='modifyOrder.do?orderCode='+codeNum+'&appStatus='+'0';
				break;
			case false:
				alert('취소 하셨습니다.');
				return false;
				break;
			default:
				alert('정상적인 요청이 아닙니다.');
				break;
			}
		}else{
			confirmTF = confirm('수락하시겠습니까?');
			switch (confirmTF) {
			case true:
				location.href='modifyOrder.do?orderCode='+codeNum+'&appStatus='+'1';
				break;
			case false:
				alert('취소 하셨습니다.');
				return false;
				break;
			default:
				alert('정상적인 요청이 아닙니다.');
				break;
			}
		}
		
	}
	function loadOn() {
		
		var orderMDF=<%=request.getAttribute("orderMDF")%>;
		if(orderMDF==null){
			
		}else if(orderMDF==0){
			alert('작업을 거절 했습니다.');
			location.href='orderInfoForIndi.do';
		}else if(orderMDF==1){
			alert('작업을 수락 했습니다.');
			location.href='orderInfoForIndi.do';
		}else if(orderMDF==2){
			alert('작업 정보가 정상적으로 업데이트 되지 않았습니다. 다시 시도 해주세요.');
			location.href='orderInfoForIndi.do';
		}else {
			alert('비정상적인 요청 입니다.');
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
  height: 1600px;
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
  height: 70%;
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
#workInfo {
	width: 100%;
	height: 75%;
}
.table_btn {
	text-align: center;
}
.table_btn img{
	display: inline-block;
	width: 20px;
	height: 20px;
}
.table_btn img::hover{
	background-color: #000;
	filter : drop-shadow(5px 5px 5px #000);
	transform: translateY(-7px);
	
}
</style>
<body onload="loadOn();">
	<jsp:include page="top_menu.jsp" />
	<jsp:include page="floating_module.jsp" />
	<jsp:include page="boCheck_module.jsp" />
	<main>
    <div class="mainDiv">
      <div class="div1">
        <div class="div1_textArea"><h2>작업 정보</h2></div>
      </div>
      <div class="div2">
        <div class="div_2_back">
        	<div class="div2_1">
          <div class="div2_1_1">
            <h2 id="div2_1_1_h2">의뢰 작업 목록</h2>
          </div>
          <div class="div2_1_2">
          		<table id="inputTB">
		            <tr id="top_tr">
		            	<th></th>
		            	<th>현장명</th>
		            	<th>중계 업체</th>
			 			<th>거래 업체</th>
			 			<th>필요 차량</th>
			 			<th>작업 날짜</th>
			 			<th>현장 주소</th>
			 			<th>현장 상세주소</th>
			 			<th>작업 금액</th>
			 			<th>수락/거절</th>
			 		</tr>
			 		<%
			 		int amount = 0;
					DecimalFormat formatter = new DecimalFormat("###,### 원");
					if(list.size()==0){%>
					<tr>
			 			<td colspan="10">작업이 없습니다.</td>
			 		</tr>
					<%}else{
						for(int i = 0 ; i < list.size(); i++){%>
						<tr onclick="getOrderInfo('<%=list.get(i).getOrderCode()%>');">
							<td><%=i+1 %></td>
		                	<td><%=list.get(i).getWorkField() %></td>
		                	<td><%=list.get(i).getCpName() %></td>
			                <td><%=list.get(i).getClientCpName() %></td>
			                <td><%=list.get(i).getEquipType() %></td>
			                <td><%=list.get(i).getWorkDate() %></td>
			                <td><%=list.get(i).getFieldAdd01() %></td>
			                <td><%=list.get(i).getFieldAdd02() %></td>
			                <td><%=formatter.format(list.get(i).getWorkAmount()) %></td>
			                <td>
			                	<div class="table_btn">
			                	<img src="/image/accept_btn.png" alt="수락 버튼" onclick="return sOrd(1,'<%=list.get(i).getOrderCode()%>');"/>
			                	<img src="/image/refuse_btn.png" alt="거절 버튼" onclick="return sOrd(0,'<%=list.get(i).getOrderCode()%>');"/>
			                	</div>
			                </td>
		               </tr>
						<!--  -->
					<%amount = amount + list.get(i).getWorkAmount();}} %>
		            <tr id="btm_tr">
			 			<th>
			 				<%if(list.size()==0){ %>
			 				작업 없음
			 				<%}else { %>
			 				총 작업 : <%=list.size() %>
			 				<%} %>
			 			</th>
			 			<th>-</th>
			 			<th>-</th>
			 			<th>-</th>
			 			<th>-</th>
			 			<th>-</th>
			 			<th>-</th>
			 			<th>합계</th>
			 			<th><%=formatter.format(amount) %></th>
			 			<th></th>
			 		</tr>
	            </table>
          </div>
        </div>
        <div class="div2_2">
          <div class="div2_2_1">
            <p>※ 상세보기를 원하시는 작업을 선택해주세요.</p>
      		<iframe src="" frameborder="0" id="workInfo"></iframe>
      		<p>※ 작업 의뢰 내용은 상시 수정이 가능합니다. 자세한 부분은 중계 업체와 상의 하세요.</p>
			<p>※ 작업은 중계 업체에 의해 일방적으로 수정/삭제가 가능 합니다. 이 부분에 대해서는 해당 중계 업체와 상의하세요.</p>
          </div>
          <div class="div2_2_2">
          	<div class="div2_2_2_btn">
          		<button onclick="location.href='workInfoForIndi.do?uClass=indiUsrn'">뒤로가기</button>
          	</div>
          </div>
        </div>
        </div>
      </div>
      <div class="div3">
      </div>
    </div>

  </main>
	<%-- <h1>작업 의뢰 정보</h1>
	<p>상세보기를 원하시면 클릭해주세요.</p>
	
	<div id="orderList" class="orderList">
		<%if(list.size()==0){ %>
			<p>작업 의뢰가 없습니다.</p>
		<%}else{for(int i = 0 ; i < list.size(); i++){ %>
			<p onclick="getOrderInfo('<%=list.get(i).getOrderCode()%>',<%=i%>);"><%=i+1 %>. 중계자 : <%=list.get(i).getCpName() %> | 작업 의뢰자 : <%=list.get(i).getClientCpName() %> | 필요 차량 : <%=list.get(i).getEquipType() %> | 작업 날짜 : <%=list.get(i).getWorkDate() %> | </p><p id="btnP<%=i%>" style="display: none;"><input type="button" value="수락" onclick=""/> | <input type="button" value="거절" onclick="return sOrd(0,'<%=list.get(i).getOrderCode()%>');"/></p>
			<div id="orderInfo<%=i %>" class="orderInfo<%=i %>"><!-- 작업 의뢰 정보가 들어 와야 함 --></div>
		<%}} %>
	</div>
	<input type="button" value="뒤로가기" onclick="location.href='workInfoForIndi.do?uClass=indiUsrn'"/> --%>
</body>
</html>