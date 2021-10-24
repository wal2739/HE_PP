<%@page import="com.HEProject.he.workInfo.WorkInfo_ST0VO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%String workCode = (String)request.getAttribute("wCode"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>증빙자료 등록</title>
</head>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="/js/main.js" ></script>
<script type="text/javascript">
	function sltWork(workCode) {
		document.getElementById("workList").innerHTML = "";
		document.getElementById("workCode").value = workCode;
		console.log(document.getElementById("workCode").value);
	}
	
	function loadOn() {
		var uploadChk = <%=request.getAttribute("uploadChk")%>;
		switch (uploadChk) {
		case null:
			break;
		case 0:
			alert('증빙자료가 정상적으로 등록되지 않았습니다. 다시 시도해주세요.');
			break;
		case 1:
			alert('증빙자료가 정상적으로 등록었습니다. ');
			opener.parent.location.href='finishedWorkList.do';
			window.close();
			break;
		default:
			break;
		}
	}
	function fileUpload(fis) {
		var str = fis.value;
		document.getElementById('filename_p').innerHTML = " 선택된 파일 : " + fis.value.substring(str.lastIndexOf("\\")+1);
	}
	function check_file() {
		if(document.getElementById('uploadFile').value==''){
			alert('증빙 자료를 선택 해주세요.');
			return false;
		}
	}
</script>
<style>
* { 
  font-family: 'Spoqa Han Sans Neo', 'sans-serif'; 	
}
body {
	height: 300px;
	font-family: 'Rubik', sans-serif;
	margin: 0;
	padding: 0;
	background: url("/image/bg_body.png") repeat center;
	-webkit-background-size: cover;
	background-size: cover;
	background-position: center center;
	background-repeat: repeat;
	text-align: center;
}
body:after {
	background: rgba(255,255,255,0.5);
}

p {
	color: black;
}
.btnArea {
	width : calc(100%-40px);
	height : 50%;
	padding : 20px;
	text-align: center;
	align-items: center;
	background: rgba(255,255,255,0.7);
}
.submit_btn{
	display : inline-block;
	margin : 0 auto;
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

.btnArea input:hover {
	background-color: #2EE59D;
	box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
	color: #fff;
	transform: translateY(-7px);
}
#label_upload {
	display: inline-block;
	padding: .5em .75em; 
	color: black; 
	font-size: inherit;
	line-height: normal; 
	vertical-align: middle; 
	background-color: white; 
	cursor: pointer; 
	border: 1px solid #ebebeb; 
	border-radius: .25em;
}

#label_upload:hover {
	box-shadow: 2px 2px 2px 2px;
}
.uploadInput {
	position: absolute; 
	width: 1px;
	height: 1px; 
	padding: 0; 
	margin: -1px; 
	overflow: hidden; 
	clip:rect(0,0,0,0); 
	border: 0;
}

</style>
<body onload="loadOn();">
	<jsp:include page="boCheck_module.jsp" />
	<form action="WorkDataUpload.do" method="post" enctype="multipart/form-data" onsubmit="return check_file();">
		<h1>증빙 자료 등록</h1>
		<div class="btnArea">
			<label for="uploadFile" id="label_upload">파일 업로드</label>
			<input type="file" id="uploadFile" class="uploadInput" name="uploadFile" accept="image/*" onchange="fileUpload(this);"/><br />
			<p id="filename_p"></p>
			<input type="hidden" id="workCode" name="workCode" value="<%=workCode%>"/>
			<input class="submit_btn" type="submit" value="등록"/>
		</div>
	</form>
</body>
</html>