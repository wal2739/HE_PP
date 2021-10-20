<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.HEProject.he.receipt.Receipt_ViewVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    <%Receipt_ViewVO vo = (Receipt_ViewVO)request.getAttribute("vo"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영수증</title>
</head>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var currentPosition = parseInt($(".btm_btn").css("top"));
	$(window).scroll(function() {
		var position = $(window).scrollTop();
		$(".btm_btn").stop().animate({"top":position+currentPosition+"px"},300);
	});
});
function capture() {
	
}

var div;
var initBody;
function capture() {
	   window.print();
}

/* function capture()
{
   div = document.getElementById('main_div');
    
   window.onbeforeprint = beforePrint;
   window.onafterprint = afterPrint;
   window.print();
}

function beforePrint()
{
   initBody = document.body.innerHTML;
   document.body.innerHTML = div.innerHTML;
}

function afterPrint()
{
   document.body.innerHTML = initBody;
} */
</script>
<style>
	* { 
	font-family: 'Spoqa Han Sans Neo', 'sans-serif'; 	
	}
	body {
	  font-family: 'Rubik', sans-serif;
	  margin: 0;
	  padding: 0;
	  background: url("/image/bg_body.png") repeat center;
	  -webkit-background-size: cover;
	  background-size: cover;
	  background-position: center center;
	  background-repeat: repeat;
	}
    body {
        width: 900px;
        height: 1200px;
    }
    .top_div {
    	vertical-align : middle;
        width: 100%;
        height: 100%;
        text-align: center;
        align-items: center;
        display: flex;
    }
    .main_div{
        width: 100%;
        height: 90%;
        text-align: center;
        align-items: center;
        display: flex;
    }
    .sub_div{
        display: flex;
        width: 80%;
        height: 90%;
        border: 1px solid black;
        margin: auto;
        background: white;
    }
    .outer_Receipt {
        display: table-cell;
        border: 1px solid black;
        width: 80%;
        height: auto;
        margin: auto;
        vertical-align: middle;
    }
    table{
        width: 100%;
        margin: auto;
    }
    th,td {
        border: 0.1px solid black;
    }
    th{
        background-color: #D9D9D9;
    }
    .title_th div{
        display: inline-block;
        width: 100%;
        height: 20%;
    }
    .div2{
        vertical-align: middle;
        align-items: center;
        text-align: center;
    }
    .div1_p{
        float: left;
        margin-left: 10px;
    }
    .div2_p{
        display: inline-block;
        font-size: 25px;
    }
    .div3_p{
        float: right;
        margin-right: 10px;
    }
    .p_div p{
        font-size: 10px;
    }


	.btm_btn { 
		position: absolute; 
		right: 50%; 
		top : 3%;
		right : 50px;
		text-align:center; 
		width: 250px;
		height: 70px;
		display: flex;
	}
	button {
		width: 120px;
		height: 40px;
		font-family: 'Roboto', sans-serif;
		font-size: 11px;
		text-transform: uppercase;
		letter-spacing: 2.5px;
		font-weight: 500;
		color: #000;
		background-color: #fff;
		border: 0.5px solid black;
		border-radius: 45px;
		box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
		transition: all 0.3s ease 0s;
		cursor: pointer;
		outline: none;
		margin-left: 10px;
		margin-top: 15px;
	}
	button:hover {
		background-color: #2EE59D;
		box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
		color: #fff;
		transform: translateY(-7px);
	}
	@media print{
		.btm_btn{display: none;}
	}
