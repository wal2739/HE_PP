<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/login2H.css?ver=3">
<script src="/js/jquery-3.6.0.min.js"></script>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
<title>회원가입</title>
</head>
<script type="text/javascript">



function idcheck01() {
	var re = /^[a-zA-Z0-9]{4,12}$/; 
	var id = document.getElementById("userId").value;
	if(id!=""&&re.test(id)){
		window.name="parentForm";
		window.open("IdCheck.jsp","chkForm","width=500,height=300,resizable=no,scrollbars=no");
	}else if(id==""){
		alert('아이디를 입력 하신 후 중복확인을 눌러주십시오.')
		return false;
	}else if(!re.test(id)){
		alert('아이디는 4~12자의 영문 대소문자와 숫자로만 입력');
		return false;
	}
}
function inputidcheck() {
	document.getElementById("idcheck").value = 0;
}
function validate() {
	var re = /^[a-zA-Z0-9]{4,12}$/; // 아이디와 패스워드가 적합한지 검사할 정규식
	var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;// 이메일이 적합한지 검사할 정규식
	
	var id = document.getElementById("userId").value;
	var pw = document.getElementById("userPW").value;
	var pwcheck = document.getElementById("userPWCheck").value;
	var name = document.getElementById("userName").value;
	var cell = document.getElementById("userCell01").value + "-" + document.getElementById("userCell02").value + "-" + document.getElementById("userCell03").value;
	var add01 = document.getElementById("userAdd01").value;
	var add02 = document.getElementById("userAdd02").value;
	var email = document.getElementById("userEmail").value;
	var idcheck = document.getElementById("idcheck").value;
	console.log(cell);
	
	if(!re.test(id)){
		alert('아이디는 4~12자의 영문 대소문자와 숫자로만 입력');
		console.log('아이디 오류');
		return false;
	}
	
	if(idcheck!=1){
		alert("아이디 중복확인을 해주세요.")	
		return false;
	}//안됨
	
	if(!re.test(pw)){
		alert('패스워드는 4~12자의 영문 대소문자와 숫자로만 입력');
		console.log('비밀번호 오류');
		return false;
	}
    

    if(forms.userPW.value != forms.userPWCheck.value) {
        alert("비밀번호가 다릅니다. 다시 확인해 주세요.");
        forms.userPWCheck.value = "";
        forms.userPWCheck.focus();
		console.log('비밀번호 불일치 오류');
        return false;
    }//
    
    if(cell.value=="") {
        alert("전화번호를 입력해 주세요");
		console.log('핸드폰번호 오류');
        email.focus();
        return false;
    }
    
    if(add01.value=="") {
        alert("주소를 입력해 주세요");
		console.log('주소 오류');
        email.focus();
        return false;
    }
    if(email.value=="") {
        alert("이메일을 입력해 주세요");
		console.log('이메일 오류');
        email.focus();
        return false;
    }

    if(!re2.test(email)) {
    	alert("적합하지 않은 이메일 형식입니다.");
    	console.log('이메일 형식 오류');
        return false;
    }

    if(forms.userName.value=="") {
        alert("이름을 입력해 주세요");
        forms.userName.focus();
        return false;
    }
    if(forms.userClass[0].checked==false &&
    		forms.userClass[1].checked==false &&
    		forms.userClass[2].checked==false ) {
            alert("회원 구분을 골라주세요");
            return false;
    }if(forms.checkbox1[0].checked==false ||
    		forms.checkbox2[0].checked==false ||
    		forms.checkbox3[0].checked==false ) {
            alert("이용 약관을 모두 동의 하셔야 회원가입이 가능합니다");
            return false;
    }
    document.getElementById('userCell').value = cell;
}

</script>

