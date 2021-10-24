<%@page import="com.HEProject.he.vehicleInfo.VehicleVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%
    	List<VehicleVO> list = (List)request.getAttribute("vehicleInfo");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>차량 등록 현황</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="/js/main.js?ver=1" ></script>
<link rel="stylesheet" href="/css/main.css?ver=16">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript">
	function delCheck(rowNum) {
		var equipNum = document.getElementById('equipNum'+rowNum).value;
		var oneCheck =confirm("차량 정보는 한번 삭제하시면 같은 차량 번호로 다시 등록 하실 수 없습니다. 정말 삭제 하시겠습니까 ?");
		if(oneCheck==true){
			var twoCheck =confirm("정말 삭제 하시겠습니까 ? (확인을 누르시면 삭제가 완료됩니다.)");
			if(twoCheck==true){
				location.href='deleteVehicle.do?EquipNum=' + equipNum;
			}else{
				alert('삭제가 취소 되었습니다.');
			}
		}else{
			alert('삭제가 취소 되었습니다.');			
		}
		
	}
	function modCheck(rowNum) {
		var checkId = 'equipNum' + rowNum;
		var equipNum = document.getElementById(checkId).value;
		var oneCheck =confirm("[차량번호 : "+ equipNum +"] 해당 차량 정보를 수정하시겠습니까?");
		if(oneCheck==true){
			location.href='modifyVehicle.do?EquipNum=' + equipNum + '&EquipNumSv=' + equipNum;
		}else{
			alert('수정이 취소 되었습니다.');			
		}
		
	}
	function loadCheck() {
		var newVehicleCheck = <%=request.getAttribute("newVehicleCheck")%>;
		var modVehicleCheck = <%=request.getAttribute("modVehicleCheck")%>;
		var delVehicleCheck = <%=request.getAttribute("delVehicleCheck")%>;
		if(newVehicleCheck==null&&modVehicleCheck==null&&delVehicleCheck==null){
			console.log('null');
		}else {
			if(newVehicleCheck==1){
				alert('차량정보가 정상적으로 등록되었습니다.');
			}
			if(newVehicleCheck==0){
				alert('차량정보가 정상적으로 등록되지 않았습니다. 다시 시도 해주세요.');
			}
			if(newVehicleCheck==2){
				alert('이미 등록된 차량 번호입니다. 다시 등록해주세요.')
			}
			if(modVehicleCheck==1){
				alert('차량정보가 정상적으로 수정 되었습니다.');
			}
			if(modVehicleCheck==0){
				alert('차량정보가 정상적으로 수정되지 않았습니다. 다시 시도 해주세요.');
			}
			if(delVehicleCheck==1){
				alert('차량정보가 정상적으로 삭제 되었습니다.');
			}
			if(delVehicleCheck==0){
				alert('차량정보가 정상적으로 삭제 되지 않았습니다. 다시 시도 해주세요.');
			}
			location.href="showVehicleInfo.do";
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
  overflow: hidden;
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
}
#inputTB {
    width: 100%;
    height : auto;
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
  width: 80%;
  height: 70%;
  overflow-y: auto;
  overflow-x: hidden;
  margin : 0 auto 0 auto;
  border-top: 0.5px solid black;
}
.div2_2_1 {
  width: 100%;
  height: 80%;
  overflow-y: scroll;
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
	border: none;
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

.btnDiv {
	display: flex;
	align-items: center;
	justify-content: center;
}

p {
	color: red;
	font-size: 7px;
}
</style>
<body onload="loadCheck();">
    <jsp:include page="top_menu.jsp" />
    <jsp:include page="floating_module.jsp" />
    <jsp:include page="boCheck_module.jsp" />
<main>
    <div class="mainDiv">
      <div class="div1">
        <div class="div1_textArea"><h2>차량 등록/삭제</h2></div>
      </div>
      <div class="div2">
      <div class="div_2_back">
      	<div class="div2_1">
          <div class="div2_1_1">
            <h2 id="div2_1_1_h2">차량 등록</h2>
          </div>
          <div class="div2_1_2">
          <form action="newVehicle.do" name="forms" id="forms" onsubmit="checkAll();">
            <table id="inputTB">
              <tr>
	 			<th>차량번호</th>
	 			<td>
	 				<input type="text" name="EquipNum" id="EquipNum" maxlength="8"/>
	 			</td>
	 			<th>차량 종류</th>
	 			<td>
	 				<input type="text" readonly="readonly" name="EquipType" id="EquipType" required="required"/>
	 				<input type="button" value="차종검색" onclick="EquipType01();"/>
	 			</td>
	 		</tr>
	 		<tr>
	 			<th>상세 분류</th>
	 			<td>
	 				<input type="text" readonly="readonly" name="EquipClass" id="EquipClass" required="required"/>
	 				<input type="button" id="EquipClassBtn" value="분류검색" onclick="EquipClass01();" />
	 			</td>
	 			<th>차량 옵션</th>
	 			<td>
	 				<input type="text" readonly="readonly" name="EquipOption" id="EquipOption"/>
	 				<input type="button" id="EquipOptionBtn" value="옵션검색" onclick="EquipOption01();"/>
	 			</td>
	 		</tr>

	 		<tr>
	 			<th>차량 등록일</th>
	 			<td>
	 				<input type="date" name="EquipRD01" id="EquipRD01" placeholder="클릭하면 달력이 생성됩니다."/>
	 				<!-- <script>
				        $(function () {
				            $("#EquipRD01").datepicker();
				        });
				    </script> -->
	 			</td>
	 			<th>차량 검사일</th>
	 			<td>
		 			<input type="date" id="EquipID01" name="EquipID01" placeholder="클릭하면 달력이 생성됩니다." />
		 			<!-- <script>
				        $(function () {
				            $("#EquipID01").datepicker();
				        });
				    </script>	 -->
			    </td>
	 		</tr>

            </table>
            <div class="btnDiv">
              <input type="submit" class="btn" value="등록" />
            </div>
            </form>
          </div>
          
        </div>
        <div class="div2_2">
          <div class="div2_2_1">
            <table id="inputTB">
              <tr id="top_tr">
                <th></th>
                <th>차량번호</th>
                <th>차량종류</th>
                <th>상세분류</th>
                <th>차량옵션</th>
                <th>차량등록일</th>
                <th>차량검사일</th>
                <th>미구현(접속가능)</th>
                <th></th>
              </tr>
            <%if(list==null){ %>
			<%}else {if(list.size()==0){ %>
			<%}else {for(int i = 0 ; i < list.size(); i++){ %>
			<tr>
				<td><b><%=i+1 %></b></td>
				<td>
					<input type="hidden" id="equipNum<%=i %>" value="<%=list.get(i).getEquipNum() %>"/><%=list.get(i).getEquipNum() %>
				</td>
				<td><%=list.get(i).getEquipType() %></td>
				<td><%=list.get(i).getEquipClass() %></td>
				<td><%=list.get(i).getEquipOption() %></td>
				<td><%=list.get(i).getEquipRD() %></td>
				<td><%=list.get(i).getEquipID() %></td>
				<td><input type="button" value="수정" onClick="modCheck(<%=i%>);"/></td>
				<td><input type="button" value="삭제" onClick="delCheck(<%=i%>);"/></td>
			</tr>
			<%}}}%>
            </table>
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