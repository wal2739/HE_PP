<h1 align="center">중장비 서비스 포트폴리오</h1>

[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fwal2739%2FHE_PP%2F&count_bg=%23000000&title_bg=%23E12D2D&icon=&icon_color=%23E7E7E7&title=%EC%A4%91%EC%9E%A5%EB%B9%84+%EC%84%9C%EB%B9%84%EC%8A%A4+%ED%8F%AC%ED%8A%B8%ED%8F%B4%EB%A6%AC%EC%98%A4&edge_flat=false)](https://hits.seeyoufarm.com)

---

<h2 align="center">머리글</h1>
<div align="center">
  풀스택 개발자 지망생 권상원입니다.
  조금은 특별한 포트폴리오를 제작하고 싶어, 여러가지 아이디어를 구상했는데요.
  디자인적 감각이 없는 저는 예쁘고 화려한 포트폴리오를 제작하는 것 보다는 실용적이고, 기본에 충실한 포트폴리오를 만들고 싶었습니다.
  하여 하나의 가상 웹 솔루션을 구상하여 스스로 사용자-개발자 입장을 오가며 아이디어를 기획하게 되었습니다.
  
  그렇게 해서 나온 아이디어가 바로 중장비 서비스 프로그램 입니다.
  
  중장비 서비스 프로그램이란 중장비를 보유하고 직접 현장에서 작업하시는 개인 사업자와 현장 작업을 클라이언트(거래처)에게 의뢰받아 개인 사업자에게 발주를 넣는
  중계 사업자와의 중간 과정 즉, 클라이언트에게 작업을 받아서 개인 사업자에게 발주를 넣고 해당 작업을 완료 한 후 다시 중계사업자에게 해당 작업의 증빙 자료와
  대금을 받는 과정을 하나의 프로그램으로 편리하게 사용하고, 이용 할 수 있게 만든 웹프로그램 입니다.
  이에 그치지 않고 각 사용자 간의 커뮤니케이션과 관련 분야의 소식을 빠르게 알아 볼 수 있도록하는 부가 서비스도 존재 합니다.
  
  그럼 제 중장비 서비스 프로그램의 상세 설명과 기능들에 대하여 설명드리겠습니다.
  긴 글 끝까지 읽어주셔서 감사합니다.
</div>

---

>목차
>>0. [소개](#소개)
>>1. [기능 및 코드 설명](#기능-및-코드-설명)
>>>1-1. [Back end](#Back-end)<br/>
>>>1-2. [Front end](#Front-end)
>>2. [마침](#마침)

---

<h2 align="center">소개</h1>

<h3 align="center">프로그램 소개/사용법</h3>

>[![Video Label](https://user-images.githubusercontent.com/14798713/139208844-03ad2730-2482-49d4-ab1f-beb0067801d9.png)](https://youtu.be/RKVCRUdEEPQ)
>위 사진을 클릭하시면 유튜브 페이지로 넘어갑니다.




<h3 align="center">개발 환경</h3>

<div align="center">

|  <center>개발 환경 분류</center> |  <center>사용 기술</center> |  <center>비고</center> |
|:--------|:--------:|--------:|
|**Develop Tools** | <center> Eclipse v4.12.0  &nbsp;  SQL Developer v19.2.0.206  &nbsp;   Visual Studio Code v1.56.2 </center> |*-* |
|**Develop Language For Front end** | <center> HTML5  &nbsp;  JSP &nbsp;   JavaScript  &nbsp;  jQuery v3.4.1  &nbsp;  Bootstrap v4.3.1 </center> |*-* |
|**Develop Language For Back end** | <center> java v1.6  &nbsp;  Spring Framework v3.1.1 &nbsp;   OJDBC v6  &nbsp;  ~JUnit v4.7~ </center> |*JUnit은 거의 사용 안함* |
|**Data Base** | <center> Oracle Database 11g v11.2.0.1.0 </center> |*-* |
|**Server** | <center> Apache Tomcat v9.0 </center> |*기존에 8.0버전 사용* |
|**Web** | <center> Chrome v95.0.4638.5  &nbsp;  Microsoft Edge v95.0.1020.30 </center> |*-* |
  
</div>

[![](https://mermaid.ink/img/eyJjb2RlIjoicGllIHRpdGxlIOyWuOyWtOuzhCDqsJzrsJwg67mE7JyoXG4gICAgXCJKQVZBXCIgOiAyMDBcbiAgICBcIkpTUFwiIDogMTQwXG4gICAgXCJKUy9qUXVlcnlcIiA6IDE2MFxuICAgIFwiREIvUXVlcnlcIiA6IDgwXG4gICAgXCJIVE1MXCIgOiAxMFxuICAgIFwiZXRjLlwiIDogMTVcbiAgICAgICAgICAgICIsIm1lcm1haWQiOnsidGhlbWUiOiJkZWZhdWx0In0sInVwZGF0ZUVkaXRvciI6ZmFsc2UsImF1dG9TeW5jIjp0cnVlLCJ1cGRhdGVEaWFncmFtIjpmYWxzZX0)](https://mermaid-js.github.io/mermaid-live-editor/edit#eyJjb2RlIjoicGllIHRpdGxlIOyWuOyWtOuzhCDqsJzrsJwg67mE7JyoXG4gICAgXCJKQVZBXCIgOiAyMDBcbiAgICBcIkpTUFwiIDogMTQwXG4gICAgXCJKUy9qUXVlcnlcIiA6IDE2MFxuICAgIFwiREIvUXVlcnlcIiA6IDgwXG4gICAgXCJIVE1MXCIgOiAxMFxuICAgIFwiZXRjLlwiIDogMTVcbiAgICAgICAgICAgICIsIm1lcm1haWQiOiJ7XG4gIFwidGhlbWVcIjogXCJkZWZhdWx0XCJcbn0iLCJ1cGRhdGVFZGl0b3IiOmZhbHNlLCJhdXRvU3luYyI6dHJ1ZSwidXBkYXRlRGlhZ3JhbSI6ZmFsc2V9)


<h3 align="center">DB 구성도(ER Diagram)</h3>

>클릭하셔서 확대하시면 자세히 확인 할 수 있습니다.
>![Relational_2](https://user-images.githubusercontent.com/14798713/138958779-dd8b1df2-d39d-4651-800e-6598dafcef8f.png)

---



<h3 align="center">기능 및 코드 설명</h3>

><h4 align="center">Back end</h4>
>>Back end 의 경우 스프링 프레임워크와 OJDBC를 사용하여 데이터 CRUD 기능을 구현하였습니다. 아래는 기본적인 CRUD 코드로, 로그인 페이지에서 아이디와 비밀번호를 입력했을 때 동작하는 코드들입니다.
>>~~~
>>@Controller
public class UsersController {
	
	@Autowired
	UsersInfoService usersInfoService;

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login_Post(HttpSession session,BOInfoVO boVO, UsersInfoVO vo,HttpServletRequest request) {
		return usersInfoService.getUser(boVO, vo, session, request);
	}
>>~~~

><h4 align="center">Front end</h4>


---

<h2 align="center">마침</h1>

