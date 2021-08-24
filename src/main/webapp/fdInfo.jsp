<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/login2H.css?ver=4">
<script src="/js/jquery-3.6.0.min.js"></script>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
<title>아이디/비밀번호 찾기</title>
</head>
<script type="text/javascript">
	var parentNum = 0;
	function fdInfo(indexNum) {
		parentNum = indexNum;
		switch (indexNum) {
		case 1:
			var userName_Id = document.getElementById('userName_Id').value;
			var userEmail = document.getElementById('userEmail').value;
			if(userName_Id==''||userEmail==''){
				alert('이름 혹은 이메일을 입력 해주세요.');
				return false;
			}
			break;
		case 2:
			var userName_Pw = document.getElementById('userName_Pw').value;
			var userId = document.getElementById('userId').value;
			if(userName_Pw==''||userId==''){
				alert('아이디 혹은 이름을 입력 해주세요.');
				return false;
			}
			break;
		default:
			alert('잘못된 요청입니다.');
			return false;
			break;
		}
		window.name="parentForm";
		window.open("getFdInfo.jsp","chkForm","width=500,height=300, toolbar=no, status=no,resizable=no,scrollbars=no");
	}
</script>
<style>
body {
  height: 150vh;
  
}
body::before {
  height : 150vh;
}
.top_int-area {
	padding: 30px 10px 30px 10px;
	margin-top : 30px;
	background-color: rgba(255,255,255,.15);
	border-radius: 30px / 30px;
}
</style>
<body>
	<section class="login-form">
		<!-- 아이디 찾기 -->
		<div class="top_int-area">
		<h1>아이디 찾기</h1>
			<div class="int-area">
		        <input type="text" name="userName_Id" id="userName_Id" maxlength="12" autocomplete="off" required/>
		        <label for="userName_Id">이름</label>
		    </div>
				<div class="int-area">
		        <input type="text" name="userEmail" id="userEmail" maxlength="40" onkeydown="inputidcheck()" autocomplete="off" required/>
		        <label for="userId">이메일</label>
		    </div>
		    <!--가입 버튼 클래스-->
		    <div class="btn-area">
		    	<button onclick="fdInfo(1)">아이디 찾기</button>
		    </div>
		</div>
		<div class="top_int-area">
		<h1>비밀번호 찾기</h1>
			<div class="int-area">
		        <input type="text" name="userName_Pw" id="userName_Pw" maxlength="12" autocomplete="off" required/>
		        <label for="userName_Pw">이름</label>
		   </div>
			<div class="int-area">
		        <input type="text" name="userId" id="userId" maxlength="12" autocomplete="off" required/>
		        <label for="userId">아이디</label>
		    </div>
		    <!--가입 버튼 클래스-->
		    <div class="btn-area">
		    	<button onclick="fdInfo(2)">비밀번호 찾기</button>
		    </div>
		</div>
		<!-- 텍스트 클래스 -->
		<div class="caption">
		   	<a href="login.jsp">로그인</a><br /><br />
		   	<a href="#">고객센터</a>
		   	<!-- <p style="margin-top: 30px; font-size: 12px; color: red;">※ (  *  ) 표시는 필수 입력입니다. </p>
		   	<p style="margin-top: 10px;font-size: 12px; color: red;">※ 개인 정보 허위 기재시 처벌의 대상이 될 수 있습니다. </p> -->
		</div>
	</section>	
	
</body>
</html>