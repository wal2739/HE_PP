<%@page import="com.HEProject.he.workDataInfo.WorkDataInfoVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%WorkDataInfoVO vo = (WorkDataInfoVO)request.getAttribute("vo"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>증빙 자료</title>
</head>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<style>
* { 
  font-family: 'Spoqa Han Sans Neo', 'sans-serif'; 	
}
body {
	width: 650px;
	height: 760px;
	text-align: center;
	align-content: center;
	font-family: 'Rubik', sans-serif;
	margin: 0;
	padding: 0;
	background: url("/image/bg_body.png") repeat center;
	-webkit-background-size: cover;
	background-size: cover;
	background-position: center center;
	background-repeat: repeat;
}
body:after {
	background: rgba(255,255,255,0.5);
}

.imgDIV {
	width: 80%;
	height: 70%;
	size: auto;
	text-align: center;
	display: inline-block;
}
.imgDIV img {
	display : inline-block;
	width: auto;
	height: 100%;
}
.btnArea {
	top: 20%;
}
.btnArea button{
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

.btnArea button:hover {
	background-color: #2EE59D;
	box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
	color: #fff;
	transform: translateY(-7px);
}
</style>
<body onload="">
	<!-- 추후 사이즈 조정 필요함-->
	<h1>증빙자료 보기/다운로드</h1>
	<div class="imgDIV" id="imgDIV">
		<img src="../workDataUpload/<%=vo.getDtName() %>" id="workDataIMG" name="workDataIMG" alt="증빙 사진[<%=vo.getDtName()%>]"/>
	</div>
	<div class="btnArea">
		<button onclick="window.close();">닫기</button>
		<button onclick="location.href='workDataDownload.do?dtName=<%=vo.getDtName()%>'">다운로드</button>
	</div>
</body>
</html>