<body>
	<section class="login-form">
		<h1>회원가입</h1>
		<form action="newUser.do" name="forms" id="forms" onsubmit="return validate();">
			<div class="top_int-area">
				<div class="int-area">
			        <input type="text" name="userName" id="userName" maxlength="12" autocomplete="off" required/>
			        <label for="userName">사용자 이름 *</label>
			    </div>
				<br />
				<div class="int-area">
			        <input type="text" name="userId" id="userId" maxlength="12" onkeydown="inputidcheck()" autocomplete="off" required/>
			        <label for="userId">아이디 *</label>
			    </div>
			    <div class="check-area">
				    <button onclick="idcheck01();">중복 체크</button>
				    <input type="hidden" value="0" id="idcheck" name="idcheck"/>
			    </div>
			    <br />
			    <!--비밀번호 클래스-->
			    <div class="int-area">
			        <input type="password" name="userPW" id="userPW" maxlength="14" autocomplete="off" required/>
			        <label for="userPW">비밀번호 *</label>
			    </div>
			    <div class="int-area">
			        <input type="password" name="userPWCheck" id="userPWCheck" maxlength="14" autocomplete="off" required/>
			        <label for="userPWCheck">비밀번호 확인 *</label>
			    </div>
			    <br />
			    <!-- 핸드폰 버호 클래스 -->
			    <div class="int-area">
			        <input type="text" name="userCell01" id="userCell01" maxlength="3" autocomplete="off" required/>
			        <label for="userCell01">휴대폰 번호 *</label>
			    </div>
			    -
			    <div class="int-area">
			        <input type="text" name="userCell02" id="userCell02" maxlength="4" autocomplete="off" required/>
			    	<label for="userCell02">번호 입력 *</label>
			    </div>
			    -
			    <div class="int-area">
			        <input type="text" name="userCell03" id="userCell03" maxlength="4" autocomplete="off" required/>
			    	<label for="userCell03">번호 입력 *</label>
			    </div>
			    <input type="hidden" id="userCell" name="userCell"/>
			    <br />
			    <!-- 주소 클래스 -->
				<div class="int-area">
			        <input type="text" name="userAdd01" id="userAdd01" maxlength="14" autocomplete="off" required/>
			    	<label for="userAdd01">주소 *</label>
			    </div>
			    <div class="int-area">
			        <input type="text" name="userAdd02" id="userAdd02" maxlength="32" autocomplete="off" required/>
			    	<label for="userAdd02">상세 주소 *</label>
			    </div>
			    <br />
			    <!-- 이메일 클래스 -->
			    <div class="int-area">
			        <input type="text" name="userEmail" id="userEmail" maxlength="40" autocomplete="off" required/>
			    	<label for="userEmail">메일 *</label>
			    </div>
			    <br />
			    <!-- 회원 구분 클래스 -->
			    <div class="radio-area">
			    	<p style="font-size: 18px;" id="top_p"><b>회원 구분 선택</b></p>
			       	<p id="radio_p">사업자</p><input type="radio" value=1 name="userClass" id="userClass"/>
					<p id="radio_p">중계/협회</p><input type="radio" value=2 name="userClass" id="userClass"/>
					<p id="radio_p">통합</p><input type="radio" value=3 name="userClass" id="userClass"/>
			    </div>
			    <br />
			    <!-- 약관 클래스 -->
			    <div class="radio-area">
			    	<p style="font-size: 18px;" id="top_p"><b>약관 동의</b></p>
					
					<br />
					<p id="radio_p">동의함</p><input type="radio" value=1 name="checkbox1" id="checkbox1"/>
					<p id="radio_p">동의하지않음</p><input type="radio" value=0 name="checkbox1" id="checkbox1"/>
			    </div>
			    <br />
			    <div class="radio-area">
					
			       	<br />
			       	<p id="radio_p">동의함</p><input type="radio" value=1 name="checkbox2" id="checkbox2"/>
					<p id="radio_p">동의하지않음</p><input type="radio" value=0 name="checkbox2" id="checkbox2"/>
			    </div>
			    <br />
			    <div class="radio-area">
					
			       	<br />
			       	<p id="radio_p">동의함</p><input type="radio" value=1 name="checkbox3" id="checkbox3"/>
					<p id="radio_p">동의하지않음</p><input type="radio" value=0 name="checkbox3" id="checkbox3"/>
			    </div>
			    <!--가입 버튼 클래스-->
			    <div class="btn-area">
			    	<button type="submit">회원가입</button>
			    </div>
			    <!-- 텍스트 클래스 -->
				<div class="caption">
			    	<a href="login.jsp">아이디가 있으신가요?</a><br /><br />
			    	<a href="#">고객센터</a>
			    	<p style="margin-top: 30px; font-size: 12px; color: red;">※ (  *  ) 표시는 필수 입력입니다. </p>
			    	<p style="margin-top: 10px;font-size: 12px; color: red;">※ 개인 정보 허위 기재시 처벌의 대상이 될 수 있습니다. </p>
			    </div>
			</div>
		</form>
	</section>	
	
</body>
</html>