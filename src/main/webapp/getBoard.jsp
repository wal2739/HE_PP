<%@page import="java.util.List"%>
<%@page import="com.HEProject.he.cmtInfo.CmtInfoVO"%>
<%@page import="com.HEProject.he.boardInfo.BoardInfoVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%
    	BoardInfoVO vo = (BoardInfoVO)request.getAttribute("vo"); 
    	List<CmtInfoVO> list = (List)request.getAttribute("list");
    	int cmtCnt = 0;
    	if(list!=null){
    		cmtCnt = list.size();
    	}
    	String classSet = "";
    	switch(vo.getBoardClass()){
    		case 0 :
    			classSet = "자유게시판";
    			break;
    		case 1 :
    			classSet = "개인사용자 게시판";
    			break;
    		case 2 :
    			classSet = "중계 사용자 게시판";
    			break;
    		case 3 :
    			classSet = "공지 게시판";
    			break;
    		default :
    			classSet = "오류 - boardCode,el";
    			break;
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 상세보기</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="/js/main.js?ver=1" ></script>
<link rel="stylesheet" href="/css/main.css?ver=20">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript">
	function loadOn() {
		var checkNum = <%=request.getAttribute("MBCheck")%>;
		var cmtInNum = <%=request.getAttribute("insertCmt")%>;
		var cmtDeNum = <%=request.getAttribute("delCmt")%>;
		if(checkNum==null){
			
		}else {
			switch (checkNum) {
			case 0:
				alert('수정 사항이 정상적으로 등록되지 않았습니다.');
				break;
			case 1:
				alert('수정 사항이 정상적으로 등록되었습니다.');
				break;
			case 2:
				alert('글 작성자만 삭제/수정이 가능합니다.');
				break;
			default:
				alert('정상적인 요청이 아닙니다.');
				break;
			}
			location.href='getBoard.do?boardCode=<%=vo.getBoardCode()%>&statusNum=1';
		}
		
		if(cmtInNum==null){
			
		}else {
			switch (cmtInNum) {
			case 0:
				alert('댓글이 정상적으로 등록되지 않았습니다.');
				break;
			case 1:
				break;
			default:
				alert('정상적인 요청이 아닙니다.');
				break;
			}
			location.href='getBoard.do?boardCode=<%=vo.getBoardCode()%>&statusNum=0';
		}
		if(cmtDeNum==null){
			
		}else {
			switch (cmtDeNum) {
			case 0:
				alert('댓글이 정상적으로 삭제되지 않았습니다.');
				break;
			case 1:
				alert('댓글이 삭제 되었습니다.');
				break;
			case 3:
				alert('본인만 삭제가 가능합니다.');
				break;
			default:
				alert('정상적인 요청이 아닙니다.');
				break;
			}
			location.href='getBoard.do?boardCode=<%=vo.getBoardCode()%>&statusNum=0';
		}
		
		var contentsVal = '<%=vo.getBoardContents() %>'.replace(/N_S_S_RM/g, '&nbsp;');

		document.getElementById('contents_body').innerHTML = contentsVal;
 	}
	function cmtIST(){
		var contents = document.getElementById('cmtTA').value;

		if(contents==''){
			alert('댓글 내용을 입력해주세요.');
			return false;
		}else {
			location.href='insertCmt.do?boardCode=<%=vo.getBoardCode()%>&cmtContent='+contents;
		}
	}
	function cmtDel(cmtCode){
		var contents = document.getElementById('cmtTA').value;
		var delCF = confirm('정말 삭제 하시겠습니까?');
		switch (delCF) {
		case false:
			return false;
			break;
		default:
			location.href='delCmt.do?boardCode=<%=vo.getBoardCode()%>&cmtCode='+cmtCode;
			break;
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
  height: auto;
  text-align: center;
  overflow: visible;
}

.div_2_back {
	display : inline-block;
	width: 80%;
	height: 100%;
	background: rgba(255,255,255,.75);
	text-align: start;
	
}
  .div2_1 {
    width: 100%;
    height: 40%;
    overflow: hidden;
    margin : 0 auto 0 auto;
  }

  .div2_2 {
    width: 100%;
    height: 40%;
    border-top: 0.5px solid #d7d7d7;
    overflow-y: visible;
    overflow-x: hidden;
    margin : 0 auto 0 auto;
  }
  .div3{
    display: inline-block;
    width: 100%;
    height: 200px;
  
  }
    .div2_3 {
    width: 100%;
    height: 20%;
    overflow-y: visible;
    overflow-x: hidden;
    margin : 0 auto 10px auto;
  }
  /* 상세보기 추가 */
header {
  border-bottom: 0.5px solid #d7d7d7;
  padding-bottom : 5px;
}

.contents_board {
  width: 100%;
  height: 100%;
  background-color: white;
}
.contents_title {
  padding: 10px 0 10px 20px;
}
.contents_fl {
  padding: 10px 20px 10px 20px;
}
.contents_writeInfo, .contents_boardInfo {
  display: inline-block;
}

.contents_date,.contents_viewCnt {
  border-right: 0.5px solid #d7d7d7;
  padding-right: 5px;
  padding-left: 5px;
}
.contents_name {
  padding-right: 5px;
}

.contents_boardInfo {
  float: right;
}

.contents_file ,.contents_body {
  padding: 20px 15px 20px 15px;
}
.contents_body{
	word-break:break-all;
}


#etcBtn {
    width: 30px;
    height: 30px;
}
#cmtDelBtn {
	margin-left : 15px;
    width: 13px;
    height: 13px;
}
.div2_3 input {
    float: right;
    margin-top: 10px;
    margin-right: 10px;
}  
table {
	width: 100%;
	border: 0.5px solid #d7d7d7;
    background: white;
}
th {
	background: #f7f7f5;
	border-right: 0.5px solid #d7d7d7;
	width: 50px;
}

