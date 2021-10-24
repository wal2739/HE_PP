<%@page import="com.HEProject.he.boInfo.BOInfoVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%List<BOInfoVO> list = (List)request.getAttribute("list"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그룹 제의 승락/거절</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="/js/main.js" ></script>
<link rel="stylesheet" href="/css/main.css?ver=16">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript">
	function MOcheck() {
		var moCheck = <%=request.getAttribute("MO")%>
		console.log(moCheck);
		if(moCheck==null){}
		if(moCheck==0){
			alert('정상적으로 처리되지 않았습니다.');
			return location.href="getOffer.do";
		}
		if(moCheck==1){
			alert('정상적으로 처리되었습니다.');
			return location.href="getOffer.do";
		}
		if(moCheck==2){
			alert('정상적이지 않은 요청입니다.');
			return location.href="getOffer.do";
		}
	}
</script>

<style>

.mainDiv{
  width: 100%;
  height: 100%;
}

.div1{
  border-bottom: 0.5px solid #d7d7d7;
  height: 70px;
  width: 100%;
  display: inline-block;
}
.div1_textArea{
  padding-left: 100px;
  padding-top: 10px;
  margin-left: 10%;
}
.div2{
  display: inline-block;
  width: 100%;
  height: 1200px;
  text-align: center;
}

.div_2_back {
	display : inline-block;
	width: 70%;
	height: auto;
	background: rgba(255,255,255,.75);
	
}
.div2_1 {
  width: 80%;
  height: 40%;
  overflow: auto;
  margin : 0 auto 0 auto;
}
.div2_1_1 {
  width: 100%;
  height: 50px;  
}
#div2_1_1_h2 {
  display: inline-block;
  margin : 10px;
}
.div2_1_2 {
  width: 100%;
  height: calc(100% - 50px);
  overflow: auto;
}

.inpuTBDiv {
	width: 100%;
	height: calc(100%-30px);
}
#inputTB {
  width: 100%;
  border: 0.5px solid #d7d7d7;
	font-size: 15px;
	text-align: center;
	background: white;
	
}

#inputTB th {
	background: #f7f7f5;
	border: 0.5px solid #d7d7d7;
  width: 200px;
}

#inputTB td{
  width: 300px;
	border: 0.5px solid #d7d7d7;
}
.div2_2 {
  width: 80%;
  height: 60%;
  overflow-y: auto;
  overflow-x: hidden;
  margin : 0 auto 0 auto;
  border-top: 0.5px solid black;
}
.div2_2_1 {
  width: 100%;
  height: 100%;
}
.div2_2_2 {
  width: 100%;
  height: calc(100% - 50px);
  padding-left: 3px;
  padding-top: 5px;
  
}

.div3{
  display: inline-block;
  width: 100%;
  height: 200px;

}
#top_tr th{
	position: sticky;
	top: 0px;
}
#btn_offer {
	background-color: #72B08E;
	color: white;
	border: none;
	width: auto;
	height: 30px;
}


#btn_offer:hover {
	background-color: #4E7861;
	box-shadow: 1px 1px 1px 1px #3C5C4A;
}

#btn_offer:active {
	text-shadow: 6px 2px 2px black;
}
p {
	color: red;
	font-size: 16px;
}
</style>
<body onload="MOcheck();">
    <jsp:include page="top_menu.jsp" />
    <jsp:include page="floating_module.jsp" />
    <jsp:include page="boCheck_module.jsp" />
	<main>
    <div class="mainDiv">
      <div class="div1">
        <div class="div1_textArea"><h2>그룹 가입 제의</h2></div>
      </div>
      <div class="div2">
        <div class="div_2_back">
        	<div class="div2_1">
          <div class="div2_1_1">
            <h2 id="div2_1_1_h2">가입 제의 확인</h2>
            <button id="btn_offer" onclick="location.href='showMyGroup.do'">뒤로가기</button>
          </div>
          <div class="div2_1_2">
          <table id="inputTB">
		        <tr id="top_tr">
		  	     	<th></th>
					<th>업체명</th>
			 		<th>사업자번호</th>
			 		<th>대표자명</th>
			 		<th>대표 번호</th>
			 		<th>핸드폰번호</th>
			 		<th>이메일</th>
			 		<th></th>
			 		<th></th>
			 	</tr>
				<%if(list.size()==0){%>
				<tr>
					<td colspan="9">가입 제의가 없습니다.</td>
				</tr>
				<% }else{%>
				<%for(int i = 0 ; i < list.size(); i++){ %>				
				<tr>
					<td><%=i+1 %></td>
					<td><%=list.get(i).getCpName() %></td>
					<td><%=list.get(i).getBoNumber() %></td>
					<td><%=list.get(i).getBoName() %></td>
					<td><%=list.get(i).getBoPhone() %></td>
					<td><%=list.get(i).getBoCell() %></td>
					<td><%=list.get(i).getBoMail() %></td>
					<td><button id="btn_offer" onclick="location.href='modifyOffer.do?assUrRn=<%=list.get(i).getUsRn() %>&state=1'">승락</button></td>
					<td><button id="btn_offer" onclick="location.href='modifyOffer.do?assUrRn=<%=list.get(i).getUsRn() %>&state=2'">거절</button></td>
				</tr>
				<%}	} %>
	      </table>
          <p>※  중계 사업자에 의해 가입 제의가 취소 될 수 있습니다.</p>
          <p>※  가입 제의 거절 시 추후 해당 중계 사업자의 그룹에 참여 할 수 없습니다.</p>
          </div>
          
        </div>
        </div>
      </div>
      <div class="div3">
      </div>
    </div>
  </main>
</body>
</html>