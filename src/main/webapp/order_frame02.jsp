<%@page import="com.HEProject.he.workInfo.WorkerInfoVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%List<WorkerInfoVO> list = (List)request.getAttribute("list"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>발주 사용자</title>
</head>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="/js/main.js?ver=10" ></script>
<script type="text/javascript">
function sendInfo(num) {
	parent.info_num02 = num;
	parent.insert_val02();
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
			<th>이름</th>
			<th>연락처</th>
			<th>차량 종류</th>
			<th>차량 분류</th>
			<th>차량 옵션</th>
		</tr>
		<%if(list.size()==0||list==null){ %>
		<tr>
			<td colspan="9">해당되는 작업자가 없습니다.</td>
		</tr>
		<%}else{
			for(int i = 0; i < list.size(); i++){
		%>
		<tr style="cursor: pointer;" onclick="sendInfo(<%=i%>)">
			<td>
				<input type="hidden" id="usRn" name="usRn" value="<%=list.get(i).getUsRn()%>"/>
				<input type="hidden" id="userName" name="userName" value="<%=list.get(i).getUserName()%>"/>
				<input type="hidden" id="userCell" name="userCell" value="<%=list.get(i).getUserCell()%>"/>
				<input type="hidden" id="equipType" name="equipType" value="<%=list.get(i).getEquipType()%>"/>
				<input type="hidden" id="equipClass" name="equipClass" value="<%=list.get(i).getEquipClass()%>"/>
				<input type="hidden" id="equipOption" name="equipOption" value="<%=list.get(i).getEquipOption()%>"/>
				<input type="hidden" id="eqRn" name="eqRn" value="<%=list.get(i).getEqRn()%>"/>
				<%=i+1 %>
			</td>
			<td><%=list.get(i).getUserName() %></td>
			<td><%=list.get(i).getUserCell()%></td>
			<td><%=list.get(i).getEquipType() %></td>
			<td><%=list.get(i).getEquipClass() %></td>
			<td><%=list.get(i).getEquipOption() %></td>
		</tr>		<tr style="cursor: pointer;" onclick="sendInfo(<%=i%>)">
			<td>
				<input type="hidden" id="usRn" name="usRn" value="<%=list.get(i).getUsRn()%>"/>
				<input type="hidden" id="userName" name="userName" value="<%=list.get(i).getUserName()%>"/>
				<input type="hidden" id="userCell" name="userCell" value="<%=list.get(i).getUserCell()%>"/>
				<input type="hidden" id="equipType" name="equipType" value="<%=list.get(i).getEquipType()%>"/>
				<input type="hidden" id="equipClass" name="equipClass" value="<%=list.get(i).getEquipClass()%>"/>
				<input type="hidden" id="equipOption" name="equipOption" value="<%=list.get(i).getEquipOption()%>"/>
				<input type="hidden" id="eqRn" name="eqRn" value="<%=list.get(i).getEqRn()%>"/>
				<%=i+1 %>
			</td>
			<td><%=list.get(i).getUserName() %></td>
			<td><%=list.get(i).getUserCell()%></td>
			<td><%=list.get(i).getEquipType() %></td>
			<td><%=list.get(i).getEquipClass() %></td>
			<td><%=list.get(i).getEquipOption() %></td>
		</tr>		<tr style="cursor: pointer;" onclick="sendInfo(<%=i%>)">
			<td>
				<input type="hidden" id="usRn" name="usRn" value="<%=list.get(i).getUsRn()%>"/>
				<input type="hidden" id="userName" name="userName" value="<%=list.get(i).getUserName()%>"/>
				<input type="hidden" id="userCell" name="userCell" value="<%=list.get(i).getUserCell()%>"/>
				<input type="hidden" id="equipType" name="equipType" value="<%=list.get(i).getEquipType()%>"/>
				<input type="hidden" id="equipClass" name="equipClass" value="<%=list.get(i).getEquipClass()%>"/>
				<input type="hidden" id="equipOption" name="equipOption" value="<%=list.get(i).getEquipOption()%>"/>
				<input type="hidden" id="eqRn" name="eqRn" value="<%=list.get(i).getEqRn()%>"/>
				<%=i+1 %>
			</td>
			<td><%=list.get(i).getUserName() %></td>
			<td><%=list.get(i).getUserCell()%></td>
			<td><%=list.get(i).getEquipType() %></td>
			<td><%=list.get(i).getEquipClass() %></td>
			<td><%=list.get(i).getEquipOption() %></td>
		</tr>		<tr style="cursor: pointer;" onclick="sendInfo(<%=i%>)">
			<td>
				<input type="hidden" id="usRn" name="usRn" value="<%=list.get(i).getUsRn()%>"/>
				<input type="hidden" id="userName" name="userName" value="<%=list.get(i).getUserName()%>"/>
				<input type="hidden" id="userCell" name="userCell" value="<%=list.get(i).getUserCell()%>"/>
				<input type="hidden" id="equipType" name="equipType" value="<%=list.get(i).getEquipType()%>"/>
				<input type="hidden" id="equipClass" name="equipClass" value="<%=list.get(i).getEquipClass()%>"/>
				<input type="hidden" id="equipOption" name="equipOption" value="<%=list.get(i).getEquipOption()%>"/>
				<input type="hidden" id="eqRn" name="eqRn" value="<%=list.get(i).getEqRn()%>"/>
				<%=i+1 %>
			</td>
			<td><%=list.get(i).getUserName() %></td>
			<td><%=list.get(i).getUserCell()%></td>
			<td><%=list.get(i).getEquipType() %></td>
			<td><%=list.get(i).getEquipClass() %></td>
			<td><%=list.get(i).getEquipOption() %></td>
		</tr>		<tr style="cursor: pointer;" onclick="sendInfo(<%=i%>)">
			<td>
				<input type="hidden" id="usRn" name="usRn" value="<%=list.get(i).getUsRn()%>"/>
				<input type="hidden" id="userName" name="userName" value="<%=list.get(i).getUserName()%>"/>
				<input type="hidden" id="userCell" name="userCell" value="<%=list.get(i).getUserCell()%>"/>
				<input type="hidden" id="equipType" name="equipType" value="<%=list.get(i).getEquipType()%>"/>
				<input type="hidden" id="equipClass" name="equipClass" value="<%=list.get(i).getEquipClass()%>"/>
				<input type="hidden" id="equipOption" name="equipOption" value="<%=list.get(i).getEquipOption()%>"/>
				<input type="hidden" id="eqRn" name="eqRn" value="<%=list.get(i).getEqRn()%>"/>
				<%=i+1 %>
			</td>
			<td><%=list.get(i).getUserName() %></td>
			<td><%=list.get(i).getUserCell()%></td>
			<td><%=list.get(i).getEquipType() %></td>
			<td><%=list.get(i).getEquipClass() %></td>
			<td><%=list.get(i).getEquipOption() %></td>
		</tr>		<tr style="cursor: pointer;" onclick="sendInfo(<%=i%>)">
			<td>
				<input type="hidden" id="usRn" name="usRn" value="<%=list.get(i).getUsRn()%>"/>
				<input type="hidden" id="userName" name="userName" value="<%=list.get(i).getUserName()%>"/>
				<input type="hidden" id="userCell" name="userCell" value="<%=list.get(i).getUserCell()%>"/>
				<input type="hidden" id="equipType" name="equipType" value="<%=list.get(i).getEquipType()%>"/>
				<input type="hidden" id="equipClass" name="equipClass" value="<%=list.get(i).getEquipClass()%>"/>
				<input type="hidden" id="equipOption" name="equipOption" value="<%=list.get(i).getEquipOption()%>"/>
				<input type="hidden" id="eqRn" name="eqRn" value="<%=list.get(i).getEqRn()%>"/>
				<%=i+1 %>
			</td>
			<td><%=list.get(i).getUserName() %></td>
			<td><%=list.get(i).getUserCell()%></td>
			<td><%=list.get(i).getEquipType() %></td>
			<td><%=list.get(i).getEquipClass() %></td>
			<td><%=list.get(i).getEquipOption() %></td>
		</tr>		<tr style="cursor: pointer;" onclick="sendInfo(<%=i%>)">
			<td>
				<input type="hidden" id="usRn" name="usRn" value="<%=list.get(i).getUsRn()%>"/>
				<input type="hidden" id="userName" name="userName" value="<%=list.get(i).getUserName()%>"/>
				<input type="hidden" id="userCell" name="userCell" value="<%=list.get(i).getUserCell()%>"/>
				<input type="hidden" id="equipType" name="equipType" value="<%=list.get(i).getEquipType()%>"/>
				<input type="hidden" id="equipClass" name="equipClass" value="<%=list.get(i).getEquipClass()%>"/>
				<input type="hidden" id="equipOption" name="equipOption" value="<%=list.get(i).getEquipOption()%>"/>
				<input type="hidden" id="eqRn" name="eqRn" value="<%=list.get(i).getEqRn()%>"/>
				<%=i+1 %>
			</td>
			<td><%=list.get(i).getUserName() %></td>
			<td><%=list.get(i).getUserCell()%></td>
			<td><%=list.get(i).getEquipType() %></td>
			<td><%=list.get(i).getEquipClass() %></td>
			<td><%=list.get(i).getEquipOption() %></td>
		</tr>		<tr style="cursor: pointer;" onclick="sendInfo(<%=i%>)">
			<td>
				<input type="hidden" id="usRn" name="usRn" value="<%=list.get(i).getUsRn()%>"/>
				<input type="hidden" id="userName" name="userName" value="<%=list.get(i).getUserName()%>"/>
				<input type="hidden" id="userCell" name="userCell" value="<%=list.get(i).getUserCell()%>"/>
				<input type="hidden" id="equipType" name="equipType" value="<%=list.get(i).getEquipType()%>"/>
				<input type="hidden" id="equipClass" name="equipClass" value="<%=list.get(i).getEquipClass()%>"/>
				<input type="hidden" id="equipOption" name="equipOption" value="<%=list.get(i).getEquipOption()%>"/>
				<input type="hidden" id="eqRn" name="eqRn" value="<%=list.get(i).getEqRn()%>"/>
				<%=i+1 %>
			</td>
			<td><%=list.get(i).getUserName() %></td>
			<td><%=list.get(i).getUserCell()%></td>
			<td><%=list.get(i).getEquipType() %></td>
			<td><%=list.get(i).getEquipClass() %></td>
			<td><%=list.get(i).getEquipOption() %></td>
		</tr>		<tr style="cursor: pointer;" onclick="sendInfo(<%=i%>)">
			<td>
				<input type="hidden" id="usRn" name="usRn" value="<%=list.get(i).getUsRn()%>"/>
				<input type="hidden" id="userName" name="userName" value="<%=list.get(i).getUserName()%>"/>
				<input type="hidden" id="userCell" name="userCell" value="<%=list.get(i).getUserCell()%>"/>
				<input type="hidden" id="equipType" name="equipType" value="<%=list.get(i).getEquipType()%>"/>
				<input type="hidden" id="equipClass" name="equipClass" value="<%=list.get(i).getEquipClass()%>"/>
				<input type="hidden" id="equipOption" name="equipOption" value="<%=list.get(i).getEquipOption()%>"/>
				<input type="hidden" id="eqRn" name="eqRn" value="<%=list.get(i).getEqRn()%>"/>
				<%=i+1 %>
			</td>
			<td><%=list.get(i).getUserName() %></td>
			<td><%=list.get(i).getUserCell()%></td>
			<td><%=list.get(i).getEquipType() %></td>
			<td><%=list.get(i).getEquipClass() %></td>
			<td><%=list.get(i).getEquipOption() %></td>
		</tr>		<tr style="cursor: pointer;" onclick="sendInfo(<%=i%>)">
			<td>
				<input type="hidden" id="usRn" name="usRn" value="<%=list.get(i).getUsRn()%>"/>
				<input type="hidden" id="userName" name="userName" value="<%=list.get(i).getUserName()%>"/>
				<input type="hidden" id="userCell" name="userCell" value="<%=list.get(i).getUserCell()%>"/>
				<input type="hidden" id="equipType" name="equipType" value="<%=list.get(i).getEquipType()%>"/>
				<input type="hidden" id="equipClass" name="equipClass" value="<%=list.get(i).getEquipClass()%>"/>
				<input type="hidden" id="equipOption" name="equipOption" value="<%=list.get(i).getEquipOption()%>"/>
				<input type="hidden" id="eqRn" name="eqRn" value="<%=list.get(i).getEqRn()%>"/>
				<%=i+1 %>
			</td>
			<td><%=list.get(i).getUserName() %></td>
			<td><%=list.get(i).getUserCell()%></td>
			<td><%=list.get(i).getEquipType() %></td>
			<td><%=list.get(i).getEquipClass() %></td>
			<td><%=list.get(i).getEquipOption() %></td>
		</tr>
		<%}} %>
	</table>
</body>
</html>