<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/login2H.css?ver=4">
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
<style>
body {
  height: 300vh;
}
body::before {
  height : 300vh;
}
</style>
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
					<textarea name="#" id="#" rows="60" readonly>
제 1 장 총칙
제 1 조 (목적)
1. 본 약관은 중장비서비스 사이트가 제공하는 모든 서비스(이하 "서비스")의 이용조건 및 절차, 이용자와 중장비서비스 사이트의 권리, 의무, 책임사항과 기타 필요한 사항을 규정함을 목적으로 합니다.
제 2 조 (약관의 효력과 변경)
1. 중장비서비스 사이트는 귀하가 본 약관 내용에 동의하는 경우 중장비서비스 사이트의 서비스 제공 행위 및 귀하의 서비스 사용 행위에 본 약관이 우선적으로 적용됩니다.
2. 중장비서비스 사이트는 본 약관을 사전 고지 없이 변경할 수 있고 변경된 약관은 중장비서비스 사이트 내에 공지하거나 e-mail을 통해 회원에게 공지하며, 공지와 동시에 그 효력이 발생됩니다.
이용자가 변경된 약관에 동의하지 않는 경우, 이용자는 본인의 회원등록을 취소 (회원탈락)할 수 있으며 계속 사용의 경우는 약관 변경에 대한 동의로 간주 됩니다.
제 3 조 (약관 외 준칙)
1. 본 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법, 정보통신윤리위원회심의규정, 정보통신 윤리강령, 프로그램보호법 및 기타 관련 법령의 규정에 의합니다.
제 4 조 (용어의 정의)
본 약관에서 사용하는 용어의 정의는 다음과 같습니다.

