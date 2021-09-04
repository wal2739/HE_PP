<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%
	    String loginCheckData="";
		try{
			loginCheckData= (String)session.getAttribute("userId");
		}catch(NullPointerException e){
			System.err.println("비회원 아이디 에러 : "+e);
		}
		int userClass = 9999;
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>본인 확인</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="/js/main.js?ver=1" ></script>
<link rel="stylesheet" href="/css/main.css?ver=18">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript">
	function checkPw() {
		var pw = document.getElementById("passWord").value;
		var new_pw = document.getElementById("new_pw").value;
		var new_pw_check = document.getElementById("new_pw_check").value;
		if(pw==""){
			alert('기존 비밀번호를 입력 해주세요.');
			return false;
		}
		if(new_pw==''||new_pw_check==''){
			alert('비밀번호를 입력 해주세요.');
			return false;
		}else {
			if(new_pw!=new_pw_check){
				alert('새 비밀번호가 다릅니다. 다시 입력해주세요.');
				new_pw = '';new_pw_check = '';
				return false;
			}
			if(new_pw==pw){
				if(confirm('입력된 기존 비밀번호와 신규 비밀번호가 동일합니다. 계속 진행하시겠습니까?')){
				}else{
					return false;
				}
			}
		}
		location.href='changePW.do?passWord='+pw+'&newPW='+new_pw;
	}
	function loadOn() {
		var loginCheckData = '<%=loginCheckData%>';
		var ch_pw = <%=request.getAttribute("ch_pw")%>;
		loginCheck(loginCheckData);
		switch (ch_pw) {
		case null:
			break;
		case 0:
			alert('비밀번호가 일치 하지 않습니다.');
			location.href = 'changePW.jsp';
			break;
		case 1:
			alert('비밀번호가 정상적으로 변경되었습니다.');
			location.href = 'checkIdentity.jsp';
			break;
		case 2:
			alert('err - 비밀번호가 정상적으로 변경되지 않았습니다. 다시 시도하세요.');
			location.href = 'checkIdentity.jsp';
			break;
		default:
			alert('err - 관리자에게 문의하세요.');
			break;
		}
	}
</script>
    <%
	Object userClassData = session.getAttribute("userClass");
	String menuInfo[] = new String[4];
	String dropMenuInfo[] = new String[16];
	String dropMenuLink[] = new String[16];
	try {
		menuInfo[1] = "작업";
		menuInfo[2] = "정산";
		menuInfo[3] = "기타";
		if (userClassData.equals(0)) {
		} else if (userClassData.equals(1)) {
			menuInfo[0] = "등록";
			dropMenuInfo[0] = "사업자 정보";
			dropMenuInfo[1] = "대리 작업자";
			dropMenuInfo[2] = "차량 정보";
			dropMenuInfo[3] = "그룹 정보";
			dropMenuInfo[4] = "작업 목록";
			dropMenuInfo[5] = "증빙 자료";
			dropMenuInfo[6] = "완료 작업";
			dropMenuInfo[7] = "현황/그래프";
			dropMenuInfo[8] = "정산 조회";
			dropMenuInfo[9] = "자료 조회";
			dropMenuInfo[10] = "재발송";
			dropMenuInfo[11] = "#";
			dropMenuInfo[12] = "그룹 공지";
			dropMenuInfo[13] = "개인 사용자 전용";
			dropMenuInfo[14] = "자유 게시판";
			dropMenuInfo[15] = "공지 사항";
			//////////
			dropMenuLink[0] = "showBO.do";
			dropMenuLink[1] = "WorkerInfo.do";
			dropMenuLink[2] = "showVehicleInfo.do";
			dropMenuLink[3] = "showMyGroup.do";
			dropMenuLink[4] = "workInfoForIndi.do?uClass=indiUsrn";
			dropMenuLink[5] = "workData.do";
			dropMenuLink[6] = "finishedWorkList.do";
			dropMenuLink[7] = "#";
			dropMenuLink[8] = "#";
			dropMenuLink[9] = "#";
			dropMenuLink[10] = "#";
			dropMenuLink[11] = "#";
			dropMenuLink[12] = "#";
			dropMenuLink[13] = "eachBoard.do?boardClassNum=1&pagingNum=0";
			dropMenuLink[14] = "eachBoard.do?boardClassNum=0&pagingNum=0";
			dropMenuLink[15] = "eachBoard.do?boardClassNum=3&pagingNum=0";
		} else if (userClassData.equals(2)) {
			menuInfo[0] = "설정";
			dropMenuInfo[0] = "사업자 정보";
			dropMenuInfo[1] = "회원 관리";
			dropMenuInfo[2] = "거래처 관리";
			dropMenuInfo[3] = "#";
			dropMenuInfo[4] = "작업 관리";
			dropMenuInfo[5] = "작업 발주";
			dropMenuInfo[6] = "발주 현황";
			dropMenuInfo[7] = "완료 작업";
			dropMenuInfo[8] = "정산 처리/통보";
			dropMenuInfo[9] = "자료 조회";
			dropMenuInfo[10] = "자료 요청";
			dropMenuInfo[11] = "#";
			dropMenuInfo[12] = "그룹 공지";
			dropMenuInfo[13] = "중계 사용자 전용";
			dropMenuInfo[14] = "자유 게시판";
			dropMenuInfo[15] = "공지 사항";
			//////////
			dropMenuLink[0] = "showBO.do";
			dropMenuLink[1] = "showGrouper.do";
			dropMenuLink[2] = "showClient.do";
			dropMenuLink[3] = "#";
			dropMenuLink[4] = "workInfo.do";
			dropMenuLink[5] = "workOrderInfo.do";
			dropMenuLink[6] = "#";
			dropMenuLink[7] = "#";
			dropMenuLink[8] = "#";
			dropMenuLink[9] = "#";
			dropMenuLink[10] = "#";
			dropMenuLink[11] = "#";
			dropMenuLink[12] = "#";
			dropMenuLink[13] = "eachBoard.do?boardClassNum=2&pagingNum=0";
			dropMenuLink[14] = "eachBoard.do?boardClassNum=0&pagingNum=0";
			dropMenuLink[15] = "eachBoard.do?boardClassNum=3&pagingNum=0";
		} else if (userClassData.equals(3)) {

		}
	} catch (NullPointerException e) {
		userClassData = "0";
		System.err.println("비회원 아이디 에러 : " + e);
	}
