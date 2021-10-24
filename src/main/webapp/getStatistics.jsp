<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.Date"%>
<%@page import="com.HEProject.he.workInfo.WorkInfoVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
        <%
    	Object userClassData = session.getAttribute("userClass");
		List<WorkInfoVO> list = (List)request.getAttribute("list");;
		Calendar cal = Calendar.getInstance();
		boolean index_set=true;
		int nowMonth= cal.get(Calendar.MONTH)+1; /* 이번 달 */
		int[] work_Cnt = new int[6]; /* 월별 작업 수 */
		int[] workAmount_Sum = new int[6]; /* 월별 총 수입 */
		int[] workMaxAmount = new int[6]; /* 작업 최대 수당 */
		for(int i = 0 ; i < list.size(); i++){
			int monthDt = list.get(i).getWorkDate().getMonth()+1;/* 데이터의 월 구하기 */

			if(nowMonth==monthDt){
				workAmount_Sum[0] = workAmount_Sum[0] + list.get(i).getWorkAmount();
				work_Cnt[0]=work_Cnt[0]+1;
				workMaxAmount[0] = workMaxAmount[0]>=list.get(i).getWorkAmount() ? workMaxAmount[0] : list.get(i).getWorkAmount();
				
			}else if((nowMonth-1)==monthDt){
				workAmount_Sum[1] = workAmount_Sum[1] + list.get(i).getWorkAmount();
				work_Cnt[1]=work_Cnt[1]+1;
				workMaxAmount[1] = workMaxAmount[1]>=list.get(i).getWorkAmount() ? workMaxAmount[1] : list.get(i).getWorkAmount();
				
			}else if((nowMonth-2)==monthDt){
				workAmount_Sum[2] = workAmount_Sum[2] + list.get(i).getWorkAmount();
				work_Cnt[2]=work_Cnt[2]+1;
				workMaxAmount[2] = workMaxAmount[2]>=list.get(i).getWorkAmount() ? workMaxAmount[2] : list.get(i).getWorkAmount();

			}else if((nowMonth-3)==monthDt){
				workAmount_Sum[3] = workAmount_Sum[3] + list.get(i).getWorkAmount();
				work_Cnt[3]=work_Cnt[3]+1;
				workMaxAmount[3] = workMaxAmount[3]>=list.get(i).getWorkAmount() ? workMaxAmount[3] : list.get(i).getWorkAmount();

			}else if((nowMonth-4)==monthDt){
				workAmount_Sum[4] = workAmount_Sum[4] + list.get(i).getWorkAmount();
				work_Cnt[4]=work_Cnt[4]+1;
				workMaxAmount[4] = workMaxAmount[4]>=list.get(i).getWorkAmount() ? workMaxAmount[4] : list.get(i).getWorkAmount();

			}else if((nowMonth-5)==monthDt){
				workAmount_Sum[5] = workAmount_Sum[5] + list.get(i).getWorkAmount();
				work_Cnt[5]=work_Cnt[5]+1;
				workMaxAmount[5] = workMaxAmount[5]>=list.get(i).getWorkAmount() ? workMaxAmount[5] : list.get(i).getWorkAmount();

			}
		}
		int[] work_avg = new int[6];
		for(int i = 0; i < 6; i++){
			if(workAmount_Sum[i]==0||work_Cnt[i]==0){
				work_avg[i] = 0;
			}else {
				work_avg[i] = workAmount_Sum[i]/work_Cnt[i];
			}
		}
		System.out.println(work_avg[3] + ", " + workAmount_Sum[3] + ", " + work_Cnt[3] + ", " + workMaxAmount[3]);
		
		
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현황/그래프</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="/css/main.css?ver=22">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="/js/main.js?ver=10" ></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawVisualization01);
function drawVisualization01() {
    // Some raw data (not necessarily accurate)
    var data01 = google.visualization.arrayToDataTable([
      ['월', '월간 <%=userClassData.equals(1)?"작업량":"등록 작업량"%>'],
      ['<%=cal.get(Calendar.YEAR)+"/"+ (nowMonth-5)%>',  <%=work_Cnt[5]%>],
      ['<%=cal.get(Calendar.YEAR)+"/"+ (nowMonth-4)%>',  <%=work_Cnt[4]%>],
      ['<%=cal.get(Calendar.YEAR)+"/"+ (nowMonth-3)%>',  <%=work_Cnt[3]%>],
      ['<%=cal.get(Calendar.YEAR)+"/"+ (nowMonth-2)%>',  <%=work_Cnt[2]%>],
      ['<%=cal.get(Calendar.YEAR)+"/"+ (nowMonth-1)%>',  <%=work_Cnt[1]%>],
      ['<%=cal.get(Calendar.YEAR)+"/"+ nowMonth%>',  <%=work_Cnt[0]%>]
    ]);

    var options01 = {
      title : '월간 <%=userClassData.equals(1)?"작업량":"등록 작업량"%>',
      vAxis: {title: '<%=userClassData.equals(1)?"작업":"등록 작업량"%>'},
      hAxis: {title: '월'},
      seriesType: 'line',
    };

    var chart01 = new google.visualization.ComboChart(document.getElementById('chart_div01'));
    chart01.draw(data01, options01);
  }
  google.charts.setOnLoadCallback(drawVisualization02);
  function drawVisualization02() {
    // Some raw data (not necessarily accurate)
    var data02 = google.visualization.arrayToDataTable([
      ['월', '월 <%=userClassData.equals(1)?"수입":"비용"%>', '건당 최고 <%=userClassData.equals(1)?"금액":"비용"%>', '작업당 평균 <%=userClassData.equals(1)?"수입":"비용"%>'],
      ['<%=cal.get(Calendar.YEAR)+"/"+ (nowMonth-5)%>',  <%=workAmount_Sum[5]%>, <%=workMaxAmount[5]%>, <%=work_avg[5]%>],
      ['<%=cal.get(Calendar.YEAR)+"/"+ (nowMonth-4)%>',  <%=workAmount_Sum[4]%>, <%=workMaxAmount[4]%>, <%=work_avg[4]%>],
      ['<%=cal.get(Calendar.YEAR)+"/"+ (nowMonth-3)%>',  <%=workAmount_Sum[3]%>, <%=workMaxAmount[3]%>, <%=work_avg[3]%>],
      ['<%=cal.get(Calendar.YEAR)+"/"+ (nowMonth-2)%>',  <%=workAmount_Sum[2]%>, <%=workMaxAmount[2]%>, <%=work_avg[2]%>],
      ['<%=cal.get(Calendar.YEAR)+"/"+ (nowMonth-1)%>',  <%=workAmount_Sum[1]%>, <%=workMaxAmount[1]%>, <%=work_avg[1]%>],
      ['<%=cal.get(Calendar.YEAR)+"/"+ nowMonth%>',  <%=workAmount_Sum[0]%>, <%=workMaxAmount[0]%>, <%=work_avg[0]%>]
    ]);

    var options02 = {
      title : '월간 통계 (단위 : 만)',
      vAxis: {title: '<%=userClassData.equals(1)?"수입":"작업 비용"%>'},
      hAxis: {title: '월'},
      seriesType: 'bars',
      series: {2: {type: 'line'}}
    };

    var chart01 = new google.visualization.ComboChart(document.getElementById('chart_div02'));
    chart01.draw(data02, options02);
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
  height: auto;
  overflow: auto;
  margin : 0 auto 30px auto;
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
  overflow: hidden;
  text-align: center;
}