1. 이용자 : 본 약관에 따라 중장비서비스 사이트가 제공하는 서비스를 받는 자.
2. 가입 : 중장비서비스 사이트가 제공하는 신청서 양식에 해당 정보를 기입하고, 본 약관에 동의하여 서비스 이용계약을 완료시키는 행위.
3. 회원 : 중장비서비스 사이트에 개인 정보를 제공하여 회원 등록을 한 자로서 중장비서비스 사이트가 제공하는 서비스를 이용할 수 있는 자.
4. 비밀번호 : 이용자와 회원ID가 일치하는지를 확인하고 통신상의 자신의 비밀보호를 위하여 이용자 자신이 선정한 문자와 숫자의 조합.
5. 탈퇴 : 회원이 이용계약을 종료시키는 행위.
제 2 장 서비스 제공 및 이용
제 5 조 (이용계약의 성립)
1. 이용계약은 신청자가 온라인으로 중장비서비스 사이트에서 제공하는 소정의 가입신청 양식에서 요구하는 사항을 기록하여 가입을 완료하는 것으로 성립됩니다.
2. 중장비서비스 사이트는 다음 각 호에 해당하는 이용계약에 대하여는 가입을 취소할 수 있습니다.
① 다른 사람의 명의를 사용하여 신청하였을 때
② 이용계약 신청서의 내용을 허위로 기재하였거나 신청하였을 때
③ 다른 사람의 중장비서비스 사이트 서비스 이용을 방해하거나 그 정보를 도용하는 등의 행위를 하였을 때
④ 중장비서비스 사이트를 이용하여 법령과 본 약관이 금지하는 행위를 하는 경우
⑤ 기타 중장비서비스 사이트가 정한 이용신청요건이 미비 되었을 때
제 6 조 (회원정보 사용에 대한 동의)
1. 회원의 개인정보는 공공기관의 개인정보보호에 관한 법률에 의해 보호됩니다.
2. 중장비서비스 사이트의 회원 정보는 다음과 같이 사용, 관리, 보호됩니다.
① 개인정보의 사용 : 중장비서비스 사이트는 서비스 제공과 관련해서 수집된 회원의 신상정보를 본인의 승낙 없이 제3자에게 누설, 배포하지 않습니다.
단, 전기통신기본법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있거나 정보통신윤리 위원회의 요청이 있는 경우 또는 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우, 귀하가 중장비서비스 사이트에 제공한 개인정보를 스스로 공개한 경우에는 그러하지 않습니다.
② 개인정보의 관리 : 귀하는 개인정보의 보호 및 관리를 위하여 서비스의 개인정보관리에서 수시로 귀하의 개인정보를 수정/삭제할 수 있습니다.
③ 개인정보의 보호 : 귀하의 개인정보는 오직 귀하만이 열람/수정/삭제 할 수 있으며, 이는 전적으로 귀하의 ID와 비밀번호에 의해 관리되고 있습니다.
따라서 타인에게 본인의 ID와 비밀번호를 알려주어서는 안되며, 작업 종료 시에는 반드시 로그아웃 해 주시기 바랍니다.
3. 회원이 본 약관에 따라 이용신청을 하는 것은, 중장비서비스 사이트가 신청서에 기재된 회원정보를 수집, 이용하는 것에 동의하는 것으로 간주됩니다.
제 7 조 (사용자의 정보 보안)
1. 가입 신청자가 중장비서비스 사이트 서비스 가입 절차를 완료하는 순간부터 귀하는 입력한 정보의 비밀을 유지할 책임이 있으며, 회원의 ID와 비밀번호를 사용하여 발생하는 모든 결과에 대한 책임은 회원 본인에게 있습니다.
2. ID와 비밀번호에 관한 모든 관리의 책임은 회원에게 있으며, 회원의 ID나 비밀번호가 부정하게 사용 되었다는 사실을 발견한 경우에는 즉시 중장비서비스 사이트에 신고하여야 합니다. 신고를 하지 않음으로 인한 모든 책임은 회원 본인에게 있습니다. 종료하지 아니함으로써 제3자가 귀하에 관한 정보를 이용하게 되는 등의 결과로 인해 발생하는 손해 및 손실에 대하여 중장비서비스 사이트는 책임을 부담하지 아니합니다.
제 8 조 (서비스의 중지)
1. 중장비서비스 사이트는 이용자가 본 약관의 내용에 위배되는 행동을 한 경우, 임의로 서비스 사용을 제한 및 중지할 수 있습니다.
제 9 조 (서비스의 변경 및 해지)
1. 중장비서비스 사이트는 귀하가 서비스를 이용하여 기대하는 손익이나 서비스를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않으며, 회원이 본 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는 책임을 지지 않습니다. 의한 손해에 대하여 책임을 부담하지 아니합니다.
제 10 조 (게시물의 저작권)
1. 귀하가 게시한 게시물의 내용에 대한 권리는 귀하에게 있습니다.
2. 중장비서비스 사이트는 게시된 내용을 사전 통지 없이 편집, 이동할 수 있는 권리를 보유하며, 게시판운영 원칙에 따라 사전 통지 없이 삭제할 수 있습니다.
3. 귀하의 게시물이 타인의 저작권을 침해함으로써 발생하는 민, 형사상의 책임은 전적으로 귀하가 부담하여야 합니다.
제 3 장 의무 및 책임
제 11 조 (중장비서비스 사이트의 의무)
1. 중장비서비스 사이트는 회원의 개인 신상 정보를 본인의 승낙없이 타인에게 누설, 배포하지 않습니다. 다만, 전기통신관련법령 등 관계법령에 의하여 관계 국가기관 등의 요구가 있는 경우에는 그러하지 아니합니다.
제 12 조 (회원의 의무)
1. 회원 가입 시에 요구되는 정보는 정확하게 기입하여야 합니다. 또한 이미 제공된 귀하에 대한 정보가 정확한 정보가 되도록 유지, 갱신하여야 하며, 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.
2. 회원은 중장비서비스 사이트의 사전 승낙 없이 서비스를 이용하여 어떠한 영리행위도 할 수 없습니다.
제 4 장 기타
제 13 조 (양도금지)
1. 회원이 서비스의 이용권한, 기타 이용계약 상 지위를 타인에게 양도, 증여할 수 없습니다.
제 14 조 (손해배상)
1. 중장비서비스 사이트는 무료로 제공되는 서비스와 관련하여 회원에게 어떠한 손해가 발생하더라도 중장비서비스 사이트가 고의로 행한 범죄행위를 제외하고 이에 대하여 책임을 부담하지 아니합니다.
제 15 조 (면책조항)
1. 중장비서비스 사이트는 회원이나 제3자에 의해 표출된 의견을 승인하거나 반대하거나 수정하지 않습니다. 중장비서비스 사이트는 어떠한 경우라도 회원이 서비스에 담긴 정보에 의존해 얻은 이득이나 입은 손해에 대해 책임이 없습니다. 금전적 거래등과 관련하여 어떠한 책임도 부담하지 아니하고, 회원이 서비스의 이용과 관련하여 기대하는 이익에 관하여 책임을 부담하지 않습니다.
제 16 조 (재판관할)
1. 중장비서비스 사이트와 이용자 간에 발생한 서비스 이용에 관한 분쟁에 대하여는 대한민국 법을 적용하며, 본 분쟁으로 인한 소는 대한민국의 법원에 제기합니다.
					</textarea>
					<br />
					<p id="radio_p">동의함</p><input type="radio" value=1 name="checkbox1" id="checkbox1"/>
					<p id="radio_p">동의하지않음</p><input type="radio" value=0 name="checkbox1" id="checkbox1"/>
			    </div>
			    <br />
			    <div class="radio-area">
					<textarea name="#" id="#" rows="60" readonly>
