<%@page import="com.HEProject.he.grouperEquipInfo.GrouperEquipInfoVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%List<GrouperEquipInfoVO> list = (List)request.getAttribute("list");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>차량 확인</title>
</head>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<style>
* { 
  font-family: 'Spoqa Han Sans Neo', 'sans-serif'; 	
}
body {
	align-items : center;
	text-align : center;
	height: 300px;
    background: url("/image/bg_body.png") repeat center;
}
div {
	padding: 20px 20px 20px 20px;
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

button{
	display : inline-block;
	background-color: #72B08E;
	color: white;
	border: none;
	width: auto;
	height: 30px;
}

button:hover {
	background-color: #4E7861;
	box-shadow: 1px 1px 1px 1px #3C5C4A;
}

button:active {
	text-shadow: 4px 2px 2px black;
}
</style>
<body>
	<h1 style="display: inline-block; margin: auto;">차량 확인</h1>
	<div>
		<table>
			<%if(list.size()==0||list==null){%>
				<tr><th>자료가 없습니다.</th></tr>
			<%}else{%>
				<tr><th colspan="6"><%=list.get(0).getUserId() %> 님의 차량 정보</th></tr>
				<tr>
					<th>차량 번호</th>
					<th>차량 종류</th>
					<th>차량 분류</th>
					<th>차량 옵션</th>
					<th>차량 등록일</th>
					<th>차량 검사일</th>
				</tr>
			<%for(int i = 0 ; i < list.size(); i++){%>
				<tr>
					<td><%=list.get(i).getEquipNum() %></td>
					<td><%=list.get(i).getEquipType() %></td>
					<td><%=list.get(i).getEquipClass() %></td>
					<td><%=list.get(i).getEquipOption() %></td>
					<td><%=list.get(i).getEquipRD() %></td>
					<td><%=list.get(i).getEquipID() %></td>
				</tr>
			<%}} %>
		</table>
	</div>
	<div style="display: inline-block; align-items: center; width: 80%;">
		<button onclick="window.close();">닫기</button>
	</div>
</body>
</html>