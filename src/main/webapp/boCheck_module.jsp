<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사업자 정보</title>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="/js/main.js?ver=15"></script>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="/css/main.css?ver=15">
<script type="text/javascript">
	window.addEventListener('load',function loadOn() {
		<%
		String loginCheckData="";
		String boCheckIndex = "";
		try{
			loginCheckData= (String)session.getAttribute("userId");
			boCheckIndex = (String)session.getAttribute("boCheckIndex");
		}catch(NullPointerException e){
			System.err.println("비회원 아이디 에러 : "+e);
		}
		%>
		var loginCheckData = '<%=loginCheckData%>';
		loginCheck(loginCheckData);
		
		var boCheckIndex = '<%=boCheckIndex%>';
		boIndexCheck(boCheckIndex);
	});

</script>
<body>
</body>
</html>