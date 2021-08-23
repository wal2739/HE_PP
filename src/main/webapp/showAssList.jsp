<%@page import="com.HEProject.he.boInfo.BOInfoVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%List<BOInfoVO> newAsslist = (List)request.getAttribute("newAsslist"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중계 협회 신규 등록</title>
</head>
<style>
	div {
		border: 1px solid black;
		overflow:scroll;
		width:1200px;
		height:200px;
	}
</style>
<script type="text/javascript" src="/js/main.js" ></script>
<script type="text/javascript">
	function successFun() {
		
		<%
		String loginCheckData="";
		try{
			loginCheckData= (String)session.getAttribute("userId");
		}catch(NullPointerException e){
			System.err.println("비회원 아이디 에러 : "+e);
		}
		%>
		var loginCheckData = <%=loginCheckData%>;
		loginCheck(loginCheckData);
		
		var resultNum = <%=request.getAttribute("resultNum")%>;
		if(resultNum==null){
			
		}else if(resultNum==1){
			alert('그룹 신청이 정상적으로 처리되었습니다.');
		}else if(resultNum==0){
			alert('그룹 신청이 정상적으로 처리되지 않았습니다. 다시 시도 해주세요');
		}else{
			alert('정상적인 요청이 아닙니다.');
		}
	}
</script>
<body onload="successFun();">
	<h1>중계 협회 신규 등록 화면</h1>
	
	
	<form action="newAci.do">
		<div>
			<%if(newAsslist.size()==0){%>
				<p>현재 그룹 등록이 가능한 중계/협회 목록이 없습니다.</p>
			  <% }else{%>
			<%for(int i = 0 ; i < newAsslist.size(); i++){ %>
				<p><input type="checkbox" value="<%=newAsslist.get(i).getUsRn() %>" name="chkUsRn" id="chkUsRn"/> <%=i+1 %>. 업체명 : <%=newAsslist.get(i).getCpName() %> 사업자번호 : <%=newAsslist.get(i).getBoNumber() %> 대표자명 : <%=newAsslist.get(i).getBoName() %> 대표 번호 : <%=newAsslist.get(i).getBoPhone() %> 
				핸드폰번호 : <%=newAsslist.get(i).getBoCell() %> 이메일 : <%=newAsslist.get(i).getBoMail() %> </p>
			<%}	} %>
		</div>
		<input type="submit" value="가입 신청"/>
	</form>
		<input type="button" value="뒤로가기" onclick="location.href='showMyGroup.do'" />
</body>
</html>