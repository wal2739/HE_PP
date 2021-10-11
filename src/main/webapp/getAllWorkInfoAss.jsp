<%@page import="com.HEProject.he.workInfo.WorkInfoForAssVO"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.HEProject.he.workInfo.WorkInfo_ST0VO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%WorkInfoForAssVO vo = (WorkInfoForAssVO)request.getAttribute("vo"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작업 상세 정보</title>
</head>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<style>
* { 
  font-family: 'Spoqa Han Sans Neo', 'sans-serif'; 	
}
body {
	height: 300px;
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
</style>
<body>
	<div>
		<table>
			<tr>
				<th colspan="8"><b>작업 정보</b></th>
			</tr>
			<tr>
				<th>현장명</th>
				<td colspan="3"><%=vo.getWorkField() %></td>
				<th>필요 차량</th>
				<td colspan="3"><%=vo.getRv() %></td>
			</tr>
			<tr>
				<th>현장 책임자</th>
				<td><%= vo.getFieldManager()%></td>
				<th>현장 책임자 <br />전화번호</th>
				<td><%= vo.getFieldManagerPhone()%></td>
				<th>현장 책임자 <br />핸드폰</th>
				<td><%= vo.getFieldManagerCell()%></td>
				<th>현장 책임자 <br />메일 주소</th>
				<td><%= vo.getFieldManagerMail()%></td>
			</tr>
			<tr>
				<th>현장 주소</th>
				<td colspan="3" style="height: 50px;"><%= vo.getFieldAdd01()%></td>
				<th>현장 상세 주소</th>
				<td colspan="3" style="height: 50px;"><%= vo.getFieldAdd02()%></td>
			</tr>
			<%DecimalFormat formatter = new DecimalFormat("###,### 원");%>
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
				<th colspan="8"><b>거래처 정보</b></th>
			</tr>
			<tr>
				<th>거래처 명</th>
				<td><%=vo.getClientCpName() %></td>
				<th>거래처 담당자</th>
				<td><%=vo.getClientManager() %></td>
				<th>거래처 전화번호</th>
				<td><%=vo.getClientPhone() %></td>
				<th>거래처 핸드폰번호</th>
				<td><%=vo.getClientCell()==null ? "없음" : vo.getClientCell()%></td>
			</tr>
			<tr>
				<th colspan="8">작업자 및 차량 정보</th>
			</tr>
			<%if(vo.getIndiUsRn()==null){%>
			<tr><td colspan="8"><b>미발주</b></td></tr>
			<%}else { %>
			<tr>
				<th>작업자</th>
				<td><%=vo.getIndiName() %></td>
				<th>작업자 연락처</th>
				<td><%=vo.getIndiCell() %></td>
				<th>작업자 메일</th>
				<td><%=vo.getIndiMail() %></td>
				<th>작업자 ID</th>
				<td><%=vo.getIndiId() %></td>
			</tr>
			<tr>
				<th>차량 번호</th>
				<td><%=vo.getEquipnum() %></td>
				<th>차량 종류</th>
				<td><%=vo.getEquiptype() %></td>
				<th>차량 분류</th>
				<td><%=vo.getEquipclass() %></td>
				<th>차량 옵션</th>
				<td><%=vo.getEquipoption() %></td>
			</tr>			
			<%} %>
		</table>
	</div>
</body>
</html>