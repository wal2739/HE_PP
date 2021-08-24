<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복확인</title>
</head>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
<script type="text/javascript">
	function parentVal() {
		var userId = opener.document.getElementById("userId").value;
		
		document.getElementById("userId").value = userId;
	}
	
	function useId() {
		opener.document.getElementById("idcheck").value=1;
		opener.document.getElementById("userId").value=document.getElementById("userId").value;
		
		self.close();
	}
	function notUseId() {
		opener.document.getElementById("idcheck").value=0;
		opener.document.getElementById("userId").value=document.getElementById("userId").value;
		self.close();
	}
</script>
<style>
* { 
	font-family: 'Spoqa Han Sans Neo', 'sans-serif'; 
}
body {
    background: url("/image/bg_body.png") repeat center;
}
form {
	text-align: center;
}
input {
  width: 50%;
  height: 50px;
  background: #797979;
  color: #fff;
  font-size: 18px;
  border: none;
  border-radius: 20px;
  cursor: pointer;
}
</style>
<body onload="parentVal();">
	<form action="IdCheck.do">
		<h1>아이디 중복체크</h1>
		<input type="hidden" id="userId" name="userId" maxlength="12"/>
			
		<%if(request.getAttribute("idCheck")==null){ %>
		<input type="submit" value="중복 확인"/>
	</form>
	<%}else if(request.getAttribute("idCheck").equals(1)){ %>
		<p><b>사용 가능한 아이디입니다.</b></p>
		<input type="button" value="사용하기" onclick="useId();"/>
	<%}else if(request.getAttribute("idCheck").equals(0)){ %>
		<p style="color: red;"><b>사용 불가능한 아이디입니다. 아이디를 다시 입력 해주세요.</b></p>
		<input type="button" value="돌아가기" onclick="notUseId();"/>
	<%}else{}%>
</body>
</html>