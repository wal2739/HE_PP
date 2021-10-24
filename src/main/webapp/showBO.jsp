<%@page import="com.HEProject.he.usersInfo.UsersInfoVO"%>
<%@page import="com.HEProject.he.boInfo.BOInfoVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<%
	BOInfoVO vo = (BOInfoVO) request.getAttribute("vo");
	String loginCheckData = "";
	boolean checkPT = true;

	try {
		vo.getBoNumber();
		checkPT = false;
	} catch (NullPointerException e) {
		vo = new BOInfoVO();
		vo.setBoNumber("1");
		vo.setBoName("1");
		vo.setUsRn("1");
		vo.setBoRrn("1");
		vo.setBoPhone("1");
		vo.setBoCell("1");
		vo.setBoMail("1");
		vo.setBoLicense(0);
		vo.setBoAdd01("1");
		vo.setBoAdd02("1");
		vo.setBoAcc(0);
		vo.setBoAccBack("1");
		System.out.println("사업자 정보 등록 널 에러 : " + e);
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>사업자 등록/수정</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="/js/main.js?ver=1"></script>
<link rel="stylesheet" href="/css/main.css?ver=16">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript">
	function delCheck() {
		var boCheck = <%=request.getAttribute("delCheck")%>
		if(boCheck==null){}
		if(boCheck==0){
			alert('사업자 정보가 정상적으로 삭제 되지 않았습니다. 다시 시도해주세요.');
		}
		if(boCheck==1){
			alert('사업자 정보가 정상적으로 삭제 되었습니다.');
	//		return location.href="showBO.do";
		}
		
	}


</script>
<style>
.mainDiv {
	width: 100%;
	height: 100%;
}

.div1 {
	/*   background-color : #fff0f9;
 */
	border-bottom: 0.5px solid #d7d7d7;
	height: 70px;
	width: 100%;
	display: inline-block;
}

.div1_textArea {
	padding-left: 100px;
	padding-top: 10px;
	margin-left: 10%;
}

.div2 {
	display: inline-block;
	width: 100%;
	height: 900px;
}

.div2_1 {
	background: rgba(255,255,255,.75);
	width: 80%;
	height: 100%;
	overflow: hidden;
	margin-left: 10%;
}

.div2_1_1 {
	height: 860px;
	width: calc(60% - 40px);
	padding: 20px;
	overflow: auto;
	display: inline-block;
	float: left;
}

.div2_1_2 {
	width: 40%;
	height: 900px;
	display: inline-block;
	float: right;
}

.div2_1_2_text {
	margin: 20px;
	margin-top: 40px;
	font-size: 20px;
	height: 50%;
}

.div2_1_2_btn {
	height: calc(40% - 50px);
}

.div2_1_2_btn p {
	text-align: center;
}

.div2_1_2_btn a {
	padding-top: 20px;
	margin-top: 30px;
	text-align: center;
	display: block;
}

/* 테이블 테스트 */
.table01 {
	border: 0.5px solid #d7d7d7;
	margin-left: 20%;
	width: 500px;
}
.table02 {
	border: 0.5px solid #d7d7d7;
	margin-top : 30%;
	margin-left: 20%;
	margin-bottom : 40%;
	width: 400px;
	text-align: center;
}

th {
	width: 200px;
	background: #f7f7f5;
	border: 0.5px solid #d7d7d7;
}

td {
	align: center;
	border: 0.5px solid #d7d7d7;
	padding: 10px;
	padding-left: 15px;
	width: 400px;
}

caption {
	text-align: left;
	margin-bottom: 10px;
	font-size: 30px;
	font-weight: 1000;
}

.tableInfo {
	color: red;
	font-size: 15px;
	margin-left: 10%;
}

.div3 {
	display: inline-block;
	width: 100%;
	height: 200px;
	background-color: #faf3f3;
}

.btn {
	width: 140px;
	height: 45px;
	font-family: 'Roboto', sans-serif;
	font-size: 11px;
	text-transform: uppercase;
	letter-spacing: 2.5px;
	font-weight: 500;
	color: #000;
	background-color: #fff;
	border: none;
	border-radius: 45px;
	box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease 0s;
	cursor: pointer;
	outline: none;
}

.btn:hover {
	background-color: #2EE59D;
	box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
	color: #fff;
	transform: translateY(-7px);
}

.btnDiv {
	height: 80%;
	display: flex;
	align-items: center;
	justify-content: center;
}
</style>

<body onload="loadOn();">
    <jsp:include page="top_menu.jsp" />
    <jsp:include page="login_check_module.jsp" />
    <jsp:include page="floating_module.jsp" />
	<main>
	<div class="mainDiv">
		<div class="div1">
			<div class="div1_textArea">
				<h2>등록된 사업자 정보</h2>
			</div>
		</div>
		<div class="div2">
			<div class="div2_1">
				<div class="div2_1_1">
					<%
						if (checkPT == true) {
					%>
					<table id="table02" class="table02">
						<tr>
							<td>
								<p><b> 등록된 사업자 정보가 없습니다. 신규 등록 해주세요.</b></p>
							</td>
						</tr>
					</table>
					<%
						} else {
					%>

					<table id="table01" class="table01">
						<caption>현재 등록된 사업자 정보</caption>
						<tr>
							<th>사업자 번호</th>
							<td><%=vo.getBoNumber()%></td>
						</tr>
						<tr>
							<th>업체명</th>
							<td><%=vo.getCpName()%></td>
						</tr>
						<tr>
							<th>사업자명</th>
							<td><%=vo.getBoName()%></td>
						</tr>
						<tr>
							<th>업종</th>
							<td><%=vo.getTob01()%></td>
						</tr>
						<tr>
							<th>업태</th>
							<td><%=vo.getTob02()%></td>
						</tr>
						<tr>
							<th>사업자 주민등록 번호</th>
							<td><%=vo.getBoRrn()%></td>
						</tr>
						<tr>
							<th>사업자 전화번호</th>
							<td><%=vo.getBoPhone()%></td>
						</tr>
						<tr>
							<th>사업자 핸드폰 번호</th>
							<td><%=vo.getBoCell()%></td>
						</tr>
						<tr>
							<th>사업자 이메일</th>
							<td><%=vo.getBoMail()%></td>
						</tr>
						<tr>
							<th>사업자 사본 여부</th>
							<td><%=vo.getBoLicense()%></td>
						</tr>
						<tr>
							<th>사업자 주소</th>
							<td><%=vo.getBoAdd01()%></td>
						</tr>
						<tr>
							<th>사업자 상세 주소</th>
							<td><%=vo.getBoAdd02()%></td>
						</tr>
						<tr>
							<th>사업자 계좌</th>
							<td><%=vo.getBoAcc()%></td>
						</tr>
						<tr>
							<th>사업자 계좌 은행</th>
							<td><%=vo.getBoAccBack()%></td>
						</tr>
					</table>
					<%
						}
					%>
					<p class="tableInfo">※ 허위 정보를 작성 할 경우 제재의 대상이 될 수 있습니다.</p>
					<p class="tableInfo">※ 한번 등록된 사업자 정보는 삭제가 불가능 합니다.</p>
				</div>
				<div class="div2_1_2">
					<div class="div2_1_2_text">
						<p>※ 한번 등록된 사업자 정보는 삭제가 불가능 하며, 수정만 가능합니다.</p>
						<p>※ 회원 탈퇴 시 사업자 정보 또한 동시 삭제 됩니다.</p>
						<p>※ 사업자 정보를 등록하지 않으면, 사이트 이용에 제한이 생깁니다.</p>
					</div>
					<div class="div2_1_2_btn">
						<%if(checkPT==true){ %>
							<p>
							신규 등록을 원한다면 아래 <b>등록하기</b> 를 클릭해주세요.
							</p>
							<div class="btnDiv">
								<input type="button" class="btn" value="신규등록"
									onClick="location.href='newBO.do'" />
							</div>
						<%}else { %>
						<p>
							수정을 원한다면 아래 <b>수정하기</b> 를 클릭해주세요.
						</p>
						<div class="btnDiv">
							<input type="button" class="btn" value="수정하기"
								onClick="location.href='modifyBO.do'" />
						</div>
						<%} %>
					</div>
				</div>
			</div>
		</div>
		
	</div>
	    <div class="floating_btn" id="floating_btn">
    	<p id="floating_title"><b>리모컨</b></p>
    	<div class="floating_btn_img" onclick="show_top();">
    		<img src="/image/up_arrow.png" alt="상단 이동"/>
    	</div>
    	<p>맨위로</p>
    	<div class="floating_btn_img" onclick="link_call();">
    		<img src="/image/call_img.png" alt="상담 버튼"/>
    	</div>
    	<p>고객센터</p>
    	<div class="floating_btn_img" onclick="location.href='main.do'">
    		<img src="/image/home_btn.png" alt="상담 버튼"/>
    	</div>
    	<p>HOME</p>
    </div>
	</main>
</body>
</html>