#chart_div01, #chart_div02{
	display: inline-block;
}

.inpuTBDiv {
	width: 100%;
	height: calc(100%-30px);
}
#inputTB {
    width: 100%;
    border-right: 0.5px solid #d7d7d7;
    border-left: 0.5px solid #d7d7d7;
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
  white-space:normal;
}

#top_tr th{
	position: sticky;
	top: 0px;
}
#btm_tr th{
	position: sticky;
	bottom: 0;
}
.div2_2 {
  width: 85%;
  height: auto;
  margin : 0 auto 0 auto;
  border-top: 0.5px solid black;
}
.div2_2_1 {
  width: 100%;
  height: 80%;
}
.div2_2_2 {
  width: 100%;
  height: 100%;
  padding-left: 3px;
  padding-top: 5px;
  
}

.div3{
  display: inline-block;
  width: 100%;
  height: 200px;

}
.div2_2_2_btn {
	top: 20%;
}
.div2_2_2_btn button{
	width: 120px;
	height: 30px;
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

.div2_2_2_btn button:hover {
	background-color: #2EE59D;
	box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
	color: #fff;
	transform: translateY(-7px);
}



p {
	font-size: 17px;
	color: red;
	font-weight: bold;
}
.check_btn{
	display : inline-block;
	margin : 0 auto;
	background-color: #72B08E;
	color: white;
	border: none;
	width: 90px;
	height: 30px;
}

.check_btn:hover {
	background-color: #4E7861;
	box-shadow: 1px 1px 1px 1px #3C5C4A;
}

.check_btn:active {
	text-shadow: 4px 2px 2px black;
}
.check_btn:disabled {
	background: #517D65;
	color: red;
}
/* #receiptInfo {
	width: 950px;
	height: 1250px;
} */
</style>
<body>
	<jsp:include page="top_menu.jsp" />
	<jsp:include page="floating_module.jsp" />
	<jsp:include page="boCheck_module.jsp" />
	<main>
	<div class="mainDiv">
		<div class="div1">
			<div class="div1_textArea">
				<h2>통계</h2>
			</div>
		</div>
		<div class="div2">
			<div class="div_2_back">
				<div class="div2_1">
					<div class="div2_1_1">
						<h2 id="div2_1_1_h2">통계 및 현황</h2>
					</div>
					<div class="div2_1_2">
						<div id="chart_div01" style="width: 1000px; height: 500px;"></div>
						<div id="chart_div02" style="width: 1000px; height: 500px;"></div>
					</div>
				</div>
				<div class="div2_2">
					<div class="div2_2_2">
						<div class="div2_2_2_btn">
							<p>※ 취소 작업을 제외한 모든 작업(미발주 포함)을 기반으로 그래프가 생성되오니, 참고 부탁드립니다.</p>
							<p>※ 통계 자료는 참고용으로만 이용 해주세요.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="div3"></div>
	</div>
	</main>
</body>
</html>