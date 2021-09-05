<%@page import="com.HEProject.he.usersInfo.SearchInfoVO"%>
<%@page import="com.HEProject.he.groupAssInfo.GrouperInfoVO"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.HEProject.he.workInfo.WorkInfo_ST0VO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%SearchInfoVO vo = (SearchInfoVO)request.getAttribute("vo"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 상세 정보</title>
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
				<th colspan="8" style="background: rgba(0,0,0,.15); height: 30px;">회원 정보</th>
			</tr>
			<tr>
				<th>회원 아이디</th>
				<td colspan="3"><%=vo.getUserID() %></td>
				<th>회원 이름 </th>
				<td colspan="3"><%=vo.getUserName() %></td>
			</tr>
			<tr>
				<th>회원 연락처</th>
				<td colspan="3"><%=vo.getUserCell() %></td>
				<th>회원 이메일</th>
				<td colspan="3"><%=vo.getUserEmail() %></td>
			</tr>
			<tr>
				<th colspan="8" style="background: rgba(0,0,0,.15);height: 30px;">회원 사업자 정보</th>
			</tr>
			<tr>
				<th>사업자 번호</th>
				<td><%= vo.getBoNumber()%></td>
				<th>사업자 명</th>
				<td><%= vo.getBoName()%></td>
				<th>사업자 전화번호</th>
				<td><%= vo.getBoPhone()%></td>
				<th>사업자 핸드폰 번호</th>
				<td><%= vo.getBoCell()%></td>
			</tr>
			<tr>
				<th>사업자 주소</th>
				<td style="height: 50px;"><%= vo.getBoAdd01()%></td>
				<th>사업자 상세 주소</th>
				<td style="height: 50px;"><%= vo.getBoAdd02()%></td>
				<th>사업자 계좌 번호</th>
				<td><%= vo.getBoAcc()%></td>
				<th>사업자 계좌 은행</th>
				<td><%= vo.getBoAccBack()%></td>
			</tr>
			<tr>
				<th colspan="8" style="background: rgba(0,0,0,.15);height: 30px;">회원 차량 정보</th>
			</tr>
			<tr>
				<th>차량 번호</th>
				<td>비공개</td>
				<th>차량 종류</th>
				<td><%= vo.getEquipType() %></td>
				<th>차량 분류</th>
				<td><%= vo.getEquipClass() %></td>
				<th>차량 옵션</th>
				<td><%= vo.getEquipOption() %></td>
			</tr>
			<tr>
				<th>비고</th>
				<td colspan="7" style="height: 100px;"></td>
			</tr>
		</table>
	</div>
</body>
</html>