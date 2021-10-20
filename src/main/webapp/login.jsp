<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="/css/login.css?ver=1">
	<script src="/js/jquery-3.6.0.min.js"></script>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>로그인</title>
	<script type="text/javascript">
	function loginST() {		
		switch (<%=request.getAttribute("loginST")%>) {
		case null:
			break;
		case 0:
			alert('존재 하지 않는 아이디 입니다.');
			break;
		case 1:
			location.href = 'main.do';
			break;
		case 2:
			alert('아이디와 비밀번호를 확인해주세요.');
			location.href = 'login.jsp';
			break;
		default:
			alert('정상적인 요청이 아닙니다.');
			break;
		}

		switch (<%=request.getAttribute("newUserRlt")%>) {
		case null:
			break;
		case 0:
			alert('[ 회원 가입 오류 ] 다시 시도 해주세요. 오류가 계속되면 고객센터에 문의 해주세요.');
			location.href = 'login.jsp';
			break;
		case 1:
			alert('회원가입이 정상적으로 완료되었습니다.');
			location.href = 'login.jsp';
			break;
		default:
			alert('정상적인 요청이 아닙니다.');
			break;
		}
	}
	</script>
	<style>
		
	</style>
</head>
<body onload="loginST();">
	<section class="login-form">
	    <!--H1로그인은 차후에 로고 대체 예정-->
	    <h1>로그인</h1>
		<form action="login.do" method="post">
			<!--로그인 클래스-->
	      	<div class="int-area">
		        <input type="text" name="userId" id="userId" autocomplete="off" required>
		        <label for="id">ID</label>
		    </div>
		    <!--비밀번호 클래스-->
		    <div class="int-area">
		        <input type="password" name="userPW" id="userPW" autocomplete="off" required>
		        <label for="pw">PW</label>
		    </div>
		    <!--버튼 클래스-->
		    <div class="btn-area">
		    	<button type="submit">LOGIN</button>
		    </div>
			
		</form>
		<div class="caption">
	    	<a href="fdInfo.jsp">아이디 혹은 비밀번호를 잊으셨나요?</a>
	    </div>
	    <div class="signin">
	    	<a href="newUser.jsp">회원가입</a>
	    </div>  
    </section>
    <!-- 수정 목록 >> 대리작업자 로그인 태그 생성, 아이디 비밀번호 찾기 폼 생성 -->
</body>
</html>