%>
<style>
body {
	text-align: center;
}
.main_div {
	display: flex;
	width: 100%;
	height: 100%;
	text-align: center;
	align-items: center;
}
.check-form {
	margin : 0 auto;
	display : inline-block;
	width : 40%;
	height : auto;
	padding-bottom : 60px;
	padding-top:60px; 
	z-index: 2;
	background: rgba(0,0,0,.5);
	border-radius: 20px/20px;
	align-items: center;
	text-align: center;
}
.check-form h1 {
    font-size: 30px;
    color: #fff;
    text-align: center;
    margin-bottom: 60px;
}
.int-area {width: 300px;position: relative;text-align: center;display: inline-block;margin-right: 50px;}
.int-area input { margin-top: 0;
  width: 100%;
  padding: 20px 10px 10px;
  background-color: transparent;
  border: none;
  border-bottom: 1px solid #999;
  font-size: 18px; color: #fff; 
  outline: none;
}
.int-area label {
  position: absolute; left: 10px; top: 15px;
  font-size: 18px; color: #999;
  transition: top .5s ease;
}

.int-area input:focus + label,
.int-area input:valid + label {
  top: 3px;
  font-size: 11px; color:  white;
}
.btn-area {margin-top: 30px; width: 300px;display: inline-block;text-align: center;}
.btn-area input {
  width: 100%; height: 50px;
  background: black;
  color: #fff;
  font-size: 18px;
  border: none;
  border-radius: 20px;
  cursor: pointer;
}
.btn-area input::hover {
  width: 100%; 
  height: 50px;
  background: #797979;
  color: #fff;
  font-size: 18px;
  border: none;
  border-radius: 20px;
  cursor: pointer;
}
</style>
<body onload="loadOn();">
	<nav class="nav-area">
		<ul>
			<li><a href="main.do">Home</a></li>
			<li><a href="about.html">About</a></li>
			<li><a href="#"><%=menuInfo[0]%></a>
				<ul>
					<li><a href="<%=dropMenuLink[0]%>"><%=dropMenuInfo[0]%></a></li>
					<li><a href="<%=dropMenuLink[1]%>"><%=dropMenuInfo[1]%></a></li>
					<li><a href="<%=dropMenuLink[2]%>"><%=dropMenuInfo[2]%></a></li>
					<li><a href="<%=dropMenuLink[3]%>"><%=dropMenuInfo[3]%></a></li>

				</ul></li>
			<li><a href="#"><%=menuInfo[1]%></a>
				<ul>
					<li><a href="<%=dropMenuLink[4]%>"><%=dropMenuInfo[4]%></a></li>
					<li><a href="<%=dropMenuLink[5]%>"><%=dropMenuInfo[5]%></a></li>
					<li><a href="<%=dropMenuLink[6]%>"><%=dropMenuInfo[6]%></a></li>
					<li><a href="<%=dropMenuLink[7]%>"><%=dropMenuInfo[7]%></a></li>

				</ul></li>
			<li><a href="#"><%=menuInfo[2]%></a>
				<ul>
					<li><a href="<%=dropMenuLink[8]%>"><%=dropMenuInfo[8]%></a></li>
					<li><a href="<%=dropMenuLink[9]%>"><%=dropMenuInfo[9]%></a></li>
					<li><a href="<%=dropMenuLink[10]%>"><%=dropMenuInfo[10]%></a></li>
					<li><a href="<%=dropMenuLink[11]%>"><%=dropMenuInfo[11]%></a></li>

				</ul></li>
			<li><a href="#"><%=menuInfo[3]%></a>
				<ul>
					<li><a href="<%=dropMenuLink[12]%>"><%=dropMenuInfo[12]%></a></li>
					<li><a href="<%=dropMenuLink[13]%>"><%=dropMenuInfo[13]%></a></li>
					<li><a href="<%=dropMenuLink[14]%>"><%=dropMenuInfo[14]%></a></li>
					<li><a href="<%=dropMenuLink[15]%>"><%=dropMenuInfo[15]%></a></li>

				</ul></li>
			<li><a href="logOut.do">로그아웃</a></li>
			<li><a href="checkIdentity.jsp">내정보</a></li>
		</ul>
	</nav>
	<main class="main_div">
		<section class="check-form">
			<h1>로그인</h1>
			<h4>본인 확인을 위해 비밀번호를 입력해주세요.</h4>
			<div class="int-area">
				<input type="password" id="passWord" name="passWord" autocomplete="off" required/>
				<label for="passWord">기존 비밀번호</label>
			</div><br />
			<div class="int-area">
				<input type="password" id="new_pw" name="new_pw" autocomplete="off" required/>
				<label for="new_pw">새 비밀번호</label>
			</div><br />
			<div class="int-area">
				<input type="password" id="new_pw_check" name="new_pw_check" autocomplete="off" required/>
				<label for="new_pw_check">새 비밀번호 확인</label>
			</div><br />
			<div class="btn-area">
				<input type="button" value="변경" onclick="return checkPw();"/>
			</div> 
		</section>
	</main>
</body>
</html>