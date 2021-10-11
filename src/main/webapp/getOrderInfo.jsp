<%@page import="com.HEProject.he.orderInfo.OrderInfo_st2VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%OrderInfo_st2VO vo = (OrderInfo_st2VO)request.getAttribute("vo"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>발주 상세 정보</title>
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
    height: 30px;
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
		<div>
			<table>
				<tr>
					<th colspan="8">작업 정보</th>
				</tr>
				<tr>
					<th>현장명</th>
					<td><%=vo.getWorkField() %></td>
					<th>현장 주소</th>
					<td><%=vo.getFieldAdd01() %></td>
					<th>현장 상세 주소</th>
					<td colspan="3"><%=vo.getFieldAdd02() %></td>
				</tr>
				
				<tr>
					<th>현장 책임자</th>
					<td><%=vo.getFieldManager() %></td>
					<th>현장 책임자 전화번호</th>
					<td><%=vo.getFieldManagerPhone() %></td>
					<th>현장 책임자 핸드폰</th>
					<td><%=vo.getFieldManagerCell() %></td>
					<th>현장 책임자 메일 주소</th>
					<td><%=vo.getFieldManagerMail() %></td>
				</tr>
				<tr>
					<th>작업 날짜</th>
					<td><%=vo.getWorkDate() %></td>
					<th>작업 시간</th>
					<td><%=vo.getWorkTime() %></td>
					<th>작업 수당</th>
					<td><%=vo.getWorkAmount() %></td>
					<th>요청 사항</th>
					<td><%=vo.getWorkRequests() %></td>
				</tr>
				<tr>
					<th>거래처 명</th>
					<td><%=vo.getClientCpName() %></td>
					<th>거래처 담당자</th>
					<td><%=vo.getClientManager() %></td>
					<th>거래처 전화번호</th>
					<td colspan="3"><%=vo.getClientPhone() %></td>
				</tr>
				<tr>
					<th>비고</th>
					<td colspan="7"><%=vo.getRelative()==null ? "-" : vo.getRelative() %></td>
				</tr>
				<tr>
					<th colspan="8">발주 정보</th>
				</tr>
				<tr>
					<th>작업자 이름</th>
					<td colspan="2"><%=vo.getUserName() %></td>
					<th>작업자 아이디</th>
					<td colspan="2"><%=vo.getUserId() %></td>
					<th>작업자 연락처</th>
					<td colspan="2"><%=vo.getUserCell() %></td>
				</tr>
				<tr>
					<th>장비 종류 </th>
					<td colspan="2"><%=vo.getEquipType() %></td>
					<th>장비 분류</th>
					<td colspan="2"><%=vo.getEquipClass() %></td>
					<th>장비 옵션</th>
					<td colspan="2"><%=vo.getEquipOption() %></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>