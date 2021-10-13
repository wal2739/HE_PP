<%@page import="com.HEProject.he.workInfo.WorkInfo_ST0VO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%List<WorkInfo_ST0VO> list = (List)request.getAttribute("list");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>order_frame01</title>
</head>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="/js/main.js?ver=10" ></script>
<script type="text/javascript">
	function sendInfo(num) {
		parent.info_num01 = num;
		parent.insert_val01();
	}
</script>
<style>
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
</style>
<body>
	<table id="inputTB">
		<tr id="top_tr">
			<th></th>
			<th>현장명</th>
			<th>현장 책임자</th>
			<th>현장 전화번호</th>
			<th>현장 연락처</th>
			<th>현장 주소</th>
			<th>현장 상세주소</th>
			<th>작업 금액</th>
		</tr>
		<%if(list.size()==0||list==null){ %>
		<tr>
			<td colspan="9">작업이 없습니다.</td>
		</tr>
		<%}else{
			String[] fieldManagerPhone = new String[3];
			String[] fieldManagerCell = new String[3];
			String[] workTime = new String[2];
			String[] clientPhone = new String[3];
			for(int i = 0; i < list.size(); i++){
				fieldManagerPhone = list.get(i).getFieldManagerPhone().split("-");
				fieldManagerCell = list.get(i).getFieldManagerCell().split("-");
				workTime = list.get(i).getWorkTime().split(":");
				clientPhone = list.get(i).getClientPhone().split("-");
		%>
		
		<tr style="cursor: pointer;" onclick="sendInfo(<%=i%>)">
			<td>
				<input type="hidden" readonly="readonly" id="workField" name="workField" value="<%=list.get(i).getWorkField()%>"/>
				<input type="hidden" readonly="readonly" id="fieldManager" name="fieldManager"  value="<%=list.get(i).getFieldManager()%>"/>
				<input type="hidden" readonly="readonly" id="fieldManagerMail" name="fieldManagerMail"  value="<%=list.get(i).getFieldManagerMail()%>"/>			
				<input type="hidden" readonly="readonly" id="fieldManagerPhone01" name="fieldManagerPhone01"  value="<%=fieldManagerPhone[0]%>"/> 
				<input type="hidden" readonly="readonly" id="fieldManagerPhone02" name="fieldManagerPhone02" value="<%=fieldManagerPhone[1]%>"/>
				<input type="hidden" readonly="readonly" id="fieldManagerPhone03" name="fieldManagerPhone03" value="<%=fieldManagerPhone[2]%>"/> 
				<input type="hidden" readonly="readonly" id="fieldManagerCell01" name="fieldManagerCell01" value="<%=fieldManagerCell[0]%>"/>
				<input type="hidden" readonly="readonly" id="fieldManagerCell02" name="fieldManagerCell02" value="<%=fieldManagerCell[1]%>"/>
				<input type="hidden" readonly="readonly" id="fieldManagerCell03" name="fieldManagerCell03" value="<%=fieldManagerCell[2]%>"/>
				<input type="hidden" readonly="readonly" id="fieldAdd01" name="fieldAdd01"  value="<%=list.get(i).getFieldAdd01()%>"/>
				<input type="hidden" readonly="readonly" id="fieldAdd02" name="fieldAdd02"  value="<%=list.get(i).getFieldAdd02()%>"/>
				<input type="hidden" readonly="readonly" id="workDate" name="workDate"  value="<%=list.get(i).getWorkDate()%>"/>
				<input type="hidden" readonly="readonly" id="workTime01" name="workTime01"  value="<%=workTime[0]%>"/>
				<input type="hidden" readonly="readonly" id="workTime02" name="workTime02"  value="<%=workTime[1]%>"/>
				<input type="hidden" readonly="readonly" id="workAmount" name="workAmount"  value="<%=list.get(i).getWorkAmount()%>"/>
				<input type="hidden" readonly="readonly" id="workRequests" name="workRequests"  value="<%=list.get(i).getWorkRequests()%>"/>
				<input type="hidden" readonly="readonly" id="clientCpName" name="clientCpName"  value="<%=list.get(i).getClientCPName()%>"/>
				<input type="hidden" readonly="readonly" id="ClientManager" name="ClientManager"  value="<%=list.get(i).getClientManager()%>"/>
				<input type="hidden" readonly="readonly" id="clientPhone01" name="clientPhone01"  value="<%=clientPhone[0]%>"/>
				<input type="hidden" readonly="readonly" id="clientPhone02" name="clientPhone02"  value="<%=clientPhone[1]%>"/>
				<input type="hidden" readonly="readonly" id="clientPhone03" name="clientPhone03"  value="<%=clientPhone[2]%>"/>
				<input type="hidden" id="workCode" name="workCode" value="<%=list.get(i).getWorkCode()%>"/>
				<input type="hidden" id="rv" name="rv" value="<%=list.get(i).getRv()%>"/>
				<%=i+1 %>
			</td>
			<td><%=list.get(i).getWorkField() %></td>
			<td><%=list.get(i).getFieldManager()%></td>
			<td><%=list.get(i).getFieldManagerPhone() %></td>
			<td><%=list.get(i).getFieldManagerCell() %></td>
			<td><%=list.get(i).getFieldAdd01() %></td>
			<td><%=list.get(i).getFieldAdd02() %></td>
			<td><%=list.get(i).getWorkAmount() %></td>
		</tr>
		<%}} %>
	</table>

</body>
</html>