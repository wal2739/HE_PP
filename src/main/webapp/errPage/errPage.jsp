<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" isErrorPage="true"%>
    <%!
		public String getClientIP(HttpServletRequest request) {
		    String ip = request.getHeader("X-FORWARDED-FOR"); 
		    
		    if (ip == null || ip.length() == 0) {
		        ip = request.getHeader("Proxy-Client-IP");
		    }
		 
		    if (ip == null || ip.length() == 0) {
		        ip = request.getHeader("WL-Proxy-Client-IP");  // 웹로직
		    }
		 
		    if (ip == null || ip.length() == 0) {
		        ip = request.getRemoteAddr() ;
		    }
		    
		    return ip;
		 
		}
	%>
 
<jsp:include page="../top_menu.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러</title>
</head>
<script>
	function show_err() {
		document.getElementById('errPage_now_h1').innerHTML='우연이 아니라면 당신은 제 코드를 훔쳐 보았군요!\n'+'<%=getClientIP(request) %>님!';
		document.getElementById('errPage_now_h3').innerHTML='<%=exception.getClass().getName()%>';
		<%!
		public static String getRemoteAddr(HttpServletRequest request) {
		        String ip = null;
		        ip = request.getHeader("X-Forwarded-For");
		        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
		            ip = request.getHeader("Proxy-Client-IP"); 
		        } 
		        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
		            ip = request.getHeader("WL-Proxy-Client-IP"); 
		        } 
		        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
		            ip = request.getHeader("HTTP_CLIENT_IP"); 
		        } 
		        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
		            ip = request.getHeader("HTTP_X_FORWARDED_FOR"); 
		        }
		        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
		            ip = request.getHeader("X-Real-IP"); 
		        }
		        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
		            ip = request.getHeader("X-RealIP"); 
		        }
		        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
		            ip = request.getHeader("REMOTE_ADDR");
		        }
		        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
		            ip = request.getRemoteAddr(); 
		        }
		 return ip;
	    }
		%>
		console.log('<%=getRemoteAddr(request)%>');
	}
</script>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="/css/main.css?ver=14">
<style>
	.top_div {
		width : 100%;
		height : 100vh;
		display: flex;
		vertical-align: middle;
		text-align: center;
		justify-content: center;
		align-items: center;
	}
	
	.mid_div {
		display : flex;
		width: 90%;
		height: 90%;
		justify-content: center;
		align-items: center;
	}
	.btm_div {
		width: 80%;
		height: 80%;
	}
	img {
		width : 695px;
		height: 350px;
	}
	.err_btn { 
		position: absolute; 
		right: 0; 
		bottom : 0;
		text-align:center; 
		width: 50px;
		height: 50px;
		cursor: pointer;
	}
	button{
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
	
	button:hover {
		background-color: #2EE59D;
		box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
		color: #fff;
		transform: translateY(-7px);
	}
</style>
<body>
	<div class="top_div">
		<div class="mid_div">
			<div class="btm_div">
				<img src="/image/project_logo.jpg" alt="로고" />
				<h1 id="errPage_now_h1">앗! 무엇인가 잘 못 되었군요!</h1>
				<h3 id="errPage_now_h3">에러 페이지입니다.</h3>
				<h4><button onclick="location.href='main.do'">홈으로</button><button onclick="alert('고객센터 연결');">고객센터</button></h4>
			</div>
		</div>
	</div>
	<div>
		<div class="err_btn" onclick="show_err();"></div>
	</div>
</body>
</html>