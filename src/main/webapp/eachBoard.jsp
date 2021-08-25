<%@page import="com.HEProject.he.boardInfo.BoardInfoVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%
 	    String loginCheckData="";
		try{
			loginCheckData= (String)session.getAttribute("userId");
		}catch(NullPointerException e){
			System.err.println("비회원 아이디 에러 : "+e);
		}
		String searchIDX = "";
		String searchIDXCON = "";
		try{
			searchIDX = (String) request.getAttribute("searchIDX");
			searchIDXCON = (String) request.getAttribute("searchIDXCON");
		}catch (NullPointerException e){
			System.err.println("검색 인덱스 값 없음 : "+e);
		}
		
		List<BoardInfoVO> list = null;
    	String classType = "";
    	int userClass = 9999;
    	String backPath = "";
		if(loginCheckData!=null){
			list = (List)request.getAttribute("list");
			if(request.getAttribute("classType").equals(0)){
	    		classType = "자유 게시판";
	    	}else if(request.getAttribute("classType").equals(1)){
	    		classType = "개인 사용자 게시판";
	    	}else if(request.getAttribute("classType").equals(2)){
	    		classType = "중계 사용자 게시판";
	    	}else if(request.getAttribute("classType").equals(3)){
	    		classType = "공지 게시판";
	    	}else {
	    		classType = "에러 - classType - jsp";
	    	}
			
		}
    %>
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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=classType %></title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="/js/main.js?ver=1" ></script>
<link rel="stylesheet" href="/css/main.css?ver=18">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript">

	function checkNotice() {
		var loginCheckData = '<%=loginCheckData%>';
		loginCheck(loginCheckData);
		
		var typeClass = <%=request.getAttribute("classType")%>;
		var classUser = <%=userClass%>;
		if(typeClass==3){
			document.getElementById("my_writing").style.display = "none";	
			if(classUser!=0){
				document.getElementById("writing").style.display = "none";	
			}
		}
		
		
		
		switch (<%=request.getAttribute("deleteRlt")%>) {
		case 0:
			alert('삭제가 정상적으로 처리되지 않았습니다. 다시 시도해주세요.');
			location.href='eachBoard.do?boardClassNum=' + <%=request.getAttribute("badClass")%>;
			break;
		case 1:
			alert('삭제가 완료되었습니다.');
			location.href='eachBoard.do?boardClassNum=' + <%=request.getAttribute("badClass")%>;
			break;
		default:
			break;
		}
		
		
		var searchIDX = '<%=searchIDX%>';
		var searchIDXCON = '<%=searchIDXCON%>';
		
		switch (searchIDX) {
		case 'null':
			break;

		default:
			document.getElementById("searchBox").value = searchIDX;
			switch (searchIDXCON) {
			case 'boardTitle':
				$("#searchCond option:eq(0)").prop("selected",true);
				break;
			case 'boardCode':
				$("#searchCond option:eq(1)").prop("selected",true);
				break;
			case 'userName':
				$("#searchCond option:eq(2)").prop("selected",true);
				break;
			default:
				break;
			}
			break;
		}
		
	}
	
	function pagingFun() {
		var pagingCnt = <%=request.getAttribute("pagingCntRlt")%>;//총 페이지 수
		var pageNum = <%=request.getAttribute("pageNum")%>;//현재 페이지boardCnt
		var boardCnt = <%=request.getAttribute("boardCnt")%>;// 총 게시물 수
		var rltCnt = Math.floor(pageNum*0.1);//현재 페이지 / 10
		var pagingCntRlt = Math.floor(pagingCnt*0.1); // 총 페이지 / 10
		var pTagInner = document.getElementById('pTagInner');
		//현재 페이지가 처음과 끝인지 확인
		if(pageNum==0){
			//처음 페이지라면 좌측 Arrow를 생성하지않음
			document.getElementById("arrBtn01").setAttribute('type','hidden');
			document.getElementById("arrBtn02").setAttribute('type','hidden');
			
		}else if(pageNum==pagingCnt-1){
			//마지막 페이지라면 우측 Arrow를 생성하지않음
			document.getElementById("arrBtn03").setAttribute('type','hidden');
			document.getElementById("arrBtn04").setAttribute('type','hidden');			
		}
		
				//20 이하인지 구분
		if(pagingCnt<9){
			//20 이하 일 경우 double Arrow를 생성하지 않는다.
			document.getElementById("arrBtn01").setAttribute('type','hidden');			
			document.getElementById("arrBtn02").setAttribute('type','hidden');			
			document.getElementById("arrBtn03").setAttribute('type','hidden');			
			document.getElementById("arrBtn04").setAttribute('type','hidden');	
		}
		//20 이상 첫 페이지
		switch (pagingCntRlt) {
		case 0:
			//첫 페이지 [10 이하]
			for(var i = 0; i < pagingCnt; i++){
				if(pageNum==i){
					pTagInner.innerHTML += i + 1 + '&nbsp;&nbsp;';
				}else {
					pTagInner.innerHTML += '<a href="eachBoard.do?boardClassNum=<%=request.getAttribute("classType")%>&pagingNum=' + i + '" style="width: 30px; height: 30px; font-size: 17px;">' + (i+1) + '</a>&nbsp;&nbsp;';
				}
			}
			break;	
		default:
		//마지막 페이지
			if(Math.floor((pagingCnt-1)*0.1)==Math.floor(pageNum*0.1)){
				for(var i = rltCnt*10; i < pagingCnt; i++){
					if(pageNum==i){
						pTagInner.innerHTML += i + 1 + '&nbsp;&nbsp;';
					}else {
						pTagInner.innerHTML += '<a href="eachBoard.do?boardClassNum=<%=request.getAttribute("classType")%>&pagingNum=' + i + '" style="width: 30px; height: 30px; font-size: 17px;">' + (i+1) + '</a>&nbsp;&nbsp;';
					}
				}
			}else {
				//기존 페이지
				for(var i = rltCnt*10; i < rltCnt*10+10; i++){
					if(pageNum==i){
						pTagInner.innerHTML += i + 1 + '&nbsp;&nbsp;';
					}else {
						pTagInner.innerHTML += '<a href="eachBoard.do?boardClassNum=<%=request.getAttribute("classType")%>&pagingNum=' + i + '" style="width: 30px; height: 30px; font-size: 17px;">' + (i+1) + '</a>&nbsp;&nbsp;';
					}
				}
			}
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
<style>
  /* 게시판_리스트_기본 */
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
    height: 95%;
    overflow: hidden;
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

  /* div2_1 > table) css */

.div2_1 h2{
    text-align: center;
}

.searchForm {
    float: right;
    text-align : center;
    margin-right: 20px;
    margin-bottom: 10px;
}

#searchBox {
    top: 0;
    float: left;
}

#searchBtn {
    width: 20px;
    height: 20px;
}

