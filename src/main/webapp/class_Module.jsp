<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클래스</title>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="/js/main.js?ver=15"></script>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="/css/main.css?ver=15">
<script type="text/javascript">
<%!
int userClass=0;
public void cast_ob(HttpSession session){
	String userClass_t = String.valueOf(session.getAttribute("userClass"));
	if(userClass_t.equals("null")){
		userClass_t = "1";
	}
	userClass = Integer.parseInt(userClass_t);
}
/* 
	개인 게시판 = 1
	중계 게시판 = 2
	
	개인 사용자 = 1
	중계 사용자 = 2
*/
%>
window.addEventListener('load',function loadOn() {
	<%
	cast_ob(session);
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
	<%
	boolean index_1 = request.getAttribute("classType").equals(1);
	boolean index_2 = request.getAttribute("classType").equals(2);
	boolean index_3 = request.getAttribute("classType").equals(userClass);
	%>
	if(<%=index_1%>||<%=index_2%>){
		if(<%=index_3%>==false){
			location.href='main.do';
		}
	}
});
</script>
<body>

</body>
</html>