</style>
<body>
	<div class="top_div">
		<div class="btm_btn">
	    	<button onclick="capture();">다운로드/<br />프린트</button>
	    	<button onclick="alert('고객센터 연결');">고객센터</button>
	    </div>
		<div class="main_div" id="main_div">
	        <div class="sub_div" id="sub_div">
	            <div class="outer_Receipt">
	                <table>
	                    <tr>
	                        <th class="title_th" colspan="5">
	                            <div class="div1"><p class="div1_p">분류 번호 : <%=vo.getWorkCode() %> </p></div>
	                            <div class="div2"><P class="div2_p">정산 확인서</P></div>
	                            <div class="div3"><p class="div3_p"><%=request.getAttribute("classType").equals("assUsRn") ? vo.getAssboName() : vo.getIndiboName()%> 귀하</p></div>
	                            <!-- <div class="div1"><p style="float: left; margin-left: 5px;">분류 번호 : W99999999 </p></div>
	                            <div class="div2"><P style="font-size: 30px;">영수증</P></div>
	                            <div class="div3"><p style="float: right; margin-right: 5px;">귀하</p></div> -->
	                        </th>
	                    </tr>
	                    <tr> 
	                        <th rowspan="5" style="width: 50px;">중계자</th>
	                    </tr>
	                    <tr>
	                        <th>사업자 <br>등록 번호</th>
	                        <td colspan="3"><%=vo.getAssBoNumber() %></td>
	                    </tr>
	                    <tr>
	                        <th style="width: 130px;">상&nbsp;&nbsp;&nbsp;호</th>
	                        <td><%=vo.getAsscpName() %></td>
	                        <th style="width: 90px;">성&nbsp;&nbsp;&nbsp;명</th>
	                        <td><%=vo.getAssboName() %></td>
	                    </tr>
	                    <tr>
	                        <th>사업장<br>주소</th>
	                        <td colspan="3"><%=vo.getAssboadd01() %>/<%=vo.getAssboadd02() %></td>
	                    </tr>
	                    <tr>
	                        <th>업&nbsp;&nbsp;&nbsp;태</th>
	                        <td><%=vo.getAsstop02() %></td>
	                        <th>업&nbsp;&nbsp;&nbsp;종</th>
	                        <td><%=vo.getAsstop01() %></td>
	                    </tr>
	                </table>
	                <table style="height: 13%;">
	                    <tr>
	                        <th rowspan="5" style="width: 50px;">공급자</th>
	                    </tr>
	                    <tr>
	                        <th>사업자 <br>등록 번호</th>
	                        <td colspan="3"><%=vo.getIndiBoNumber() %></td>
	                    </tr>
	                    <tr>
	                        <th style="width: 130px;">상&nbsp;&nbsp;&nbsp;호</th>
	                        <td><%=vo.getIndicpName() %></td>
	                        <th style="width: 90px;">성&nbsp;&nbsp;&nbsp;명</th>
	                        <td><%=vo.getIndiboName() %></td>
	                    </tr>
	                    <tr>
	                        <th>사업장<br>주소</th>
	                        <td colspan="3"><%=vo.getIndiboadd01() %>/<%=vo.getIndiboadd02() %></td>
	                    </tr>
	                    <tr>
	                        <th>업&nbsp;&nbsp;&nbsp;태</th>
	                        <td><%=vo.getInditop02() %></td>
	                        <th>업&nbsp;&nbsp;&nbsp;종</th>
	                        <td><%=vo.getInditop01() %></td>
	                    </tr>
	                </table>
	                <%DecimalFormat formatter = new DecimalFormat("###,###"); %>
	                <table style="height: 10%;">
	                    <tr>
	                        <th>작성&nbsp;&nbsp;일자</th>
	                        <th>공급 대가 총액</th>
	                        <th>비&nbsp;&nbsp;&nbsp;고</th>
	                    </tr>
	                    <tr>
	                        <td>
	                        	<%Date todayDate = new Date(); SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd"); %>
	                        	<%=date.format(todayDate) %>
	                        </td>
	                        <td>&#8361;<%=formatter.format(vo.getWorkAmount()+vo.getAa()) %></td>
	                        <td><%=vo.getRelative()==null ? "-" : vo.getRelative() %></td>
	                    </tr>
	                </table>
	                <table>
	                    <tr>
	                        <th colspan="5" style="height: 50px;">공급 내역</th>
	                    </tr>
	                    <tr>
	                        <th>월/일</th>
	                        <th>품&nbsp;&nbsp;&nbsp;목</th>
	                        <th>수&nbsp;량(시간)</th>
	                        <th>단&nbsp;&nbsp;&nbsp;가</th>
	                        <th>금&nbsp;&nbsp;&nbsp;액</th>
	                    </tr>
	                    <tr>
	                        <td><%=vo.getWorkDate() %></td>
	                        <td>작&nbsp;&nbsp;&nbsp;업</td>
	                        <td><%=vo.getWorkTime() %></td>
	                        <td>&#8361;<%=formatter.format(vo.getWorkAmount()) %></td>
	                        <td>&#8361;<%=formatter.format(vo.getWorkAmount()) %></td>
	                    </tr>
	                    <%if(vo.getEs()==1){ %>
	                    <tr>
	                        <td><%=vo.getWorkDate() %></td>
	                        <td>추가 작업</td>
	                        <td><%=vo.getEt() %></td>
	                        <td>&#8361;<%=formatter.format(vo.getAa()) %></td>
	                        <td>&#8361;<%=formatter.format(vo.getAa()) %></td>
	                    </tr>
	                    <%} %>
	                    <tr>
	                        <th></th>
	                        <th colspan="2">합계</th>
	                        <th colspan="2">&#8361;<%=formatter.format(vo.getWorkAmount()+vo.getAa()) %></th>
	                    </tr>
	                </table>
	                <div class="p_div">
	                    <p><b>※ 위 금액을 영수(청구)함</b></p>
	                    <p style="bottom: 0;"><b>Copyright © (주)중장비서비스 [ 고객센터 070-7777-7777 ]</b></p>
	                </div>
	            </div>
	        </div>
	    </div>

	</div> 
</body>
</html>