중장비서비스은 「개인정보보호법」 제15조제1항제1호, 제17조제1항제1호, 제23조제1호, 제24조제1항 제1호에 따라
아래와 같이 개인정보의 수집. 이용에 관하여 귀하의 동의를 얻고자 합니다.

중장비서비스은 이용자의 사전 동의 없이는 이용자의 개인정보를 함부로 공개하지 않으며, 수집된 정보는 아래와 같이 이용하고 있습니다.
이용자가 제공한 모든 정보는 아래의 목적에 필요한 용도 이외로는 사용되지 않으며 이용 목적이 변경될 시에는 이를 알리고 동의를 구할 것입니다.

개인정보의 수집 및 이용 동의
1. 개인정보의 수집 및 이용 목적
가. 서비스 제공에 관한 업무 이행 - 컨텐츠 제공, 특정 맞춤 서비스 제공(마이페이지, 뉴스레터 등), 기업 애로상담
나. 회원관리
- 회원제 서비스 이용 및 제한적 본인 확인제에 따른 본인확인, 개인식별, 가입의사 확인, 가입 및 가입횟수 제한, 추후 법정 대리인 본인확인, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 공지사항 전달

2. 수집하는 개인정보의 항목
[개인회원 가입]
필수항목 : 아이디, 비밀번호, 이름, 핸드폰번호, 이메일, 암호화된 이용자 확인값(CI)
선택항목 : 이메일 수신여부, 문자수신여부, 웹진구독여부
[기업회원 가입>]
필수항목 : 아이디, 비밀번호, 담당자 이름, 담당자 전화번호, 핸드폰번호, 이메일, (법인기업의 경우 법인등록번호), 기업정보(회사명, 대표자명, 사업자등록번호, 회사전화번호, 주소, 지역, 대표업종), 암호화된 이용자 확인값(CI)
선택항목 : 팩스번호, 홈페이지주소, 회사이메일주소, 창업일자, 부업종, 매출액, 수출액, 상시근로자 수, 주요생산품명, 이메일 수신여부, 문자수신여부, 이메일 수신여부, 문자수신여부, 웹진구독여부
[자동수집]
IP주소, 쿠키, 서비스 이용기록, 방문기록 등

3. 개인정보의 보유 및 이용기간
중장비서비스은 원칙적으로 보유기간의 경과, 개인정보의 수집 및 이용목적의 달성 등 그 개인정보가 불필요하게 되었을 때에는 지체 없이 파기합니다. 다만, 다른 법령에 따라 보존하여야 하는 경우에는 그러하지 않을 수 있습니다. 불필요하게 되었을 때에는 지체 없이 해당 개인정보를 파기합니다.

회원정보
-탈퇴 후 지체없이 파기

4. 동의거부권 및 불이익
정보주체는 개인정보 수집에 동의를 거부할 권리가 있습니다. 다만, 필수 항목에 대한 동의를 거부할 시 저희가 제공하는 서비스를 이용할 수 없습니다.
					</textarea>
			       	<br />
			       	<p id="radio_p">동의함</p><input type="radio" value=1 name="checkbox2" id="checkbox2"/>
					<p id="radio_p">동의하지않음</p><input type="radio" value=0 name="checkbox2" id="checkbox2"/>
			    </div>
			    <br />
			    <div class="radio-area">
					<textarea name="#" id="#" rows="60" readonly>
마케팅/홍보의 수집의 이용 동의
1. 개인정보의 수집 및 이용 목적
신규 서비스 개발 및 마케팅ㆍ광고에의 활용
- 신규 서비스 개발, 이벤트 및 광고성 정보 제공 및 참여기회 제공, 접속 빈도 등 회원의 서비스 이용에 대한 통계
2. 수집하는 개인정보의 항목
필수항목 : 이름
선택항목 : 이메일, 연락처(휴대전화번호, 유선전화번호 중 1개 선택)
3. 개인정보의 보유 및 이용기간
이용목적의 달성 후 지체없이 파기
4. 동의거부권 및 불이익
개인정보의 마케팅/홍보의 수집 및 이용 동의를 거부하시더라도 회원 가입 시 제한은 없습니다. 다만, 마케팅 활용 서비스 안내 및 참여에 제한이 있을 수 있습니다.
					</textarea>
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
			    	<a href="login.jsp">계정이 있으신가요?</a><br /><br />
			    	<a href="#" onclick="alert('고객 센터 : 010-xxxx-xxxx');">고객센터</a>
			    	<p style="margin-top: 30px; font-size: 12px; color: red;">※ (  *  ) 표시는 필수 입력입니다. </p>
			    	<p style="margin-top: 10px;font-size: 12px; color: red;">※ 개인 정보 허위 기재시 처벌의 대상이 될 수 있습니다. </p>
			    </div>
			</div>
		</form>
	</section>	
	
</body>
</html>