.etcBtn {
    width: 30px;
    height: 30px;
}

#arrBtn01, #arrBtn02, #arrBtn03, #arrBtn04 {
    width: 20px;
    height: 20px;
}

#searchBox,#searchBtn,#searchCond {
	float : right;
    margin-right: 10px;
    margin-top: 5px;
}


#boardTB {
    width: 100%;
    border: 0.5px solid #d7d7d7;
    background: white;
    
}

#boardTB td,#boardTB th{
	border: 0.5px solid #d7d7d7;
	text-align: center;
    font-size: 15px;
}

#boardTB th {
	background: #f7f7f5;
	
}

.pagingA {
    margin-top: 7px;
    text-align: center;
}

  /* div2_2 > input) css */
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
</style>
<body onload="checkNotice();pagingFun();">
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
            <div class="div1_textArea"><h2>게시판</h2></div>
          </div>
          <div class="div2">
            <div class="div2_1">
                <h2><%=classType %> 목록</h2>
                <form action="eachBoard.do" class="searchForm">
                	<input type="hidden" value="<%=request.getAttribute("classType")%>" id="boardClassNum" name="boardClassNum"/>
                	<input type="image" src="/image/searchBtn.png" value="검색" id="searchBtn" name="searchBtn">
                    <input type="search" id="searchBox" name="searchBox" placeholder="검색어를 입력해주세요.">
                	<select name="searchCond" id="searchCond">
                		<option value="boardTitle" selected="selected">글 제목</option>
                		<option value="boardCode">글 번호</option>
                		<option value="userName">작성자 이름</option>
                	</select>
                	
                </form>
                <div>
                <%if(list==null||list.size()==0){ %>
					<p style="text-align: center; margin-top: 20%">게시글이 없습니다.</p>
				<%}else{%>
                    <table id="boardTB">
                        <tr>
                            <th style="width: 10%;">글 번호</th>
                            <th style="width: 65%;">제목</th>
                            <th style="width: 10%;">작성자</th>
                            <th style="width: 10%;">날짜</th>
                            <th style="width: 5%;">조회수</th>
                        </tr>
				<%for(int i = 0 ; i < list.size(); i++){ %>
                        <tr>
                            <td><%=list.get(i).getBoardCode() %></td>
                            <td><a href="getBoard.do?boardCode=<%=list.get(i).getBoardCode()%>&statusNum=1"><%=list.get(i).getBoardTitle() %></a></td>
                            <td><%=list.get(i).getUserName() %></td>
							<td><%=list.get(i).getWriteDate() %></td>
							<td><%=list.get(i).getViews() %></td>
                        </tr>
				<%}%>
					</table>
				<%} %>
			</div>
                <div class="pagingA">
	                <input type="image" src="/image/left double arrow.png" id="arrBtn01" name="arrBtn01" onclick="location.href='eachBoard.do?boardClassNum=<%=request.getAttribute("classType")%>&pagingNum=0'">
	                <input type="image" src="/image/left arrow.png" id="arrBtn02" name="arrBtn02" onclick="location.href='eachBoard.do?boardClassNum=<%=request.getAttribute("classType")%>&pagingNum=<%=(Integer)request.getAttribute("pageNum")-1%>'">
	                <p id="pTagInner" style="display: inline;"></p>
	                <input type="image" src="/image/right arrow.png" id="arrBtn03" name="arrBtn03" onclick="location.href='eachBoard.do?boardClassNum=<%=request.getAttribute("classType")%>&pagingNum=<%=(Integer)request.getAttribute("pageNum")+1%>'">
	                <input type="image" src="/image/right double arrow.png" id="arrBtn04" name="arrBtn04" onclick="location.href='eachBoard.do?boardClassNum=<%=request.getAttribute("classType")%>&pagingNum=<%=(Integer)request.getAttribute("pagingCntRlt")-1%>'">
                </div>
            </div>
            <div class="div2_2">
                <pre style="font-size: 13px;"><b>※ 부적절한 제목/내용의 게시글은 관리자에 의해 삭제될 수 있습니다.
※ 점검을 위해 사진 업로드 기능을 일시적으로 비활성화 했습니다. 양해 부탁드립니다.
※ 글 등록 시 특수문자가 등록되지 않는 버그가 발견되어 현재 수정 중입니다.</b></pre>
                <input type="image" src="/image/my writing.png" class="etcBtn" id="my_writing" name="my_writing" onclick="location.href='eachBoard.do?boardClassNum=<%=request.getAttribute("classType")%>&mw=1'">
                <input type="image" src="/image/list.png" class="etcBtn" id="list" name="list" onclick="location.href='eachBoard.do?boardClassNum=<%=request.getAttribute("classType")%>'">
                <input type="image" src="/image/writing.png" class="etcBtn" id="writing" name="writing" 	onclick="location.href='insertBoardForFree.do?boardClass=<%=request.getAttribute("classType")%>'">
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