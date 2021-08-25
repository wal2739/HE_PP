<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.HEProject.he.usersInfo.UsersInfoVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%
    	UsersInfoVO vo = (UsersInfoVO)request.getAttribute("vo"); 
	    String classType = "";
	    if(request.getAttribute("boardClassRe").equals("0")){
			classType = "자유 게시판";
	    }else if(request.getAttribute("boardClassRe").equals("1")){
			classType = "개인 사용자 게시판";
		}else if(request.getAttribute("boardClassRe").equals("2")){
			classType = "중계 사용자 게시판";
		}else if(request.getAttribute("boardClassRe").equals("3")){
			classType = "공지 게시판";
		}else {
			classType = "에러 - classType - jsp";
		}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 작성 - <%=classType %></title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="/js/main.js?ver=1" ></script>
<link rel="stylesheet" href="/css/main.css?ver=20">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script src="/naver-smarteditor2-ca95d21/demo/js/service/HuskyEZCreator.js?ver=9"></script>	
<script type="text/javascript" charset="UTF-8">
//게시글 작성 폼 코딩 주잉었음
	
	function examine() {
		var val2 = oEditors.getById["boardContents"].exec("UPDATE_CONTENTS_FIELD",[]);
		this.contents = $('boardContents').val(); 
		
		var boardTitle = document.getElementById("boardTitle").value;
		var boardContents = document.getElementById("boardContents").value.replace(/&nbsp;/g, 'N_S_S_RM');
		var uCode = '<%=vo.getUsRn()%>';
		var uName = '<%=vo.getUserName()%>';
		if(boardTitle==''){
			alert('제목을 입력 해주세요.');
			return false;
		}
		
		console.log(boardContents);
 		location.href="insertBoardForFreeAct.do?boardClass=" + <%=request.getAttribute("boardClassRe")%> + "&boardTitle=" + boardTitle + "&boardContents=" + boardContents + "&usRn=" + uCode + "&userName=" + uName;
	 }
	
	function loadOn() {
		/* 추후 게시물 상세보기 페이지로 이동 */var insertBoardSF = <%=request.getAttribute("insertBoardSF")%>
		if(insertBoardSF==null){}else if(insertBoardSF==0){
			alert('게시물이 정상적으로 등록 되지 않았습니다. 다시 시도 해주세요.');
			location.href='eachBoard.do?boardClassNum=<%=request.getAttribute("boardClassRe")%>';
		}else if(insertBoardSF==1){
			alert('게시물이 정상적으로 등록 되었습니다.');
			location.href='eachBoard.do?boardClassNum=<%=request.getAttribute("boardClassRe")%>';
		}else {
			alert('정상적인 요청이 아닙니다.');
			location.href='eachBoard.do?boardClassNum=<%=request.getAttribute("boardClassRe")%>';
		}
		
		
	}
	$(document).ready(function(){
		var currentPosition = parseInt($("#floating_btn").css("top"));
		$(window).scroll(function() {
			var position = $(window).scrollTop();
			$("#floating_btn").stop().animate({"top":position+currentPosition+"px"},700);
		});
	});
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
			dropMenuInfo[6] = "작업 조회";
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
			dropMenuLink[6] = "#";
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
.mainDiv{
    width: 100%;
    height: 100%;
  }
  
  .div1{
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
    height: 900px;    
  }
  .div2_1 {
    width: 80%;
    height: auto;
    overflow: auto;
    margin : 0 auto 0 auto;
  }

  .div2_2 {
    width: 80%;
    height: 10%;
    overflow-y: auto;
    overflow-x: hidden;
    margin : 0 auto 0 auto;
  }
  .div3{
    display: inline-block;
    width: 100%;
    height: 200px;
  
  }
.div2_2 pre {
    display: inline-block;
    font-size: 15px;
    color: red;
    margin-left: 10px;
}
.div2_2 input {
    float: right;
    margin-top: 10px;
    margin-right: 10px;
}  