th, td {
	padding: 0 10px 0 10px;
	border-bottom: 0.5px solid #d7d7d7;
	
}
td {
	padding-top: 10px;
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
            <div class="div1_textArea"><h2>게시글 상세보기</h2></div>
          </div>
          <div class="div2">
            <div class="div_2_back">
            	<div class="div2_1">
            	<div class="contents_board">
                <header class="contents_head">
                  <div class="contents_title">
                    <h3><%=vo.getBoardTitle() %></h3>
                  </div>
                  <div class="contents_fl">
                    <div class="contents_writeInfo">
                      <span class="contents_name"><%=vo.getUserName() %></span>
                      <span class="contents_date">작성 날짜 : <%=vo.getWriteDate() %></span>
                      <span class="contents_date">수정 날짜 : <%=vo.getFixDate() %></span>
                      <span class="contents_boardCode">글번호 : <%=vo.getBoardCode() %></span>
                    </div>
                    <div class="contents_boardInfo">
                      <span class="contents_viewCnt">조회 <%=vo.getViews() %></span>
                      <span class="contents_reply">댓글 수 <%=cmtCnt %></span>
                    </div>
                  </div>
                </header>
                <div class="contents_body" id="contents_body">
                	
                </div>
                <div class="contents_file">
                  	첨부 파일[미구현]
                </div>
              </div>
			</div>
			<div class="div2_3">
                <input type="image" value="목록으로" src="/image/list.png" id="etcBtn" name="etcBtn" onclick="location.href='eachBoard.do?boardClassNum=<%=vo.getBoardClass()%>'">
           		<input type="image" value="수정하기" src="/image/writing.png" onclick="location.href='checkIdForModify.do?boardCode=<%=vo.getBoardCode()%>&status=1&boardClass=<%=vo.getBoardClass() %>'" id="etcBtn" name="etcBtn"/>	
           		<input type="image" value="삭제하기" src="/image/delete_boardBtn.png" onclick="location.href='checkIdForModify.do?boardCode=<%=vo.getBoardCode()%>&status=0&boardClass=<%=vo.getBoardClass() %>'" id="etcBtn" name="etcBtn"/>	
            </div>
            <div class="div2_2">
            	<div>
	            	<p>댓글 작성</p>
	            	<p style="font-size: 5px; color: red;">댓글은 익명으로 작성됩니다.</p>
					<textarea style="width: 95%; resize: none;" name="cmtTA" id="cmtTA" cols="30" rows="5" placeholder="   부적절한 댓글은 관리자에 의해 삭제될 수 잇습니다. 최대 300자까지 작성 가능합니다." maxlength="300"></textarea>
					<input type="image" value="작성 완료" src="/image/submit_board.png" onclick="return cmtIST();"  id="etcBtn" name="etcBtn"/>
            	</div>
            	<div>
            		<table>
            			<%if(cmtCnt==0){ %>
            			<%}else {for(int i = 0 ; i < list.size(); i++){%>
            			<tr>
            				<th>익명</th>
            				<td style="word-break:break-all;"><%=list.get(i).getCmtContent() %><p style="font-size: 5px;"><%=list.get(i).getCmtDate() %> <input type="image" onclick="return cmtDel('<%=list.get(i).getCmtCode() %>');" id="cmtDelBtn" name="cmtDelBtn" src="/image/cmt_delete.png"/></p></td>
            			</tr>
            			<%}} %>
            		</table>
            	</div>
            </div>
            </div>            
          </div>
          <div class="div3">
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