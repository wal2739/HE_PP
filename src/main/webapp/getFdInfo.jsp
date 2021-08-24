<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%
    String rlt = "";
    int rltNum = 0;
    try{
    	rlt = (String)request.getAttribute("fdInfoRlt");
    	if(rlt==null){
    		
    	}else if(!rlt.equals("0")){
    		rltNum = 1;
    	}else if(rlt.equals("0")){
    		rltNum = 2;
    	}
    }catch(Exception e){
    	System.err.println(e);
    	rltNum = 3;
    } 
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디/비밀번호 찾기</title>
</head>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
<script type="text/javascript">
	var indexNum = opener.parentNum;
	var rltNum = <%=rltNum%>;
	function loadOn() {
		console.log(indexNum);
		
		switch (rltNum) {
		case 0://초기 화면
			switch (indexNum) {
			case 0:
				alert('err - 다시 시도하세요.');
				window.close();
				break;
			case 1:
				try {
					var userName = opener.document.getElementById('userName_Id').value;
					var userEmail = opener.document.getElementById('userEmail').value;
					location.href = "getFdInfo.do?userName=" + userName + "&userEmail=" + userEmail + "&muNxed=" + indexNum;
				} catch (e) {
					alert(e);
					window.close();
				}
				break;
			case 2:
				try {
					var userName = opener.document.getElementById('userName_Pw').value;
					var userId = opener.document.getElementById('userId').value;
					location.href = "getFdInfo.do?userName=" + userName + "&userId=" + userId + "&muNxed=" + indexNum;
				} catch (e) {
					alert(e);
					window.close();
				}
				break;
			default:
				alert('err - 다시 시도하세요.');
				window.close();
				break;
			}
			break;
		case 1://있음
			document.getElementById("rlt_div").innerHTML = "<%=rlt%>";
			break;
		case 2://없음
			document.getElementById("top_div_btm").innerHTML = "<b>결과 값이 없습니다.<b>";
			break;
		case 3://에러
			alert('err - 관리자에게 문의하세요.');
			window.close();
			break;
		default:
			alert('정상적인 요청이 아닙니다.');
			window.close();
			break;
		}

	}
	function redirectP() {
		opener.location.href = 'login.jsp';
		window.close();
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
button {
  width: 150px;
  height: 50px;
  background: #797979;
  color: #fff;
  font-size: 18px;
  border: none;
  border-radius: 20px;
  cursor: pointer;
}
.top_div {
	text-align: center;
}
.top_div_btm {
	display: inline-block;
}
p {
	color : black;
}
#rlt_div {
	color : red ;
	font-weight: bold;
}
</style>
<body onload="loadOn();">
	<div class="top_div">
		<h1>아이디/비밀번호 찾기</h1>
		<div class="top_div_btm" id="top_div_btm">
			<p>찾으시는 정보의 결과값은</p><div id="rlt_div"></div><p>입니다.</p>
		</div>
		<br />
		<div class="top_div_btm">
			<button onclick="window.close();">뒤로가기</button>
			<button onclick="redirectP();">로그인</button>
		</div>
	</div>
</body>
</html>