#etcBtn {
    width: 30px;
    height: 30px;
}
#boardTB {
  width: 100%;
  height: 100%;
  border: 0.5px solid #d7d7d7;
  background: white;

}
th, td{
  text-align: center;
  border: 0.5px solid #d7d7d7;

}
th {
	background: #f7f7f5;
	
}
#boardContents {
	width: 100%;
	height: 660px;
}
</style>
<body onload="loadOn();">
<nav class="nav-area">
		<ul>
			<li><a href="main.do">Home</a></li>
			<li><a href="#">About</a></li>
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
    <main>
        <div class="mainDiv">
          <div class="div1">
            <div class="div1_textArea"><h2>게시글 작성</h2></div>
          </div>
          <div class="div2">
            <div class="div2_1">
            <table id="boardTB">
            <%
				Date nowTime = new Date();
				SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일");
			%>
                <tr style="height: 7%;">
                    <th style="width: 10%;">작성 일자</th>
                    <td style="width: 50%;"><%= sf.format(nowTime) %></td>
                    <th style="width: 20%;">게시판 분류</th>
                    <td>[<%=classType %>]</td>
                </tr>
                <tr style="height: 7%;">
                    <th>제목</th>
                    <td><input type="text" id="boardTitle" name="boardTitle" placeholder="제목을 입력 해주세요." style="width: 70%;"/></td>
                    <th>작성자</th>
                    <td><%=vo.getUserName() %></td>
                </tr>
                <tr style="height: 79%;">
                    <th>
                    	내용
                    	<p style="font-size: 7px; color: red;" class="countSpan"></p>
                    </th>
                    <td colspan="3"><textarea name="boardContents" id="boardContents" maxlength="800"></textarea></td>
                </tr>
                <tr style="height: 7%;">
                    <th>첨부파일</th>
                    <td colspan="3"><p style="color: red">비활성화</p></td>
                </tr>
            </table>
			</div>
            <div class="div2_2">
                <pre><b>※ 부적절한 제목/내용의 게시글은 관리자에 의해 삭제될 수 있습니다.
※ 점검을 위해 사진 업로드 기능을 일시적으로 비활성화 했습니다. 양해 부탁드립니다.</b></pre>
				<input type="image" value="작성 완료" src="/image/submit_board.png" onclick="return examine();"  id="etcBtn" name="etcBtn"/>
				<input type="image" value="뒤로가기" src="/image/back_board.png" onclick="location.href='eachBoard.do?boardClassNum=<%=request.getAttribute("boardClassRe")%>'"  id="etcBtn" name="etcBtn"/>
            </div>
          </div>
          <div class="div3">
            <p>하단 내용</p>
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
<!-- <script type="text/javascript">
(function(){
    var url = document.querySelector("iframe").src;            
    var result = encodeURI(decodeURI(url));    
    document.querySelector("iframe").src = result;
}());
</script> -->
<script type="text/javascript">
	var oEditors = [];
				
	nhn.husky.EZCreator.createInIFrame({ oAppRef : oEditors,
		elPlaceHolder : "boardContents",
		sSkinURI : "/naver-smarteditor2-ca95d21/demo/SmartEditor2Skin.html",
		fCreator : "createSEditor2"
	});
	
	setTimeout(function() { 
		var ctntarea = document.querySelector("iframe").contentWindow.document.querySelector("iframe").contentWindow.document.querySelector(".se2_inputarea"); ctntarea.addEventListener("keyup", function(e) {
			var text = this.innerHTML; 
			text = text.replace(/<br>/ig, ""); 
			text = text.replace(/&nbsp;/ig, ""); 
			text = text.replace(/<(\/)?([a-zA-Z]*)(\s[a-zA-Z]*=[^>]*)?(\s)*(\/)?>/ig, ""); 
			var len = text.length; 
			document.querySelector(".countSpan").innerHTML = len + "byte"; 
			if(len > 3950) { alert("최대 3950 byte까지 입력 가능합니다."); } }); }, 1000)

</script>
</html>