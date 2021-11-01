<h1 align="center">중장비 서비스 포트폴리오</h1>

[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fwal2739%2FHE_PP%2F&count_bg=%23000000&title_bg=%23E12D2D&icon=&icon_color=%23E7E7E7&title=%EC%A4%91%EC%9E%A5%EB%B9%84+%EC%84%9C%EB%B9%84%EC%8A%A4+%ED%8F%AC%ED%8A%B8%ED%8F%B4%EB%A6%AC%EC%98%A4&edge_flat=false)](https://hits.seeyoufarm.com)

---

<h2 align="center">머리글</h1>
<div align="center">

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

>>Back end 의 경우 스프링 프레임워크와 OJDBC를 사용하여 데이터 CRUD 기능을 구현하였습니다. 아래는 기본적인 CRUD 코드로, 로그인 페이지에서 아이디와 비밀번호를 입력했을 때 동작하는 코드들입니다. 약 70%의 CRUD 기능은 아래와 비슷한 방식으로 구성되어 있어 코드를 생략하겠습니다.
~~~
//login 에 해당하는 컨트롤러 중 일부

@Controller //어노테이션을 통한 Controller 선언
public class UsersController {
	//login.jsp 에서 입력된 id, pw 의 값을 포함하여 login.do 로 연결을 시도하였을때 동작되는 Controller 로직
	
	@Autowired // 어노테이션을 통해 해당 타입의 Bean 주입
	UsersInfoService usersInfoService; // Interface 

	@RequestMapping(value = "/login.do", method = RequestMethod.POST) //어노테이션을 사용하여, 해당 value 값과 해당 method 타입으로 접속을 시도할 경우 아래 메서드 동작함
	public String login_Post(HttpSession session,BOInfoVO boVO, UsersInfoVO vo,HttpServletRequest request) {
		return usersInfoService.getUser(boVO, vo, session, request); //ID값의 일치 및 session 생성을 담당하는 메서드 호출
	}
~~~

>> 객체 지향 프로그래밍을 위해 service 를 ~Service라는 이름의 interface 와 해당 interface를 상속받는  ~ServiceImpl 이라는 class로 구현했습다.
>> 아래는 해당 코드입니다.

~~~
//위 컨트롤러에서 호출된 interface 중 
public interface UsersInfoService {
	UsersInfoVO getUser(UsersInfoVO vo, HttpSession session);
}
~~~

~~~
//위 interface를 상속받은 UsersInfoServiceImpl 클래스
@Repository //@service 로 사용 해야하지만 테스트를 위해 @Repository로 구현
public class UsersInfoServiceImpl implements UsersInfoService{ //UsersInfoService 상속
	
	@Autowired
	private UserInfoDAO dao; //dao 선언
	
	@Autowired
	private BOInfoService boInfoService; // BOInfoService 선언 (로직이 거의 비슷하므로 해당 코드는 생략)
	
	@Override //재정의 선언
	public String getUser(BOInfoVO boVO, UsersInfoVO vo, HttpSession session,HttpServletRequest request) { 
	//request를 통해 jsp 에서 입력받은 ID와 PW를 가져오며, session을 통해 주요 정보와 로그인 정보를 등록함
		vo.setUserID(request.getParameter("userId"));
		UsersInfoVO result = dao.getUser(vo); //dao의 getUser 메서드를 호출하여 변수(result)에 저장
		if(result==null) {// 호출한 메서드의 반환 값이 없을 경우
			request.setAttribute("loginST", 0);// request에 값(0) 저장
		}else if(result.getUserID().equals(vo.getUserID())&&result.getUserPW().equals(vo.getUserPW())){
			// 호출한 메서드의 반환 값이 입력 값과 같을 경우
			HttpSessionListenerImpl.getSessionidCheck("usRn", result.getUsRn());
			HttpSessionListenerImpl.getSessionidCheck("userId", result.getUserID());
			HttpSessionListenerImpl.getSessionidCheck("userClass", result.getUserClass());
			HttpSessionListenerImpl.getSessionidCheck("userName", result.getUserName());
			session.setAttribute("usRn", result.getUsRn());
			session.setAttribute("userId", result.getUserID());
			session.setAttribute("userClass", result.getUserClass());
			session.setAttribute("userName", result.getUserName());
			session.setMaxInactiveInterval(-1);
			BOInfoVO boRS = boInfoService.getBOInfo(boVO, session);
			if(boRS==null) {
				session.setAttribute("boCheckIndex", "none");
			}else {
				session.setAttribute("boCheckIndex", "check");
			}
			request.setAttribute("loginST", 1);
		}else{
			request.setAttribute("loginST", 2);
		}
		return "login.jsp";

	}
~~~

><h4 align="center">Front end</h4>


---

<h2 align="center">마침</h1>

