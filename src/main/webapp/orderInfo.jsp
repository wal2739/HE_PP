<%@page import="java.text.DecimalFormat"%>
<%@page import="com.HEProject.he.orderInfo.OrderInfoForIndiVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%OrderInfoForIndiVO vo = (OrderInfoForIndiVO)request.getAttribute("vo"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>발주 정보</title>
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
	<h1>발주 상세 보기</h1>
	<table>
		<tr>
			<th colspan="14" style="background: #717171; color: white;">작업 내용</th>
		</tr>
		<%DecimalFormat formatter = new DecimalFormat("###,### 원");%>
		<tr>
			<th>현장명</th>
			<td><%= vo.getWorkField()%></td>
			<th>작업 날짜</th>
			<td><%= vo.getWorkDate()%></td>
			<th>작업 예상 시간</th>
			<td><%= vo.getWorkTime()%></td>
			<th>작업 수당</th>
			<td><%= formatter.format(vo.getWorkAmount())%></td>
			<th rowspan="3">작업장 주소</th>
			<td rowspan="3"><%=vo.getFieldAdd01() %></td>
			<th rowspan="3">작업장 상세 주소</th>
			<td rowspan="3"><%= vo.getFieldAdd02()%></td>
			<th rowspan="3">작업 요청 사항</th>
			<td rowspan="3"><%= vo.getWorkRequests()%></td>
		</tr>
		<tr>
			<th>필요 차량 번호</th>
			<td><%= vo.getEquipNum()%></td>
			<th>필요 차량 종류</th>
			<td><%= vo.getEquipType()%></td>
			<th>필요 차량 분류</th>
			<td><%= vo.getEquipClass()%></td>
			<th>필요 차량 옵션</th>
			<td><%= vo.getEquipOption()%></td>
		</tr>
		<tr>
			<th>작업 담당자</th>
			<td><%= vo.getFieldManager()%></td>
			<th>담당자 핸드폰</th>
			<td><%= vo.getFieldManagerCell()%></td>
			<th>담당자 전화번호</th>
			<td><%= vo.getFieldManagerPhone()%></td>
			<th>담당자 메일</th>
			<td><%= vo.getFieldManagerMail()%></td>
		</tr>
		
		<tr>
			<th colspan="14" style="background: #717171; color: white;">중계 업체 및 거래 업체 정보</th>
		</tr>
		<tr>
			<th colspan="2">중계 업체 회사명</th>
			<td colspan="2"><%=vo.getCpName() %></td>
			<th colspan="2">중계 업체 전화번호</th>
			<td colspan="2"><%=vo.getBoPhone() %></td>
			<th colspan="2">중계 업체 핸드폰번호</th>
			<td colspan="2"><%=vo.getUserCell() %></td>
		</tr>
		<tr>
			<th colspan="2">거래 업체명</th>
			<td colspan="2"><%=vo.getClientCpName() %></td>
			<th colspan="2">거래 담당자</th>
			<td colspan="2"><%=vo.getClientManager() %></td>
			<th colspan="2">거래 업체 전화번호</th>
			<td colspan="2"><%=vo.getClientPhone() %></td>
		</tr>
	</table>
</body>
</html>