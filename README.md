<h1 align="center">중장비 서비스 포트폴리오</h1>

[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fwal2739%2FHE_PP%2F&count_bg=%23000000&title_bg=%23E12D2D&icon=&icon_color=%23E7E7E7&title=%EC%A4%91%EC%9E%A5%EB%B9%84+%EC%84%9C%EB%B9%84%EC%8A%A4+%ED%8F%AC%ED%8A%B8%ED%8F%B4%EB%A6%AC%EC%98%A4&edge_flat=false)](https://hits.seeyoufarm.com)

---

<h2 align="center">머리글</h1>
<div align="center">
안녕하세요.
풀스택 개발자 지망생 권상원입니다.
먼저 제 포트폴리오를 보러 와주셔서 감사합니다.

조금은 특별한 포트폴리오를 제작하고 싶어, 여러가지 아이디어를 구상했는데요.
디자인적 감각이 없는 저는 예쁘고 화려한 포트폴리오를 제작하는 것 보다는 실용적이고, 기본에 충실한 포트폴리오를 만들고 싶었습니다.
하여 하나의 가상 웹 솔루션을 구상하여 스스로 사용자-개발자 입장을 오가며 아이디어를 기획하게 되었습니다.
  
그렇게 해서 나온 아이디어가 바로 중장비 서비스 프로그램 입니다.
  
중장비 서비스 프로그램이란 중장비를 보유하고 직접 현장에서 작업하시는 개인 사업자와 현장 작업을 클라이언트(거래처)에게 의뢰받아 개인 사업자에게 발주를 넣는
중계 사업자와의 중간 과정 즉, 클라이언트에게 작업을 받아서 개인 사업자에게 발주를 넣고 해당 작업을 완료 한 후 다시 중계사업자에게 해당 작업의 증빙 자료와
대금을 받는 과정을 하나의 프로그램으로 편리하게 사용하고, 이용 할 수 있게 만든 웹프로그램 입니다.
이에 그치지 않고 각 사용자 간의 커뮤니케이션과 관련 분야의 소식을 빠르게 알아 볼 수 있도록하는 부가 서비스도 존재 합니다.

포트폴리오의 자세한 사용 방법과 기능은 아래 프로그램 소개영상을 참고 해주시면 감사하겠습니다.
	
그러면 이제 제 프로젝트를 소개하겠습니다.
</div>

---

>목차
>>1. [소개](#소개)<br/>
>>2. [기능 및 코드 설명](#기능-및-코드-설명)<br/>
>>3. [마침](#마침)<br/>

---


<h2 align="center">소개</h2>

1-1. [프로그램 소개/사용법](#프로그램-소개-영상)<br/>
1-2. [개발 환경](#개발-환경)<br/>
1-3. [DB 구성도](#DB-구성도)<br/>

<h3 align="center">프로그램 소개 영상</h3>

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


<h3 align="center">DB 구성도</h3>

>클릭하셔서 확대하시면 자세히 확인 할 수 있습니다.
>![Relational_2](https://user-images.githubusercontent.com/14798713/138958779-dd8b1df2-d39d-4651-800e-6598dafcef8f.png)

---



<h2 align="center">기능 및 코드 설명</h2>

1-1. [Back end](#Back-end)<br/>
1-2. [Front end](#Front-end)<br/>
1-3. [etc](#etc)<br/>

><h4 align="center">Back end</h4>
<div align="center">
Back end 의 경우 스프링 프레임워크와 OJDBC를 사용하여 데이터 CRUD 기능을 구현하였습니다. 아래는 기본적인 CRUD 코드로,
로그인 페이지에서 아이디와 비밀번호를 입력했을 때 동작하는 코드들입니다. 약 70%의 CRUD 기능은 아래와 비슷한 방식으로 구성되어 있어 코드를 생략하겠습니다.	
</div>

```JAVA
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
}
```

<div align="center">
객체 지향 프로그래밍을 위해 service 를 ~Service라는 이름의 interface 와 해당 interface를 상속받는  ~ServiceImpl 이라는 class로 구현했습니다.
아래는 해당 코드입니다.	
</div>


```JAVA

//위 컨트롤러에서 호출된 interface 중 
public interface UsersInfoService {
	UsersInfoVO getUser(UsersInfoVO vo, HttpSession session);
}
```

```JAVA

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
			request.setAttribute("loginST", 0);// request에 0(계정 정보 없음) 저장
		}else if(result.getUserID().equals(vo.getUserID())&&result.getUserPW().equals(vo.getUserPW())){
			// 호출한 메서드의 반환 값이 입력 값과 같을 경우
			
			HttpSessionListenerImpl.getSessionidCheck("usRn", result.getUsRn());
			HttpSessionListenerImpl.getSessionidCheck("userId", result.getUserID());
			HttpSessionListenerImpl.getSessionidCheck("userClass", result.getUserClass());
			HttpSessionListenerImpl.getSessionidCheck("userName", result.getUserName());
			// getSessionidCheck 메서드를 통해 로그인 정보가 session에 이미 등록되어 있는지 확인 ( 중복 로그인 확인 )
			
			session.setAttribute("usRn", result.getUsRn());
			session.setAttribute("userId", result.getUserID());
			session.setAttribute("userClass", result.getUserClass());
			session.setAttribute("userName", result.getUserName());
			// 세션에 로그인 정보 등록
			
			session.setMaxInactiveInterval(-1);
			// 세션 유지 시간을 -1(무한)으로 설정
			BOInfoVO boRS = boInfoService.getBOInfo(boVO, session);
			// 사업자 정보 등록 여부를 알기 위해 해당 데이터를 조회하는 메서드 호출
			
			
			if(boRS==null) {
				session.setAttribute("boCheckIndex", "none");
			}else {
				session.setAttribute("boCheckIndex", "check");
			}
			// 사업자 정보 등록 여부를 session에 저장
			
			request.setAttribute("loginST", 1);
			//request에 1(로그인 성공) 저장
		}else{
			request.setAttribute("loginST", 2);
			//계정 정보와 입력한 정보가 다를 경우 request에 2(id or pw 불일치) 저장
		}
		return "login.jsp"; // 이동할 페이지 정보 반환

	}
}
```

<div align="center">
정보 저장과 중복 로그인 방지등의 코드들을 보면, 쿠키를 사용하지 않고 세션을 사용했습니다.
왜냐하면 쿠키는 안전성이 부족하다고 판단했기 때문입니다. 회원 정보 중 usRn은 고유 회원 번호와 같이 개인 정보가 세션에 저장되는데 안전성이 떨어지는 쿠키에
해당 데이터를 저장하게 되면 악용의 가능성이 있다고 생각했기 때문입니다.
물론 사용자가 많은 상황에서 세션은 서버에 많은 부하를 주게 되지만, 이는 하드웨어적인 해결이 가능하다고 생각했기 때문에 세션을 선택하게 되었습니다.
아래는 세션의 삭제 및 중복 로그인 방지 기능을 정의 한 클래스입니다.
</div>


```JAVA

//serviceImpl 에서 호출한 session 관련 클래스 중 일부

@WebListener //어노테이션 선언
public class HttpSessionListenerImpl implements HttpSessionListener{// HttpSessionListener 상속

private static final Map<String, HttpSession> oldSession = new ConcurrentHashMap<String, HttpSession>();
	
	//중복로그인 방지 (String)
	public synchronized static String getSessionidCheck(String type, String usRn){
		String rlt = ""; // 반환값을 담은 변수 선언 및 초기화
		for( String key : oldSession.keySet() ){
			HttpSession session = oldSession.get(key);
			if(session != null &&  session.getAttribute(type) != null && session.getAttribute(type).toString().equals(usRn) ){
				rlt =  key.toString();
			}
		}
		removeOldSession(rlt);
		// key 값을 통해 기존 session에 저장 된 값을 조회하고, 해당 값이 현재 로그인을 시도하는 회원의 정보와 중복되는지 확인 하는 루프
		// 또한 중복된 값이 존재한다면 기존 값을 삭제(removeOldSession) 함
		return rlt;
	}
	
	//중복로그인 방지 (int)
		public synchronized static String getSessionidCheck(String type, int index_data){
			String usRn = String.valueOf(index_data); //int > String 형변환
			String rlt = ""; // 반환값을 담은 변수 선언 및 초기화
			for( String key : oldSession.keySet() ){
				HttpSession session = oldSession.get(key);
				if(session != null &&  session.getAttribute(type) != null && session.getAttribute(type).toString().equals(usRn) ){
					rlt =  key.toString();
				}
			}
			removeOldSession(rlt);
			// key 값을 통해 기존 session에 저장 된 값을 조회하고, 해당 값이 현재 로그인을 시도하는 회원의 정보와 중복되는지 확인 하는 루프
			// 또한 중복된 값이 존재한다면 기존 값을 삭제(removeOldSession) 함
			return rlt;
		}
	
	private static void removeOldSession(String userId){   // 기존 session 값 제거 	
		if(userId != null && userId.length() > 0){
			oldSession.get(userId).invalidate();
			oldSession.remove(userId);    		
		}
	}
}
```

```JAVA
//ServiceImpl 에서 호출한 DAO 클래스 중 일부

@Repository
public class UserInfoDAO {
	
	@Autowired
	private JdbcTemplate jdbcTemplate; //jdbcTemplate 선언
	
	public UsersInfoVO getUser(UsersInfoVO vo) { 
		String sql = "select * from usersInfo where USERID = ? and st=0"; // query
		Object[] args = {vo.getUserID()}; 
		try { //예외 처리
			return jdbcTemplate.queryForObject(sql, args, new UsersInfoRowmapper()); // jdbcTemplate을 통한 DB 조회
		} catch (EmptyResultDataAccessException e) { //데이터가 없을 경우 null을 반환
			return null;
		}
	}
}
```

<div align="center">
이렇게 로그인 파트에 해당하는 Back end 로직이 종료됩니다. 
Controller 호출 > Service(interface) 메서드 호출 > 상속하여 메서드를 정의한 ServiceImpl > DB와의 연동 및 데이터를 가져옴 > 
VO에 데이터 저장을 기반으로 ServiceImpl에서 세션에 정보 저장 및 이동 페이지 반환값 반환 > Controller에서 반환값을 받아 이동 순으로 처리가 이루어지며, 
반환값이 이동 경로가 아니라 데이터가 반환이 된다면 mav(ModelAndView)를 통해 이동 경로와
Front end로의 전송을 동작하게 됩니다. 

프로그램 구성 코드 중 하나를 예를 들어 보여드리겠습니다.

아래는 메인 화면에 구성되어 있는 공지 게시판 미리보기 기능의 데이터를 DB에서 추출하여 프론트로 전송하는 로직입니다.	
</div>

```JAVA

//컨트롤러 중 일부

@Controller
public class MainController {
	
	@Autowired
	BoardInfoService boardInfoService;
	
	@RequestMapping("main.do")
	public ModelAndView main(ModelAndView mav) {
		mav.addObject("list",boardInfoService.getAllBoard_main());
		//boardInfoService.getAllBoard_main() 메서드를 이용하여 최근 10개의 공지글을 가져오며, list 라는 키값으로 mav에 저장
		mav.setViewName("main.jsp"); // 이동경로 값 mav에 저장
		return mav; //저장된 이동경로로 이동하면서, addObject를 통해 저장된 데이터 역시 같이 전송
	}
}

```

```JAVA
//Service 중 일부
public interface BoardInfoService {
	List<BoardInfoVO> getAllBoard_main();
}
```


```JAVA
//ServiceImpl 중 일부
@Repository
public class BoardInfoServiceImpl implements BoardInfoService{
	@Override
	public List<BoardInfoVO> getAllBoard_main(){
		return dao.getAllBoard_main();
	}
}
```


```JAVA
@Repository
public class BoardInfoDAO {
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	List<BoardInfoVO> getAllBoard_main(){
		String sql = "select * from (select * from boardInfo where boardClass=3 Order by writeDate desc) where rowNum <= 10"; 
		//최근 공지글(boardClass 가 3일 경우 공지글) 중 최근 10개의 데이터만 조회하는 query
		try { //예외처리
			return jdbcTemplate.query(sql, new BoardInfoRowMapper());
		} catch (EmptyResultDataAccessException e) { //데이터가 없을 경우 null 반환
			System.err.println(e);
			return null;
		}
	}
}
```

<div align="center">
위의 코드가 CRUD 기능 중 조회를 담당하는 로직이며, ModelAndView를 사용하여 해당 이동 경로와 해당 경로에 데이터를 전송 하였습니다.
마지막으로 데이터의 삭제와 수정을 보여드리겠습니다.
삽입과 수정, 삭제는 해당 동작을 수행 한 후 ServiceImpl 클래스에서 DAO의 반환값을 request 영역에 저장하여 정상처리 유무를 프론트에 전송하게 되어있습니다.
( 예. 정상처리 : 1, 오류 : 2, 정상적이지 않은 값 : 3 )
그 외 Service 인터페이스, Controller 클래스 등은 조회와 동일 하므로, DAO 클래스와 ServiceImpl 클래스만 보여드리겠습니다.
</div>

```JAVA
//ServiceImpl 중 일부

@Repository
public class BoardInfoServiceImpl implements BoardInfoService{


	@Autowired
	BoardInfoDAO dao;
	
	@Autowired
	UsersInfoService usersInfoService;

	@Override
	public void insertBoard(BoardInfoVO vo,HttpServletRequest request,HttpSession session) { //게시글 등록
		vo.setBoardClass(Integer.parseInt(request.getParameter("boardClass")));
		vo.setBoardTitle(request.getParameter("boardTitle"));
		String boardContents = request.getParameter("boardContents");
		if(boardContents=="") { // 게시글 내용이 없으면 해당 내용에는 [내용 없음] 이 추가 됨
			boardContents = "내용 없음";
		}
		vo.setBoardContents(boardContents);
		vo.setUsRn(request.getParameter("usRn"));
		vo.setUserName(request.getParameter("userName"));
		// 게시글 정보 VO에 저장
		
		int result = dao.insertBoard(vo);
		//dao.insertBoard() 호출
		
		if(result==1) {
			request.setAttribute("insertBoardSF", 1);
		}else {
			request.setAttribute("insertBoardSF", 0);
		}
		// 데이터 정상 삽입 여부에 따라 request영역에 결과값 저장
	}
	
	@Override
	public String modifyBoard(BoardInfoVO vo, HttpServletRequest request, HttpSession session) { //게시글 수정
		String boardCode = request.getParameter("boardCode");
		vo.setBoardCode(boardCode);
		vo.setBoardTitle(request.getParameter("boardTitle"));
		vo.setBoardContents(request.getParameter("boardContents"));
		int result = dao.modifyBoard(vo);
		if(result==1) {
			request.setAttribute("MBCheck", 1);
		}else {
			request.setAttribute("MBCheck", 0);
		}
		return "getBoard.do?boardCode=" + boardCode + "&statusNum=0";
		//데이터 수정 후 해당 게시글로 이동해야 하기 해당 게시글의 코드(boardCode)를 포함한 이동경로를 지정하여 반환함
	}

	@Override
	public String deleteBoard(HttpServletRequest request) { //게시글 삭제
		String boardCode = request.getParameter("boardCode");
		int rltNum = dao.deleteBoard(boardCode);
		String boardClass = request.getParameter("boardClass");
		switch (rltNum) {
		case 0:
			request.setAttribute("deleteRlt", 0);
			request.setAttribute("badClass", boardClass);
			break;
		case 1:
			request.setAttribute("deleteRlt", 1);
			request.setAttribute("badClass", boardClass);
			break;


		default:
			request.setAttribute("deleteRlt", 2);
			request.setAttribute("badClass", boardClass);
			break;
		}
		
		//삭제의 경우 삭제 후 [게시글 전체 보기] 페이지로 이동해야 하기 때문에, 접속 경로를 변수(boardClass)에 저장 해두었다가 그에 해당하는 게시판 목록으로 이동함
		return "eachBoard.do?boardClassNum=" + boardClass;
	}	
}
```

```JAVA
//DAO 중 일부

@Repository
public class BoardInfoDAO {
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	int insertBoard(BoardInfoVO vo) {
		String sql = "insert into boardInfo(BOARDCODE,BOARDCLASS,BOARDTITLE,BOARDCONTENTS,USRN,USERNAME,VIEWS) values(LPAD(LPAD(auserrn_sq.nextVal, '8', '0'),'9','N'),?,?,?,?,?,0)";
		
		//LPAD(LPAD(auserrn_sq.nextVal, '8', '0'),'9','N') 을 query에 포함하여 boardCode를 자동으로 생성함 예)N00000001 에서 계속 증가함
		
		try { // 예외 처리
			jdbcTemplate.update(sql,vo.getBoardClass(),vo.getBoardTitle(),vo.getBoardContents(),vo.getUsRn(),vo.getUserName());
			//query 구문에 데이터가 들어가야 하는 위치에 물음표(?)를 넣고 jdbcTemplate을 통해 해당 위치에 데이터를 삽입 함
			return 1; //정상 처리 시 1 반환
		} catch (Exception e) { // Exception 발생 시 0 반환
			System.err.println(e);
			return 0;
		}
	}
	
	int modifyBoard(BoardInfoVO vo) {
		String sql = "update boardInfo set BOARDTITLE=?,BOARDCONTENTS=?,fixDate=sysdate where boardCode=?";
		try {
			jdbcTemplate.update(sql,vo.getBoardTitle(),vo.getBoardContents(),vo.getBoardCode());
			return 1;
		} catch (Exception e) {
			System.err.println(e);
			return 0;
		}
	}

	public int deleteBoard(String boardCode) {
		String sql = "delete from boardInfo where boardCode = ?";
		try {
			jdbcTemplate.update(sql,boardCode);
			return 1;
		} catch (Exception e) {
			System.err.println(e);
			return 0;
		}
	}
}
```

<div align="center">
지금까지 Back end에서의 CRUD를 구현하여, 원하는 데이터를 DB로 부터 추출하여 front end로 전송하는 로직을 보여드렸습니다.  
하지만 데이터의 이동을 목적으로 Back end 를 구현하게 된다면, 디테일한 기능들을 구현 하는데에 한계가 생길 것 입니다.  

물론 JavaScript와 JQuery를 사용하여 원하는 데이터만 사용자에게 보여줄 수 있지만, 이는 웹 프로그램 상 모든 소스 코드를 확인 할 수 있기 때문에
좋은 방법은 아닐 것 이라 판단하였습니다.  
(물론 react를 사용하여 소스 코드를 난독화 한다면 어느정도 방지가 가능 하지만, 해당 포트폴리오는 react를 사용하지 않았기에 생략 하였습니다.)  

결론적으로 보안을 위해서라면 Back end의 기능을 단순 데이터를 추출하고 전송하는 것이 아닌, 원하는 데이터와 해당 데이터를 통해 2차 가공될 수 있는 데이터들을 추출 및 가공 하여 전송가능 한 형태로 구현 하는 것이 좋다고 생각했습니다.  

그렇다면 어떻게 구현 해야 제가 말한 " 원하는 데이터와 해당 데이터를 통해 2차 가공될 수 있는 데이터들을 추출 및 가공 하여 전송가능 한 형태 " 로 구현 할 수 있을까요?  

물론 방법은 많습니다만 제가 생각한 대안은 다음과 같습니다.  
	  
	1. DataBase에서 각 기능마다의 view 를 생성한다.  
	
	2. Back end 중 DAO(데이터를 직접적으로 추출하는 class)에서의 query를 
	기능에 맞게 원하는 데이터만 추출 할 수 있도록 작성한다.  
	
	3. Back end 중 ServiceImpl(interface를 상속받은 class)에서 
	DAO를 통해 받은 데이터를 원하는 데이터만 재추출 하여 전송한다.  

이 포트폴리오에서는 1번과 2번 방법을 적절히 사용하여 사용 하였습니다.  
각 기능들의 중복되는 데이터들을 확인하고 그 외 필요한 데이터들을 추린 후에 해당 테이블들을 Join하여 view를 생성하고, DAO 클래스에서
동적 query를 이용한 메서드를 구현했습니다. 아래는 이해를 위한 사진입니다. 
	
간단한 예시를 위해 DB 모델링의 일부를 가져 오겠습니다. 아래는 작업 정보 테이블인 workInfo 와 회원 정보 테이블인 usersInfo 테이블의 관계도 입니다.
중장비 서비스 프로그램 내에서의 작업은 [ 중계 회원 > 개인 회원 ] 으로 발주를 통해 작업이 등록되며,DB에서 작업 완료 및 작업 상태 유무를 확인 할 수 있습니다.

![화면 캡처 2021-11-08 211350](https://user-images.githubusercontent.com/14798713/140740702-220af7aa-73b2-4bc2-99c5-d90001534157.png)

위의 사진과 같이 구성되어 있는 테이블을 join을 통해 view를 만들어 작업 관련 기능들만 접근하도록 설계하면 아래의 사진처럼 설계가 됩니다.
	
![화면 캡처 2021-11-08 204922](https://user-images.githubusercontent.com/14798713/140740710-0ce556c1-80ea-4289-98b4-08bcf97d5501.png)

실제 적용 코드를 보여드리겠습니다.
</div>

```oracle
-- 작업 정보와 작업 테이블에 간소화 되어 입력된 다른 테이블의 데이터들을(FK) 통해 다른 테이블의 정보까지 뷰로 생성함 (ex. 작업 차량 및 회원 정보 등등)
-- 해당 뷰의 목적은 중계 회원의 모든 작업의 조회 기능을 위해 생성됨( 개인 회원의 일부 기능들도 사용함 )
  CREATE OR REPLACE FORCE VIEW "WAL2739"."WORKINFOFORASS" ("WORKCODE", "CLIENTCODE", "WORKFIELD", "FIELDMANAGER", "FIELDMANAGERPHONE", "FIELDMANAGERCELL", "FIELDMANAGERMAIL", "FIELDADD01", "FIELDADD02", "WORKAMOUNT", "WORKTIME", "WORKREQUESTS", "ST", "ASSUSRN", "INDIUSRN", "WORKERSDATA", "EQRN", "RELATIVE", "WORKDATE", "RV", "CLIENTBONUMBER", "CLIENTCEO", "CLIENTMANAGER", "CLIENTPHONE", "CLIENTCELL", "CLIENTMAIL", "CLIENTADD01", "CLIENTADD02", "CLIENTCPNAME", "INDINAME", "INDICELL", "INDIMAIL", "INDIID", "EQUIPNUM", "EQUIPOPTION", "EQUIPCLASS", "EQUIPTYPE", "APPSTATUS", "DE") AS 
  (
select wi."WORKCODE",wi."CLIENTCODE",wi."WORKFIELD",wi."FIELDMANAGER",wi."FIELDMANAGERPHONE",wi."FIELDMANAGERCELL",wi."FIELDMANAGERMAIL",wi."FIELDADD01",wi."FIELDADD02",wi."WORKAMOUNT",wi."WORKTIME",wi."WORKREQUESTS",wi."ST",wi."ASSUSRN",wi."INDIUSRN",wi."WORKERSDATA",wi."EQRN",wi."RELATIVE",wi."WORKDATE",wi."RV",
ci.CLIENTBONUMBER,
ci.CLIENTCEO,
ci.CLIENTMANAGER,
ci.CLIENTPHONE,
ci.CLIENTCELL,
ci.CLIENTMAIL,
ci.CLIENTADD01,
ci.CLIENTADD02,
ci.CLIENTCPNAME,
ui.username indiName,
ui.usercell indiCell,
ui.useremail indiMail,
ui.userId indiId,
ei.equipnum,
ei.equipoption,
ei.equipclass,
ei.equiptype,
oi.appstatus,
wdi.de from workInfo wi left join orderInfo oi on wi.workCode=oi.workcode left join clientinfo ci on wi.clientcode=ci.clientcode left join usersInfo ui on wi.indiusrn=ui.usrn left join equipinfo ei on wi.eqrn=ei.eqrn left join workdataInfo wdi on wi.workCode=wdi.workCode where nvl(oi.appstatus,5)!=2
);
-- 마지막 줄의 appstatus 란 해당 작업을 중계 회원이 발주 했을 경우 개인 회원의 수락/거절 유무를 뜻하며
-- appstatus 가 2의 경우 아직 수락/거절을 하지 않은 대기 상태를 뜻함
-- orderInfo 테이블은 workInfo 의 workCode를 FK로 설정해두었지만 PK(orderCode)는 따로 존재하므로 하나의 작업을 여러번 발주가 가능함
-- 만약 한명의 개인 회원이 작업을 수락하면, 자동 삭제 메서드가 실행되어 다른 발주들은 삭제됨
```

```JAVA
//해당 뷰를 조회하는 Back end (DAO)

@Repository
public class WorkInfoDAO {
	
	List<WorkInfoForAssVO> getWork_Ass(String usRn){ // 기본 조회
		String sql = "select WORKCODE,CLIENTCODE,WORKFIELD,FIELDMANAGER,FIELDMANAGERPHONE,FIELDMANAGERCELL,FIELDADD01,FIELDADD02,WORKAMOUNT,st,appstatus,de from workInfoForAss where assUsrn='" + usRn + "' and (st!=2 and st!=3 and st!=5) and (nvl(appstatus,4)!=0)";
		// 취소 완료 등등이 아닌 등록만 되어 있는 작업(st값을 통해 구분)과 만약 발주를 했다면 거절 상태가 아닌 작업들을 조회함
		try {
			return jdbcTemplate.query(sql, new WorkInfoForAss_OneRowMapper());
		} catch (EmptyResultDataAccessException e) {
			System.err.println("work DAO 오류 : " + e);
			return null;
		}
	}
	
	List<WorkInfoForAssVO> getWork_Ass_st2(String type ,String usRn){ // 
		String sql = "select WORKCODE,CLIENTCODE,WORKFIELD,FIELDMANAGER,FIELDMANAGERPHONE,FIELDMANAGERCELL,FIELDADD01,FIELDADD02,WORKAMOUNT,st,appstatus,de from workInfoForAss where " + type + "='" + usRn + "' and st=2 and (nvl(appstatus,4)!=0) and nvl(de,0)=1";
		//type과 usRn이라는 매개변수를 통해 조회를 시도하는 회원이 개인 회원인지, 중계 회원인지에 대한 데이터를 받고 해당 회원의 회원 코드를 받아서 query에 삽입
		try {
			return jdbcTemplate.query(sql, new WorkInfoForAss_OneRowMapper());
		} catch (EmptyResultDataAccessException e) {
			System.err.println("work DAO 오류 : " + e);
			return null;
		}
	}
	
	List<WorkInfoForAssVO> getWork_Ass_st5(String type ,String usRn){ // 정산 완료 된 작업만 조회
		String sql = "select WORKCODE,CLIENTCODE,WORKFIELD,FIELDMANAGER,FIELDMANAGERPHONE,FIELDMANAGERCELL,FIELDADD01,FIELDADD02,WORKAMOUNT,st,appstatus,de from workInfoForAss where " + type + "='" + usRn + "' and st=5 and (nvl(appstatus,4)!=0) and nvl(de,0)=1";
		// 위 메서드와 st값을 제외하고 거의 동일
		try {
			return jdbcTemplate.query(sql, new WorkInfoForAss_OneRowMapper());
		} catch (EmptyResultDataAccessException e) {
			System.err.println("work DAO 오류 : " + e);
			return null;
		}
	}
}
//비슷한 맥락이므로 이하 메서드 생략 
```

<div align="center">
중장비 서비스 프로그램에서는 필요한 데이터들만 추출하기 위해 위와 같이 구현하려고 하는 기능과 
유사한 기능들의 필요 데이터들의 합집합을 구성하여 뷰를 생성하고, 
DAO 클래스에서 해당 뷰에서 필요한 데이터들만 추출하도록 구현 하였습니다.

그렇다면
	ServiceImpl 클래스(interface를 상속받은 클래스)는 단순 데이터 전송의 기능밖에 없는가?
의 질문이 나올 수 도 있습니다. 물론 당연히 아닙니다. 데이터의 추출을 DAO에서 담당했다면,
ServiceImpl 클래스에서는 위에서 말씀드린 
	" 2차 가공 "
을 담당합니다.
	
제가 말씀드리는 2차 가공이란, DAO를 통해 추출한 데이터들과 코딩을 통해 새로운 기능을 구현하도록 하는 것 입니다.
제가 표현한 뜻이 통하는 다른 단어가 있을 수 도 있지만, 제가 잘 몰라서 그냥 이러한 작업을 2차 가공이라고 부르겠습니다.
	
대표적인 예로는 게시판 기능 중 하나인 페이징 기능이 있습니다.
아래는 중장비 서비스 프로그램의 게시판의 구현 및 페이징 로직입니다.

</div>

```JAVA
//DAO 중 일부
@Repository
public class BoardInfoDAO {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	List<BoardInfoVO> getAllBoard(int boardClass){ // 매개변수(boardClass) 를 통해 어느 종류의 게시글을 조회 할 것인지 받음
		String sql = "select * from boardInfo where boardClass=" + boardClass + " order by boardCode desc";
		// 게시글을 매개변수에 따라 최근 순으로 조회함
		try { // 예외처리
			return jdbcTemplate.query(sql, new BoardInfoRowMapper());
		} catch (EmptyResultDataAccessException e) {
			System.err.println(e);
			return null;
		}
		
	}
	
	List<BoardInfoVO> getAllBoard(int boardClass, String con, String conVal){ // 검색 조건(con), 검색 내용(conVal)을 통한 게시글 검색 기능
		String sql = "select * from boardInfo where boardClass=" + boardClass + " and " + con + " LIKE '%" + conVal + "%' order by boardCode desc";
		try {
			return jdbcTemplate.query(sql, new BoardInfoRowMapper());
		} catch (EmptyResultDataAccessException e) {
			System.err.println(e);
			return null;
		}
		
	}
	
	List<BoardInfoVO> getAllBoard(int boardClass,String usRn){ // 내가 쓴 글 조회
		String sql = "select * from boardInfo where boardClass=" + boardClass + " and usrn='" + usRn + "' order by boardCode desc";
		try {
			return jdbcTemplate.query(sql, new BoardInfoRowMapper());
		} catch (EmptyResultDataAccessException e) {
			System.err.println(e);
			return null;
		}
		
	}
}
```

```JAVA
//ServiceImpl 중 
@Repository
public class BoardInfoServiceImpl implements BoardInfoService{

	@Autowired
	BoardInfoDAO dao;
	
	@Autowired
	UsersInfoService usersInfoService;
	
	@Override
	public List<BoardInfoVO> getEachBoardPaging(HttpServletRequest request, HttpSession session) {
		//페이징
		if(request.getParameter("boardClassNum")==null) {
			return null;
		}//boardClassNum(공지,개인/중계 전용 게시판의 판단 parameter)을 통해 잘못된 접근인지 확인함
		
		int boardClassNum = Integer.parseInt(request.getParameter("boardClassNum"));
		int userClass = (Integer)session.getAttribute("userClass"); //회원 종류(개인 or 중계 or 관리자)
		
		if(boardClassNum==0) {
			request.setAttribute("classType", 0);
		}else if(boardClassNum==1) {
			request.setAttribute("classType", 1);
		}else if(boardClassNum==2){
			request.setAttribute("classType", 2);
		}else if(boardClassNum==3){
			request.setAttribute("classType", 3);
		}else {
			request.setAttribute("classType", 9);
		}
		//추후 게시판을 추가 할 예정이었기 때문에, 
		//request.setAttribute("classType", boardClassNum);를 하지 않고
		//if 문으로 처리 함
		
		request.setAttribute("nuserClass", userClass);
		
		String searchBox = null; // 검색 내용
		String searchCond = null; // 검색 분류 (제목 or 게시글 or 작성자 등등)
		int mw = 0; //내가 쓴 글 조회 유무
		
		try {
			searchBox = request.getParameter("searchBox");
			searchCond = request.getParameter("searchCond");
		}catch (Exception e) {
			System.err.println("검색 안함");
		}
		
		//검색 내용이 있다면 해당 변수에 저장하고, 없다면 예외처리를 통해 빠져나옴
		
		try {
			mw = Integer.parseInt(request.getParameter("mw"));
		}catch (Exception e) {
			System.err.println("내 리스트 X");
		}
		
		//내 글 확인 요청이 있는지 확인하고, 없다면 예외처리를 통해 빠져나옴
		
		List<BoardInfoVO> list = null; // 추후 게시글의 정보를 저장 할 변수 선언 및 초기화
		
		if(searchBox!=null||searchCond!=null) { // 검색을 시도 하였을 경우
			list = dao.getAllBoard(boardClassNum,searchCond,searchBox);// 데이터 전체 추출 값
			request.setAttribute("searchIDX", searchBox);
			request.setAttribute("searchIDXCON", searchCond);
			//front end 에서 구현할 기능을 위해 request에 검색 내용과 분류를 저장함
			
		}else if(mw==1){// 내 글 조회를 시도했을 경우
			list = dao.getAllBoard(boardClassNum, (String) session.getAttribute("usRn"));
		}else {// 일반적인 게시판 접속 시
			list = dao.getAllBoard(boardClassNum);// 데이터 전체 추출 값
		}
		
		int boardCnt = list.size();// 게시글 수
		if(boardCnt<=20) {
			// 총 게시글이 20개 이하일 경우에는 페이징을 할 필요가 없기 때문에 데이터를 그대로 반환한다.
			request.setAttribute("pagingCntRlt", 0);
			request.setAttribute("pageNum", 0);
			request.setAttribute("boardCnt", boardCnt);
			return list;
		}else { 
			int pageNum = 0; // 변수(페이징 값) 선언 및 초기화
			try {
				pageNum = Integer.parseInt(request.getParameter("pagingNum"));
				// 요청한 페이지 번호가 있다면 예외처리를 통해 변수에 저장
			} catch (NumberFormatException e) {}
			float pagingCnt = (float)(boardCnt/20.0); //페이지 수 
			
			List<BoardInfoVO> rslList = null;
			//for 조건 문을 위한 정수 
			int forNum01 = pageNum*20;//시작 게시글 숫자
			int forNum02 = 0;//마지막 게시글 숫자
			if(pagingCnt-(int) pagingCnt!=0) {
				pagingCnt = (int)pagingCnt + 1;
			}//소수점이 발생한다면 페이지 +1
			
			int pagingCntRlt = (int) Math.floor(pagingCnt); // 페이지 수를 다시 정수로 변환
			
			// 전체 게시글에 20을 나눈 몫 / 시작 게시글에 20을 나눈 몫 이 같다면 == 마지막 페이지
			// 마지막 페이지는 전체 게시글에 1을 뺀 값  == 마지막 게시글
			
			if((int) Math.floor(boardCnt/20.0)!=pageNum) { //마지막 페이지가 아닐경우
				// 현재 if문은 현재 접속한 페이지가 마지막 페이지인지 아닌지를 확인하는 구문임
				// 만약 64개의 게시글이 있고 현재 접속한 페이지가 3이라면 20개(보여줄 게시글의 최대치)를 보여줘야하며
				// 만약 접속한 페이지가 4라면 Math.floor(64/20.0)와 같기 때문에 else 구문이 실행 된다.
				// 쉽게 말하면, 마지막 페이지인가 아닌가를 구분하는 구문이다.
				
				forNum02 = forNum01 + 19;
				// 현재 페이지에 마지막으로 보여줘야 할 데이터 넘버링(forNum02) = 현재 페이지에 첫 게시글 넘버링 + 19 (한 페이지에 총 20개를 보여줘야 하므로)
			}else {//마지막 페이지 일 경우
				if(boardCnt-forNum01==20) {
					// 마지막 페이지에 총 게시글의 수가 20개이라면 실행되는 구문
					forNum02 = forNum01 + 19; 
					// 현재 페이지에 마지막으로 보여줘야 할 데이터 넘버링(forNum02) = 현재 페이지에 첫 게시글 넘버링 + 19 (한 페이지에 총 20개를 보여줘야 하므로)
					// 결론적으로 0번째 부터 19번째 게시글을 보여줘야 함
				}else {
					// 마지막 페이지에 총 게시글 수가 20개 아니라면(20개 미만이라면)
					forNum02 = boardCnt-1;
					// 현재 페이지에 마지막으로 보여줘야 할 데이터 넘버링(forNum02) = 전체 게시글 - 1
				}
			}
			
			List<BoardInfoVO> listRlt = new ArrayList<BoardInfoVO>();
			// 결과를 담을 list형 변수 선언
			if(forNum01==forNum02) { 
				// 현재 페이지에서 보여줘야 하는 첫번째 게시글 넘버링 = 마지막 게시글 넘버링 ( 게시글이 하나라면 )
				listRlt.add(0,list.get(forNum01));
				// 게시글 하나만 결과값에 저장 
			}else {
				for(int i = 0 ; forNum01<=forNum02; i++,forNum01++) {
					// 루프 횟수만큼 i 를 증가 시키고, 리스트의 index값에 i 값을 넣음
					listRlt.add(i,list.get(forNum01));
					// 첫 게시글 넘버링(forNum01)에 해당하는 index를 보유한 value값을 결과값에 저장함

				}
				
			}

			
			request.setAttribute("pagingCntRlt", pagingCntRlt); // 총 페이지 수
			request.setAttribute("pageNum", pageNum); // 현재 페이지 값
			request.setAttribute("boardCnt", boardCnt); // 전체 게시글 수
			return listRlt; // 결과 값 반환
		}
		
	}
}
```

<div align="center">
이렇게 Back end 의 페이징 로직이 마무리 됩니다.

지금까지 주요 Back end 로직 설명을 마무리 하겠습니다. 아래는 Front end의 주요 코드들을 리뷰해드리겠습니다.
맥락을 위해 Front end에서 페이징 데이터를 받아 처리하는 로직을 이어서 설명 하겠습니다.
</div>

><h4 align="center">Front end</h4>

<div align="center">
프론트 엔드의 거의 모든 페이지는 JSP를 사용하여 구현 되었습니다.
원 계획에서는 ajax를 통해 유동적인 데이터 수신을 구현하면서, 빠르게 동작하는 동적 페이지를 구현하고 싶었지만 
프로젝트를 시작 할 당시 익숙하지도 않고 잘 사용하지 못 했는데, 저에게는 이부분이 아직까지도 아쉬운 부분 중 하나입니다.
하여 현재 프로젝트에서는 JSP를 통해 데이터를 받고, 페이지를 구성하였습니다.
	
그러면 이어서 게시판 화면 구성(eachBoard.jsp)을 jQuery, JS, CSS(style), JSP(HTML5) 로 나누어 보여드리겠습니다.
</div>

```jsp
    <%
	String searchIDX = ""; // 검색 분류
	String searchIDXCON = ""; // 검색 내용
	//예외 처리를 통해 이전에 검색한 내용이 있는지 분류 하고, 있다면 해당 변수에 값을 할당함
	try{
		searchIDX = (String) request.getAttribute("searchIDX");
		searchIDXCON = (String) request.getAttribute("searchIDXCON");
	}catch (NullPointerException e){
		System.err.println("검색 인덱스 값 없음 : "+e);
	}
	
	List<BoardInfoVO> list = null; // 게시글 정보
    	String classType = ""; // 게시판 분류(회원 구분)
    	String backPath = ""; // 이전 페이지 정보(사용 x)
	
    	list = (List)request.getAttribute("list"); // request영역에서 게시글 정보를 List 타입으로 불러옴
	
	// 게시판 분류 구문
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
    %>
    <%!
    	//session 영역에서 가져오는 userClass(회원 분류)를 정수(int)타입으로 변경해주는 메서드
	int userClass=0;//default 값을 0으로 고정
	public void cast_ob(HttpSession session){
		String userClass_t = String.valueOf(session.getAttribute("userClass"));
		if(userClass_t.equals("null")){
			userClass_t = "1";
		}
		//예외처리 대신 if문을 사용한 이유는 session에서 불러온 값이 Object 타입으로 들어오기 때문에
		//형변환 할 변수(userClass_t)를 String 타입으로 지정했으므로, null일 경우 String타입의 null이 들어옴
		//하여 예외처리 시 exception이 발생하지 않기에 if문을 사용함
		
		userClass = Integer.parseInt(userClass_t);
		//마지막으로 필드에 형변환한 값을 다시 넣어줌
	}
    %>
```

```javaScript
// 페이지 로드 시 자동 호출되는 함수
function checkNotice() {		
	<% 
		//회원 구분(userClass)의 형변환
		cast_ob(session);
	%>
	var typeClass = <%=request.getAttribute("classType")%>; 
	// 백엔드에서(ServiceImpl) 저장해둔 게시판 분류를 호출하여 불러옴
	// 전체적인 로직에서의 해당 변수는 접속한 게시판의 값을 의미함
	
	var userClass = <%=userClass%>; // 형변환 한 회원 구분 값
	
	if(typeClass==3){ 
		//// typeClass가 3에 해당한다면 공지 게시판이므로, [내 글 보기] 버튼의 display를 none으로 변경(비활성화)
		document.getElementById("my_writing").style.display = "none";	
		if(userClass!=0){
			// userClass가 0이라면 관리자이므로 글 작성이 가능하지만, 일반 회원은 작성하지 못하도록 display를 none으로 변경(비활성화)
			document.getElementById("writing").style.display = "none";	
		}
	}
	
	// 이전에 삭제를 진행 했다면 정상처리 유무를 확인하고, 페이지를 재로드 함(주소창에 데이터가 남아있으므로 초기화 하기 위함)
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
	
	
	// 이전에 검색을 시도 한 경우, 해당 검색 내용을 자동으로 재입력 해주기 위한 코드
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

// 페이지 로드 시 자동 호출되는 함수
function pagingFun() {
	// 이미 페이징은 백엔드에서 연산 후 데이터만 받기 때문에 해당 JS에서는 페이지 번호 및 좌,우측 화살표를 생성하는 코드만 구현함
	
	var pagingCnt = <%=request.getAttribute("pagingCntRlt")%>;// 총 페이지 수
	var pageNum = <%=request.getAttribute("pageNum")%>;// 현재 페이지
	var boardCnt = <%=request.getAttribute("boardCnt")%>;// 총 게시물 수
	var rltCnt = Math.floor(pageNum*0.1);// 현재 페이지 / 10
	var pagingCntRlt = Math.floor(pagingCnt*0.1); // 총 페이지 / 10
	var pTagInner = document.getElementById('pTagInner'); // innerHTML을 실행하기 위한 변수
	
	
	if(pageNum==0){ //현재 페이지가 처음과 끝인지 확인
		//처음 페이지라면 좌측 Arrow를 생성하지않음
		document.getElementById("arrBtn01").setAttribute('type','hidden');
		document.getElementById("arrBtn02").setAttribute('type','hidden');
		
	}else if(pageNum==pagingCnt-1){ //마지막 페이지라면 우측 Arrow를 생성하지않음
		document.getElementById("arrBtn03").setAttribute('type','hidden');
		document.getElementById("arrBtn04").setAttribute('type','hidden');			
	}
	
	//20 이하인지 구분
	if(pagingCnt<9){
		//20 이하 일 경우 페이지를 옮기는 화설표를 생성하지 않는다.
		document.getElementById("arrBtn01").setAttribute('type','hidden');			
		document.getElementById("arrBtn02").setAttribute('type','hidden');			
		document.getElementById("arrBtn03").setAttribute('type','hidden');			
		document.getElementById("arrBtn04").setAttribute('type','hidden');	
	}
	//20 이상 첫 페이지
	switch (pagingCntRlt) {
		case 0:
		//첫 페이지 [20 이하]
		for(var i = 0; i < pagingCnt; i++){
			if(pageNum==i){
				pTagInner.innerHTML += i + 1 + '&nbsp;&nbsp;'; // 현재 접속중인 페이지는 a태그로 구현하지 않기 위한 코드
			}else {
				// 페이지 번호 생성
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

```

```CSS
/* CSS */
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
  height: 1200px;
  text-align: center;
}
.div_2_back {
	display : inline-block;
	width: 70%;
	height: 90%;
	background: rgba(255,255,255,.75);
	
}
  .div2_1 {
    width: 95%;
    height: 90%;
    overflow: hidden;
    margin : 0 auto 0 auto;
  }
  .div2_2 {
    width: 95%;
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
```

```HTML5
<%-- HTML5/jsp 코드  --%>
<body onload="checkNotice();pagingFun();">
	<jsp:include page="class_Module.jsp" />
	<jsp:include page="top_menu.jsp" />
	<jsp:include page="floating_module.jsp" />
    <main>
        <div class="mainDiv">
          <div class="div1">
            <div class="div1_textArea"><h2>게시판</h2></div>
          </div>
          <div class="div2">
	          <div class="div_2_back">
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
	                <pre style="font-size: 13px;"><b>※ 부적절한 제목/내용의 게시글은 관리자에 의해 삭제될 수 있습니다.</b></pre>
	                <input type="image" src="/image/my writing.png" class="etcBtn" id="my_writing" name="my_writing" onclick="location.href='eachBoard.do?boardClassNum=<%=request.getAttribute("classType")%>&mw=1'">
	                <input type="image" src="/image/list.png" class="etcBtn" id="list" name="list" onclick="location.href='eachBoard.do?boardClassNum=<%=request.getAttribute("classType")%>'">
	                <input type="image" src="/image/writing.png" class="etcBtn" id="writing" name="writing" 	onclick="location.href='insertBoardForFree.do?boardClass=<%=request.getAttribute("classType")%>'">
	            </div>
	          </div>
          </div>
          <div class="div3">
          </div>
        </div>	       
      </main>
</body>

```


![게시판 결과](https://user-images.githubusercontent.com/14798713/143312530-f42724e3-04b4-4602-b3b8-b6355557deea.gif)
페이징 결과 화면

<div align="center">
이렇게 게시판 페이지의 프론트엔드 코드와 결과 화면을 보여드렸습니다.

위의 결과 화면은 사이즈를 위해 좌우상하 부분이 짤린 화면입니다.
이 프로그램의 모든 페이지에는 상단과 우측 하단에 메뉴가 있습니다.
	
그렇다면 왜 위의 코드에는 해당 부분이 보이지 않는가 에 대한 의문이 생기실 겁니다.

사실 HTML5/JSP 코드의 상단 부분을 보시면 jsp:include 태그를 이용하여 모듈화 한 페이지를 불러와
사용 했기에 때문에 코드 부분이 노출되지 않았습니다.
	
이 외에도 다양한 기능들을 모듈화하여 사용했는데요.
그렇다면 어떤 부분을 모듈화 했는지 지금부터 보여드리겠습니다.
</div>

><h5 align="center">모듈화</h5>



<div align="center">
이제 제가 설계한 모듈을 하나씩 설명 드리겠습니다.

먼저 상단 고정 메뉴(글로벌 네비) 입니다.
해당 메뉴는 모든 페이지 공통으로 들어가는 메뉴이므로, 같은 코드를 여러번 반복하여 사용하는 것 보다
해당 코드를 모듈화하여 include를 통해 사용하는 것이 효과적이라 생각했습니다.
	
아래는 상단 메뉴(top_menu.jsp)의 코드 입니다.
전체적으로 보여드리고 싶지만, 분량을 생각하여 일부만 보여드리겠습니다.
</div>

```JSP
<style> //상단 네비 
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
a {
  font-size: 16px;
  text-transform: uppercase;
}
.nav-area *{
  z-index : 999;
}
.nav-area ul {float:right;}
.nav-area {
  position : static;
  background: #262626;
}
.nav-area:after {
  content: '';
  clear: both;
  display: block;
}
.nav-area ul{
  list-style: none;
  margin: 0;
}
.nav-area > ul > li {
  float: left;
  position: relative;
}
.nav-area ul li a {
  text-decoration: none;
  color: #fff;
  padding: 15px 20px;
  display: block;
}
.nav-area ul li:hover a {
  background: #34495a;
}
.nav-area ul ul {
  position: absolute;
  padding: 0;
  min-width: 160px;
  display: none;
  top: 100%;
  left: 0;
}
.nav-area ul li:hover > ul {
  display: block;
}
.nav-area ul ul li:hover a {
  background: #262626;
}
.nav-area ul ul li {
  position: relative;
}
.nav-area ul ul ul {
  top: 0;
  left: 100%;
}
</style>
<%!
	//회원 분류 형변환
	int userClass=0;
	
	public void cast_ob(HttpSession session){
		String userClass_t = String.valueOf(session.getAttribute("userClass"));
		if(userClass_t.equals("null")){
			userClass_t = "1";
		}
		userClass = Integer.parseInt(userClass_t);
	}
%>
<%
	//위 형변환 메서드를 이용하여 가져온 회원 분류를 통해
	//분류 마다 다른 메뉴를 보여주기 
	cast_ob(session);
	String menuInfo[] = new String[4];
	String dropMenuInfo[] = new String[16];
	String dropMenuLink[] = new String[16];
	menuInfo[1] = "작업";
	menuInfo[2] = "정산";
	menuInfo[3] = "기타";
	if (userClass==0) {//관리자
		//관리자 기능은 아직 개발중인 기능이므로, 테스트를 위해 게시판만 확인 가능함
		
		dropMenuInfo[13] = "개인 사용자 전용";
		dropMenuInfo[14] = "자유 게시판";
		dropMenuInfo[15] = "공지 사항";
		dropMenuLink[13] = "eachBoard.do?boardClassNum=1";
		dropMenuLink[14] = "eachBoard.do?boardClassNum=0";
		dropMenuLink[15] = "eachBoard.do?boardClassNum=3";
		
	} else if (userClass==1) {// 개인 회원
		menuInfo[0] = "등록";
		dropMenuInfo[0] = "사업자 정보";
		dropMenuInfo[1] = "대리 작업자";
		dropMenuInfo[2] = "차량 정보";
		dropMenuInfo[3] = "그룹 정보";
		dropMenuInfo[4] = "작업 목록";
		dropMenuInfo[5] = "완료 작업";
		dropMenuInfo[8] = "정산 조회";
		dropMenuInfo[9] = "현황/그래프";
		dropMenuInfo[10] = "";
		dropMenuInfo[11] = "";
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
		dropMenuLink[5] = "finishedWorkList.do";
		dropMenuLink[8] = "finishedCalculate.do?classType=indiusrn";
		dropMenuLink[9] = "getStatistics.do?classType=indiusrn";
		dropMenuLink[13] = "eachBoard.do?boardClassNum=1";
		dropMenuLink[14] = "eachBoard.do?boardClassNum=0";
		dropMenuLink[15] = "eachBoard.do?boardClassNum=3";
		
	} else if (userClass==2) { //중계 회원
		menuInfo[0] = "설정";
		dropMenuInfo[0] = "사업자 정보";
		dropMenuInfo[1] = "회원 관리";
		dropMenuInfo[2] = "거래처 관리";
		dropMenuInfo[4] = "작업 관리";
		dropMenuInfo[5] = "작업 발주";
		dropMenuInfo[6] = "완료 작업";
		dropMenuInfo[8] = "정산 처리";
		dropMenuInfo[9] = "현황/그래프";
		dropMenuInfo[13] = "중계 사용자 전용";
		dropMenuInfo[14] = "자유 게시판";
		dropMenuInfo[15] = "공지 사항";
		//////////
		dropMenuLink[0] = "showBO.do";
		dropMenuLink[1] = "showGrouper.do";
		dropMenuLink[2] = "showClient.do";
		dropMenuLink[4] = "workInfo.do";
		dropMenuLink[5] = "workOrderInfo.do";
		dropMenuLink[6] = "finishedWorkList_Ass.do";
		dropMenuLink[8] = "calculate.do?classType=assUsRn";
		dropMenuLink[9] = "getStatistics.do?classType=assUsRn";
		dropMenuLink[13] = "eachBoard.do?boardClassNum=2";
		dropMenuLink[14] = "eachBoard.do?boardClassNum=0";
		dropMenuLink[15] = "eachBoard.do?boardClassNum=3";
		
	} else if (userClass==3) { //대리작업자 (개발중)
	}
%>
<body>
	<nav class="nav-area">
			<ul>
			<li><a href="main.do">Home</a></li>
			<li><a href="about.html">About</a></li>
			<li><a href="#"><%=menuInfo[0]%></a>
				<ul>
					<li><a href="<%=dropMenuLink[0]%>"><%=dropMenuInfo[0] %></a></li>
					<li><a href="<%=dropMenuLink[1]%>"><%=dropMenuInfo[1] %></a></li>
					<li><a href="<%=dropMenuLink[2]%>"><%=dropMenuInfo[2] %></a></li>
					<% if(userClass==1){%><li><a href="<%=dropMenuLink[3]%>"><%=dropMenuInfo[3] %></a></li><%} %>

				</ul></li>
			<li><a href="#"><%=menuInfo[1]%></a>
				<ul>
					<li><a href="<%=dropMenuLink[4]%>"><%=dropMenuInfo[4] %></a></li>
					<li><a href="<%=dropMenuLink[5]%>"><%=dropMenuInfo[5] %></a></li>
					<% if(userClass==2){%><li><a href="<%=dropMenuLink[6]%>"><%=dropMenuInfo[6] %></a></li><%} %>

				</ul></li>
			<li><a href="#"><%=menuInfo[2]%></a>
				<ul>
					<li><a href="<%=dropMenuLink[8]%>"><%=dropMenuInfo[8] %></a></li>
					<li><a href="<%=dropMenuLink[9]%>"><%=dropMenuInfo[9] %></a></li>

				</ul></li>
			<li><a href="#"><%=menuInfo[3]%></a>
				<ul>
					<li><a href="<%=dropMenuLink[13]%>"><%=dropMenuInfo[13] %></a></li>
					<li><a href="<%=dropMenuLink[14]%>"><%=dropMenuInfo[14] %></a></li>
					<li><a href="<%=dropMenuLink[15]%>"><%=dropMenuInfo[15] %></a></li>
				</ul>
			</li>
			<li><a href="logOut.do">로그아웃</a></li>
			<li><a href="checkIdentity.jsp">내정보</a></li>
		</ul>
	</nav>
</body>
```

![상단 메뉴](https://user-images.githubusercontent.com/14798713/143312508-95635a60-2d01-453f-a6ee-a9ae287b6070.gif)
상단 메뉴 

<div align="center">
다음은 회원 분류 모듈입니다. (class_Module.jsp)
이 모듈은 각 회원 구분에 따라 사용 할 기능들을 다른 회원들이 사용하지 못하게 막는 기능을 가진 모듈입니다.
또한 해당 모듈은 위에서 보여드린 형변환 메서드(cast_ob())와 JavaScript으로만 구현하였습니다.
하여 형변환 메서드는 생략하고 JavaScript만 보여드리겠습니다.
</div>

```jsp
<script type="text/javascript">
window.addEventListener('load',function loadOn() {

	// 모듈을 포함하는 페이지에서 body 태그에 onload 속성을 사용 할 수 있으므로,
	// addEventListener() 를 통해 여러개의 이벤트 핸들러를 등록함
	
	<%
	cast_ob(session);
	// 회원 구분 형변환
	
	// 비회원을 구분하는 코드
	String loginCheckData="";
	try{
		loginCheckData= (String)session.getAttribute("userId");
	}catch(NullPointerException e){
		System.err.println("비회원 아이디 에러 : "+e);
	}
	%>
	var loginCheckData = '<%=loginCheckData%>';
	loginCheck(loginCheckData);
	// main.js 파일에 loginCheck() 메서드를 통해 비회원을 구분함
	
	
	//현재 페이지의 접속 권한(classType)이 정확한지 확인 하여 변수에 값을 할당
	<%
	boolean index_1 = request.getAttribute("classType").equals(1);
	boolean index_2 = request.getAttribute("classType").equals(2);
	boolean index_3 = request.getAttribute("classType").equals(userClass);
	%>
	if(<%=index_1%>||<%=index_2%>){
		// 현재 페이지의 접속 권환 확인이 정상적으로 이루어졌다면 실행하는 구문
		if(<%=index_3%>==false){
			// 현재 페이지의 접속 권한이 회원 분류(접속 권한)이 맞지 않다면, 메인화면으로 이동
			location.href='main.do';
		}
	}
});
</script>
```

<div align="center">
다음은 플로팅 메뉴의 모듈입니다. (floating_module.jsp)
플로팅 메뉴의 경우 상단 메뉴와 달리 단순한 기능만을 구현하고 있습니다.
총 3가지 기능으로 구성되어 있으며, 각각의 기능은 맨위로(상단이동), HOME(메인 페이지 이동), 고객센터(해당 게시판 이동) 등 입니다.

이 플로팅 메뉴는 화면이 스크롤 될 경우 정해진 위치에 고정되는 메뉴이지만, 아무런 애니메이션 없이
화면에 고정만 되어 있다면 너무 딱딱한 느낌이 들어 jQuery를 통해 부드럽게 화면을 따라오는 애니메이션을 구현 하였습니다.

물론 제게 익숙한 언어는 JavaScript 이지만 해당 기능을 JS로 구현했을때에는 프레임이 다소 떨어지는(부드럽지 않은) 현상이
발생하여, jQuery를 이용하여 구현하였습니다.

마지막으로 고객센터 기능은 아직 구현이 되지 않아 alert()로 구현 해두었으니, 참고 부탁드립니다.

아래는 JSP로 구현된 코드 중 일부 입니다. 이어서 CSS도 보여드리겠습니다.
</div>

```jsp
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="/css/main.css?ver=22">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="/js/main.js?ver=10" ></script>
<script type="text/javascript">
$(document).ready(function(){
	var currentPosition = parseInt($("#floating_btn").css("top"));
	// 플로팅 메뉴(floating_btn)의 top 값
	
	$(window).scroll(function() { // 스크롤 발생 시 실행되는 함수
		var position = $(window).scrollTop();
		// 현재 스크롤 위치 값
		$("#floating_btn").stop().animate({"top":position+currentPosition+"px"},700);
		// animate() 함수 전에 stop() 을 사용하여 애니메이션 도중 스크롤 값이 변경될 경우
		// 해당 애니메이션을 중단하게 코딩 함
	});
});
</script>
<body>
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
</body>
```

```CSS
.floating_btn { 
	position: absolute; 
	right: 50%; 
	top : 70%;
	right : 50px;
	text-align:center; 
	width: 50px;
	height: 250px;
	border: 0.5px #CCCCCC solid;
	background: linear-gradient( 45deg, #6E6E6E, #CCCCCC );
	border-radius: 10px / 10px;
	padding-bottom: 5px;
}
.floating_btn_img {
	margin : 5px 0px 5px 0px;
	display : inline-block;
	background: linear-gradient( 45deg, #f0f0f0, #F2F2F2 );
	width: 80%;
	height: 30px;
	padding-top: 5px;
	border: 0.3px #f0f0f0 solid;
	border-radius: 10px / 10px;
}
.floating_btn img {
	width: 60%;
	height: 65%;
}
.floating_btn p {
	font-size : 7px;
	color : #E3E3E3;
}
.floating_btn #floating_title{
	color: black;
}
```

![플로팅](https://user-images.githubusercontent.com/14798713/143312497-26646a07-4899-480d-b919-bc4a964318e7.gif)
플로팅 메뉴 결과 화면

<div align="center">
그 외 다른 모듈들이 있습니다.
사업자 정보 등록 유무 모듈, 비회원 구분 모듈 등등 여러가지 모듈이 더 있지만 구성이 비슷하므로 생략 하겠습니다.
</div>

><h5 align="center">표현식</h5>

<div align="center">
새로운 데이터를 입력 받을 때, 제가 설계한 데이터만을 받기 위해 JavaScript를 이용한 정규 표현식을 통해
원하는 데이터만 입력 할 수 있게 구현 했습니다. 
이는 Back end로 대체 구현 가능한 기능 이지만, 그렇게 된다면 연산식이 많아지고 처리 속도에도 영향을 미치는 부분을 고려해
JavaScript를 통해 프론트에서 해당 기능을 구현했습니다.
	
아래는 입력한 id의 유효성 검사 코드입니다.
비밀번호와 이메일, 연락처 등등의 유효성 검사가 필요한 값들은 아래와 같은 코드로
구현 되어있으므로 생략하겠습니다.
</div>

```javascript
//newUser.jsp 중 일부
function validate() {
	var re = /^[a-zA-Z0-9]{4,12}$/; 
	// 아이디가 적합한지 검사할 정규식
	var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	// 이메일이 적합한지 검사할 정규식( 추후 사용 안함 )
	var chkNum = /^[0-9]+$/;
	// 숫자 정규식

	var id = document.getElementById("userId").value;
	// 입력된 id값
	
	if(!re.test(id)){
		alert('아이디는 4~12자의 영문 대소문자와 숫자로만 입력');
		return false;
	}
}
```

><h5 align="center">알고리즘</h5>

<div align="center">
그렇다면 주민등록번호와 같은 중요 데이터는 어떻게 검사를 해야 할까요?
프로젝트를 진행하면서 오픈 API를 사용하여 검사하려고 했지만, 개인 프로젝트는 해당 API를 사용하기에
여러가지 제약이 있었습니다. 

하여 주민등록번호의 원리를 찾아 알고리즘으로 구현 했습니다.

아래는 해당 코드입니다.
</div>

```javascript
	/*
주민등록번호는 마지막 자리의 숫자를 제외한 모든 숫자에 지정된 값(2,3,4,5,6,7,8,9,2,3,4,5)을
곱한 후 해당 결과값을 모두 더하고, 결과값을 11로 나눈 나머지 11에서 뺀 값이 주민등록번호 마지막 자리의 수와 
일치 한다면 정상적인 주민등록번호 입니다.
(11로 나눈 나머지 값 = 마지막 자리 수)
	*/
	var boRrn01 = document.getElementById("boRrn01").value; // 주민등록번호 앞자리
	var boRrn02 = document.getElementById("boRrn02").value; // 주민등록번호 뒷자리
	var arrNum1 = new Array(); // 주민번호 앞자리숫자 6개를 담을 배열
   	var arrNum2 = new Array(); // 주민번호 뒷자리숫자 7개를 담을 배열
	var tempSum = 0; // 계산 합
	
	for (var i = 0; i < boRrn01.length; i++) {
		arrNum1[i] = boRrn01.charAt(i);
	} 
	// 주민번호 앞자리를 배열에 순서대로 담는다.
	
	for (var i = 0; i < boRrn02.length; i++) {
		arrNum2[i] = boRrn02.charAt(i);
	} // 주민번호 뒷자리를 배열에 순서대로 담는다.
	
	for (var i = 0; i < boRrn01.length; i++) {
	    tempSum += arrNum1[i] * (2 + i);
	} 
	// 주민번호 검사방법을 적용하여 앞 번호를 모두 계산하여 더함
	
	for (var i = 0; i < boRrn02.length - 1; i++) {
	    if (i >= 2) {
		tempSum += arrNum2[i] * i;
	    } else {
		tempSum += arrNum2[i] * (8 + i);
	    }
	} 
	// 같은방식으로 앞 번호 계산한것의 합에 뒷번호 계산한것을 모두 더함
	
	if ((11 - (tempSum % 11)) % 10 != arrNum2[6]) {
	// 모든 번호의 결과값의 합을 11로 나눈 나머지와 주민등록번호 마지막 자리가 일치하지 않을 경우
	    alert("올바른 주민번호가 아닙니다.");
	    boRrn01 = "";
	    boRrn02 = "";
	    document.getElementById("boRrn01").focus();
	    return false;
	}	
```

<div align="center">
이렇게 해서 주민등록번호의 유효성 검사를 진행하는 로직을 구현했습니다.

사업자등록번호 역시 마찬가지로 원리를 찾아 알고리즘으로 유효성 검사 코드를 구현했습니다.
하지만 주민등록번호 유효성 검사와 같은 단순 연산 알고리즘이므로 생략하겠습니다.

다음으로 보여드릴 알고리즘은 달력 알고리즘입니다.
이 역시 달력의 원리를 알고 나면 단순 연산으로 구현 가능한 알고리즘이지만,
개인적으로 달력의 원리가 잘 이해 되지 않아 구현하는데 상당히 애먹은 기능입니다.

아래는 해당 코드입니다.
</div>

```javaScript

/*
해당 알고리즘에서 달력의 처음 즉 첫 날짜는 0년 1월 1일(월요일) 부터 시작하며,
JSP를 통해 오늘 날짜를 가져와 기본 세팅을 진행해주었습니다.

달력의 기본 원리는 1년마다 첫일(1월 1일)의 요일이 하루씩 밀린다는 겁니다.
예를 들어 2001년 1월 1일이 월요일이라면 2002년 1월 1일은 화요일입니다.

그런데 실제로 2000년 1월 1일은 토요일 입니다. 위에서 말씀 드린 내용을 바탕으로
생각해보면 2001년 1월 1일은 일요일이어야 하는데 말이죠.

이는 윤년 떄문입니다. 윤년에 해당하는 년도는 총 366일 이기 때문에 이틀이 밀리기 때문에
2001년 1월 1일이 월요일이 됬습니다.

윤년은 기본적으로 4년에 한번씩 오게 되며, 만약 윤년이 100의 배수가 된다면 해당 년도는 윤년이 아니게 됩니다.
하지만 해당 윤년이 400의 배수가 된다면 윤년에 해당됩니다.

즉 4년에 한번 씩 윤년이며, 100과 400의 공배수(공통 배수) 를 제외 한 100의 배수는 윤년에 해당 하지 않습니다.

그럼 아래 코드를 설명드리겠습니다.
	
	jsp에 작성된 기본 셋팅
	<%
	Date now = Calendar.getInstance().getTime();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy@MM@dd");
	String[] nowDate = formatter.format(now).split("@");
	int nowYear = Integer.parseInt(nowDate[0]);//이번년도
	int nowMonth = Integer.parseInt(nowDate[1]);//이번달
	int today = Integer.parseInt(nowDate[2]);//오늘
	%> 
*/
	var nowYear = <%=nowYear%>; // 년도
	var saveYear = <%=nowYear%>; // 년도
	var nowMonth = <%=nowMonth%>;  // 월
	var saveMonth = <%=nowMonth%>;  // 월 정보 저장
	var today = <%=today%>;  // 날짜
	var eachMonth = new Array(12);// 월별 일수
	var sum_month = 0;// 월별 일수의 합
	var relsult = 0;// 결과값
	var lastYear = 0;// 작년 년도
	
	
	// 기본 셋팅 함수
	function set_day() {
		eachMonth[0] =  31;
		eachMonth[1] =  28;
		eachMonth[2] =  31;
		eachMonth[3] =  30;
		eachMonth[4] =  31;
		eachMonth[5] =  30;
		eachMonth[6] =  31;
		eachMonth[7] =  31;
		eachMonth[8] =  30;
		eachMonth[9] =  31;
		eachMonth[10] =  30;
		eachMonth[11] =  31;
		if(nowYear%4==0 && (nowYear%400==0 || nowYear%100!=0)){//올해가 윤년일 경우 2월을 29일로 설정
			eachMonth[1] = 29;
		}
	
		sum_month = 0;//월별 일수의 합
		lastYear = nowYear-1;//작년 년도
	
	
		relsult = lastYear + lastYear/4 + (lastYear/400 - lastYear/100);
		//0년 1월 1일 부터의 일 계산 (작년 + 작년까지의 4년주기의 윤년 수 + 작년까지의 400년 주기의 윤년 수 - 윤년에 해당하지 않는 윤년의 수(100으로 나누어 떨어지면 윤년이 아님);
		//몇일이 밀려야 하는지를 계산함
	
		for(var i = 0; i < nowMonth; i++){//이번 달까지의 월별 일 수 를 모두 더함
			sum_month = sum_month + eachMonth[i];
		}
	}
	
	function calendar_cleaner() {
		for(var i = 1; i < 43; i++){
			document.getElementById('day'+ i).innerHTML = '-';
		}
	}
	
	function show_calendar(){
		set_day();
		//셋팅
		
		var rlt = 0;
		sum_month -= eachMonth[nowMonth-1];//이번달까지의 일수 - 이번달의 일수
		relsult = relsult + sum_month;//0년 1월 1일부터 올해까지 밀린 일수 + 오늘까지 지난 올해의 일수
		rlt = Math.round(relsult%7);//일주일을 나누면 나머지 값을 통해 이번달 첫 요일이 나옴
		for(var i = 0 ; i < eachMonth[nowMonth-1]; i++){ // 캘린더에 입력
			rlt++;
			if(saveMonth==nowMonth&&saveYear==nowYear){
				if(rlt==today){
					document.getElementById('day'+rlt).innerHTML = '<span class="active">' + (i+1) + '</span>';
				}else {
					document.getElementById('day'+rlt).innerHTML = i+1;
				}
			}else {
				document.getElementById('day'+rlt).innerHTML = i+1;
			}
		}
		document.getElementById('month').innerHTML = nowMonth + '<br><span style="font-size: 18px">'+ nowYear +'</span>';
		relsult=0;
		sum_month=0;
		lastYear=0;
	}
	
	// 저번 달 or 다음 달 보기
	function prevOrNext(click_num) {
		switch (click_num) {
		case 0:
			calendar_cleaner();
			if(nowMonth==1){
				nowYear--;
				nowMonth=12;
			}else {
				nowMonth--;
			}
			show_calendar();
			break;
		case 1:
			calendar_cleaner();
			if(nowMonth==12){
				nowYear++;
				nowMonth=1;
			}else {
				nowMonth++;
			}
			show_calendar();
			break;
		default:
			alert('에러');
			break;
		}
		
		
	}
	
	//오늘의 요일 구하기
	function today_fun() {
		set_day();
		var rlt = 0;
	    sum_month = sum_month - eachMonth[nowMonth-1] + today-1;//(이번달까지의 총일수 - 이번달 일수 + 오늘 날짜+1)
	    relsult = relsult + sum_month;//0년 1월 1일부터 올해까지 밀린 일수 + 오늘까지 지난 올해의 일수
	    rlt = Math.round(relsult%7);//일주일을 나누면 나머지 값을 통해 오늘의 요일이 나옴
	    
	}
```

![달력](https://user-images.githubusercontent.com/14798713/143312516-ab76bd65-8a6e-4341-aa86-1d93a4dbaa64.gif)
달력 결과 화면

<div align="center">
이렇게 알고리즘 파트를 마치겠습니다.
페이징 기법 역시 알고리즘에 해당하지만, Back end 코드를 말씀드리면서 설명드렸기 때문에
알고리즘 파트에서는 제외하였습니다.
	
이러한 알고리즘을 이용하여 사용자의 편의를 보장 했다면
해당 프로그램의 보안은 어떻게 처리 했을까 하는 궁금증이 있으실 텐데요.
	
웹 프로그램은 CS방식에 비해 보안에 취약하다는 것은 누구나 다 아는 사실입니다.
아무래도 프론트에 해당하는 코드들이 공개되어 있으며, 주소값을 통해 데이터를 조작할 수 도 있습니다.
	
그렇게 되면 대략적인 개발 과정을 파악하고 있는 사람이라면 손쉽게 데이터를 조작하고,
원하는 데이터를 확인 할 수 있습니다.
	
이를 방지하기 위해서는 서버 혹은 Back end에서 비정상적인 요청을 확인하고 거부해야합니다.
저는 예외처리와 요청 확인 구문을 통해 이를 어느정도 방지하도록 구현했지만
정상적인 데이터와 비정상적인 데이터를 모두 검사할 수 는 없다고 판단하였습니다.

하여 대부분의 데이터 위변조가 일어나는 주소값을 통해 이를 방지해야 한다고 생각했습니다.
</div>

![KakaoTalk_20211124_182658727](https://user-images.githubusercontent.com/14798713/143211355-4c41a9f1-fcb8-4a2c-8edb-e17349a3e025.png)

><h5 align="center">iframe</h5>

<div align="center">
위에 사례 처럼 데이터 위변조를 방지하고, 동적 프로그램을 구현하기 위한 방법으로 iframe 태그를 이용했습니다.
아래는 iframe 기능을 사용한 대표적인 코드입니다.

중계 회원이 개인 회원에게 등록된 작업을 발주 하기 위한 페이지이며
발주를 원하는 작업을 선택하고, 발주 할 개인 회원을 선택하는 화면을 구성한 코드입니다.
	
이 때, 등록된 작업 목록과 발주 가능한 개인 회원을 iframe태그를 이용하여 동적으로 구성하였으며
작업을 선택하면 발주 회원을 선택하는 화면이 순차적으로 보여집니다.
또한 원하는 작업 혹은 회원의 정보가 하단의 입력칸에 자동으로 입력됩니다.

이를 통해 해당 프로그램에서는 개발자가 지정한 데이터만을 보여줄 수 있었습니다.
(주소값 조작을 통해 다른 데이터 조회 불가능)
	
원활한 설명을 드리기 위해 결과 사진을 먼저 보여드리고 코드를 보여드리겠습니다.
(CSS는 생략하겠습니다)
</div>

![발주](https://user-images.githubusercontent.com/14798713/143312476-7c076496-8d19-4351-99b9-b5cb03d57e65.gif)
작업 발주 결과 화면

```jsp
	/*
	newOrder.jsp 중 일부
	*/
	
	<jsp:include page="top_menu.jsp" />
	<jsp:include page="floating_module.jsp" />
	<jsp:include page="boCheck_module.jsp" />
	<main>
	<div class="mainDiv">
		<div class="div1">
			<div class="div1_textArea">
				<h2>새 발주 등록</h2>
			</div>
		</div>
		<div class="div2">
			<div class="div_2_back">
				<div class="div2_1">
					<div class="div2_1_1">
						<h2 id="div2_1_1_h2">작업 선택</h2>
						<div class="h2_btn_div">
							<button disabled="disabled" id="backBtn" onclick="back_btn();"
								class="check_btn">이전</button>
							<button onclick="confirm_work();" id="confirmBtn" value="0"
								class="check_btn">작업 확정</button>
						</div>
					</div>
					<div class="div2_1_2">
						<iframe src="" frameborder="0" id="info_Frame"></iframe>
						<p style="font-size: 18px;">※ 작업 선택 및 확정 > 작업자 선택 및 확정 > 발주 등록
						</p>
					</div>
				</div>
				<div class="div2_2">
					<div class="div2_2_1">
						<p style="font-size: 12px;">※ 상단에 원하시는 작업 혹은 작업자 를 선택 하시면 정보가
							자동으로 입력 됩니다.</p>
						<h3>작업 정보</h3>
						<table id="inputTB">
							<tr>
								<th>현장명</th>
								<td><input type="text" readonly="readonly" id="workField"
									name="workField" /></td>
								<th>현장 책임자</th>
								<td><input type="text" readonly="readonly"
									id="fieldManager" name="fieldManager" /></td>
								<th colspan="2">현장 책임자 메일 주소</th>
								<td colspan="2"><input type="text" readonly="readonly"
									id="fieldManagerMail" name="fieldManagerMail" /></td>
							</tr>
							<tr>
								<th colspan="2">현장 책임자 전화번호</th>
								<td colspan="2"><input type="text" readonly="readonly"
									id="fieldManagerPhone01" name="fieldManagerPhone01"
									style="width: 30px;" /> - <input type="text"
									readonly="readonly" id="fieldManagerPhone02"
									name="fieldManagerPhone02" style="width: 35px;" /> - <input
									type="text" readonly="readonly" id="fieldManagerPhone03"
									name="fieldManagerPhone03" style="width: 35px;" /></td>
								<th colspan="2">현장 책임자 핸드폰</th>
								<td colspan="2"><input type="text" readonly="readonly"
									id="fieldManagerCell01" name="fieldManagerCell01"
									style="width: 30px;" /> - <input type="text"
									readonly="readonly" id="fieldManagerCell02"
									name="fieldManagerCell02" style="width: 35px;" /> - <input
									type="text" readonly="readonly" id="fieldManagerCell03"
									name="fieldManagerCell03" style="width: 35px;" /></td>
							</tr>
							<tr>
								<th colspan="2">현장 주소</th>
								<td colspan="2"><input type="text" readonly="readonly"
									id="fieldAdd01" name="fieldAdd01" /></td>
								<th colspan="2">현장 상세 주소</th>
								<td colspan="2"><input type="text" readonly="readonly"
									id="fieldAdd02" name="fieldAdd02" /></td>
							</tr>
							<tr>
								<th>작업 날짜</th>
								<td><input type="date" readonly="readonly" id="workDate"
									name="workDate" /></td>
								<th>작업 시간</th>
								<td><input type="text" readonly="readonly" id="workTime01"
									name="workTime01" style="width: 15px;" /> : <input type="text"
									readonly="readonly" id="workTime02" name="workTime02"
									style="width: 15px" /></td>
								<th>작업 수당</th>
								<td colspan="3"><input type="text" readonly="readonly"
									id="workAmount" name="workAmount" /></td>
							</tr>
							<tr>
								<th>거래처 명</th>
								<td><input type="text" readonly="readonly"
									id="clientCpName" name="clientCpName" /></td>
								<th>거래처 담당자</th>
								<td><input type="text" readonly="readonly"
									id="ClientManager" name="ClientManager" /></td>
								<th colspan="2">거래처 전화번호</th>
								<td colspan="2"><input type="text" readonly="readonly"
									id="clientPhone01" name="clientPhone01" style="width: 35px;" />-<input
									type="text" readonly="readonly" id="clientPhone02"
									name="clientPhone02" style="width: 35px;" />-<input
									type="text" readonly="readonly" id="clientPhone03"
									name="clientPhone03" style="width: 35px;" /></td>
							</tr>
							<tr>
								<th colspan="2">요청 사항</th>
								<td colspan="6"><input style="width: 90%;" type="text"
									readonly="readonly" id="workRequests" name="workRequests" /></td>
							</tr>
						</table>
						<h3>작업자 정보</h3>
						<table id="inputTB">
							<tr>
								<th>작업자 이름</th>
								<td colspan="2"><input type="text" id="userName"
									name="userName" readonly="readonly" /> <input type="hidden"
									id="rv" name="rv" readonly="readonly" /></td>
								<th>작업자 연락처</th>
								<td colspan="2"><input type="text" id="userCell"
									name="userCell" readonly="readonly" /></td>
							</tr>
							<tr>
								<th>장비 종류</th>
								<td><input type="text" id="equipType" name="equipType"
									readonly="readonly" /></td>
								<th>장비 분류</th>
								<td><input type="text" id="equipClass" name="equipClass"
									readonly="readonly" /></td>
								<th>장비 옵션</th>
								<td><input type="text" id="equipOption" name="equipOption"
									readonly="readonly" /></td>
							</tr>
						</table>
					</div>
					<div class="div2_2_2">
						<div class="div2_2_2_btn">
							<form action="newOrderAct.do" style="display: inline-block;">
								<input type="hidden" id="workCode" name="workCode" /> <input
									type="hidden" id="usRn" name="usRn" readonly="readonly" /> <input
									type="hidden" id="eqRn" name="eqRn" readonly="readonly" />
								<button type="submit" onclick="return confirm_All();">발주
									등록</button>
							</form>
							<button onclick="location.href='workOrderInfo.do'">뒤로가기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="div3"></div>
	</div>
	</main>
```

```javaScript
//javaScript 코드 중 일부

	var info_num01; // 선택한 정보 값 (자식 페이지(iframe)에서 값 전달
	var info_num02; // 선택한 정보 값 (자식 페이지(iframe)에서 값 전달
	
	//단순 정보 입력 함수
	function insert_val01() {
 		var workField = document.getElementById('info_Frame').contentDocument.getElementsByName('workField')[info_num01].value;
 		var fieldManager = document.getElementById('info_Frame').contentDocument.getElementsByName('fieldManager')[info_num01].value;
 		var fieldManagerMail = document.getElementById('info_Frame').contentDocument.getElementsByName('fieldManagerMail')[info_num01].value;
 		var fieldManagerPhone01 = document.getElementById('info_Frame').contentDocument.getElementsByName('fieldManagerPhone01')[info_num01].value;
 		var fieldManagerPhone02 = document.getElementById('info_Frame').contentDocument.getElementsByName('fieldManagerPhone02')[info_num01].value;
 		var fieldManagerPhone03 = document.getElementById('info_Frame').contentDocument.getElementsByName('fieldManagerPhone03')[info_num01].value;
 		var fieldManagerCell01 = document.getElementById('info_Frame').contentDocument.getElementsByName('fieldManagerCell01')[info_num01].value;
 		var fieldManagerCell02 = document.getElementById('info_Frame').contentDocument.getElementsByName('fieldManagerCell02')[info_num01].value;
 		var fieldManagerCell03 = document.getElementById('info_Frame').contentDocument.getElementsByName('fieldManagerCell03')[info_num01].value;
 		var fieldAdd01 = document.getElementById('info_Frame').contentDocument.getElementsByName('fieldAdd01')[info_num01].value;
 		var fieldAdd02 = document.getElementById('info_Frame').contentDocument.getElementsByName('fieldAdd02')[info_num01].value;
 		var workTime01 = document.getElementById('info_Frame').contentDocument.getElementsByName('workTime01')[info_num01].value;
 		var workTime02 = document.getElementById('info_Frame').contentDocument.getElementsByName('workTime02')[info_num01].value;
 		var workAmount = document.getElementById('info_Frame').contentDocument.getElementsByName('workAmount')[info_num01].value;
 		var workRequests = document.getElementById('info_Frame').contentDocument.getElementsByName('workRequests')[info_num01].value;
 		var clientCpName = document.getElementById('info_Frame').contentDocument.getElementsByName('clientCpName')[info_num01].value;
 		var ClientManager = document.getElementById('info_Frame').contentDocument.getElementsByName('ClientManager')[info_num01].value;
 		var clientPhone01 = document.getElementById('info_Frame').contentDocument.getElementsByName('clientPhone01')[info_num01].value;
 		var clientPhone02 = document.getElementById('info_Frame').contentDocument.getElementsByName('clientPhone02')[info_num01].value;
 		var clientPhone03 = document.getElementById('info_Frame').contentDocument.getElementsByName('clientPhone03')[info_num01].value;
 		var workCode = document.getElementById('info_Frame').contentDocument.getElementsByName('workCode')[info_num01].value;
 		var rv = document.getElementById('info_Frame').contentDocument.getElementsByName('rv')[info_num01].value;
 		
 		document.getElementById('workField').value = workField;
 		document.getElementById('fieldManager').value = fieldManager;
 		document.getElementById('fieldManagerMail').value = fieldManagerMail;
 		document.getElementById('fieldManagerPhone01').value = fieldManagerPhone01;
 		document.getElementById('fieldManagerPhone02').value = fieldManagerPhone02;
 		document.getElementById('fieldManagerPhone03').value = fieldManagerPhone03;
 		document.getElementById('fieldManagerCell01').value = fieldManagerCell01;
 		document.getElementById('fieldManagerCell02').value = fieldManagerCell02;
 		document.getElementById('fieldManagerCell03').value = fieldManagerCell03;
 		document.getElementById('fieldAdd01').value = fieldAdd01;
 		document.getElementById('fieldAdd02').value = fieldAdd02;
 		document.getElementById('workTime01').value = workTime01;
 		document.getElementById('workTime02').value = workTime02;
 		document.getElementById('workAmount').value = workAmount;
 		document.getElementById('workRequests').value = workRequests;
 		document.getElementById('clientCpName').value = clientCpName;
 		document.getElementById('ClientManager').value = ClientManager;
 		document.getElementById('clientPhone01').value = clientPhone01;
 		document.getElementById('clientPhone02').value = clientPhone02;
 		document.getElementById('clientPhone03').value = clientPhone03;
 		document.getElementById('workCode').value = workCode;
 		document.getElementById('rv').value = rv;
	}
	
	//단순 정보 입력 함수
	function insert_val02() {
 		var usRn = document.getElementById('info_Frame').contentDocument.getElementsByName('usRn')[info_num02].value;
 		var userName = document.getElementById('info_Frame').contentDocument.getElementsByName('userName')[info_num02].value;
 		var userCell = document.getElementById('info_Frame').contentDocument.getElementsByName('userCell')[info_num02].value;
 		var equipType = document.getElementById('info_Frame').contentDocument.getElementsByName('equipType')[info_num02].value;
 		var equipClass = document.getElementById('info_Frame').contentDocument.getElementsByName('equipClass')[info_num02].value;
 		var equipOption = document.getElementById('info_Frame').contentDocument.getElementsByName('equipOption')[info_num02].value;
 		var eqRn = document.getElementById('info_Frame').contentDocument.getElementsByName('eqRn')[info_num02].value;
 		
 		
 		document.getElementById('usRn').value = usRn;
 		document.getElementById('userName').value = userName;
 		document.getElementById('userCell').value = userCell;
 		document.getElementById('equipType').value = equipType;
 		document.getElementById('equipClass').value = equipClass;
 		document.getElementById('equipOption').value = equipOption;
 		document.getElementById('eqRn').value = eqRn;
	}
	
	
	// 작업 확정 시 실행되는 함수
	function confirm_work() {
 		var btn_val = document.getElementById('confirmBtn').value; // 작업 확정 버튼의 value 값
 		var confirmBtn = document.getElementById('confirmBtn');
 		var backBtn = document.getElementById('backBtn'); // 작업 확정 후 확정 취소를 위한 버튼
 		switch (btn_val) {
		case '0': // default 값이 0으로 설정되어 있음
			
			if(document.getElementById('workCode').value==''){ // 작업이 선택되지 않음
				alert('작업을 선택 해주세요.');
			}else { // 작업이 선택됨
				var rv = document.getElementById('rv');
				var h2 = document.getElementById('div2_1_1_h2');
				
				// iframe 태그의 주소값을 변경해 줌으로써 같은 영역에 다른 정보를 보여줌
				// (작업자 목록을 보여주기 위함)
				document.getElementById('info_Frame').setAttribute('src','order_frame02.do?equipType=' + rv.value);
				confirmBtn.value = 1; // 확정 버튼의 값이 1이면 작업이 확정되어 있는 상태임
				backBtn.removeAttribute('disabled'); // 뒤로 가기 버튼 활성화
				confirmBtn.innerHTML='작업자 확정'; // 버튼 이름 변경
				h2.innerHTML='작업자 선택';
			}
			break;
		case '1': // 작업 확정이 완료 되었으며, 작업자 확정 버튼을 클릭 했을때 실행
			if(document.getElementById('workCode').value==''){ // 작업 확정 재검사
				alert('잘못된 접근 입니다.');
			}else if(document.getElementById('usRn').value==''||document.getElementById('eqRn').value==''){ // 작업자 미선택
				alert('작업자를 선택 해주세요.');
			}else { //작업자 선택 완료
				confirmBtn.value = 2; // 해당 버튼의 value 가 2일 경우 모든 데이터 입력이 완료 됨
				backBtn.setAttribute('disabled','disabled'); // 뒤로가기 버튼 비활성화
				confirmBtn.setAttribute('disabled','disabled'); // 확정 버튼 비활성화
				alert('발주 정보 등록이 완료 되었습니다. \n하단의 [ 발주 등록 ] 버튼을 눌러주세요.');
			}
			break;
		default:
			alert('err - 관리자에게 문의 하세요. 페이지가 새로고침 됩니다.');
			location.href = 'newOrder.do';
			break;
		}
	}
	
	// 작업 확정 후 뒤로가기 버튼 실행 시
	function back_btn() {
		// 작업 확정 전 상태로 데이터 초기화 및 롤백
		
		var confirmBtn = document.getElementById('confirmBtn');
		var h2 = document.getElementById('div2_1_1_h2');
		document.getElementById('info_Frame').setAttribute('src','order_frame01.do');
		document.getElementById('backBtn').setAttribute('disabled','disabled');
		confirmBtn.innerHTML='작업 확정';
		confirmBtn.value = 0;
		h2.innerHTML='작업 선택';
		alert('작업 선택 후 [ 작업 확정 ] 버튼을 다시 눌러주세요.');
	}
	
	// 모든 정보 입력 후 최종 확정 버튼 실행 시
	function confirm_All() {
 		var confirmBtn = document.getElementById('confirmBtn');
		switch (confirmBtn.value) {
		case '2': // 확정 버튼의 value 가 2 일 경우만 정상적으로 완료 됨
			return confirm('발주 등록을 완료 하시겠습니까?');
			break;
		default:
			alert('정상적인 접근이 아닙니다.\n입력된 정보를 다시 확인 해주세요.');
			return false;
			break;
		}
	}
	
	
	
	// 자식 페이지에서 실행되는 함수
	// 작업 혹은 작업자 선택 시 실행됨
	// 작업 리스트, 회원 리스트 둘 다 동일
	// (order_frame01.jsp , order_frame02.jsp ) 참고
	function sendInfo(num) {
		parent.info_num01 = num;
		parent.insert_val01();
	}
	
	
	
	// 작업 리스트, 회원 리스트 의 HTML5/JSP 코드는 다른 코드(ex. 게시판 등등)와 거의 동일하므로
	// 생략하겠습니다.
```

><h5 align="center">자식창과 부모창</h5>

<div align="center">
iframe을 사용한 자식창과 부모창간의 호출 및 모듈화를 보여드렸습니다.
이는 새 창 열기(window.open())에서도 역시 활용되었습니다.


아래는 회원 가입 시 새 창을 이용한 아이디 중복확인 기능에 대한 코드입니다.
이 역시 ajax를 사용하면 좀 더 효율적인 코드가 만들어질 수 있습니다만 해당 프로젝트에서는 ajax를 사용하지 않았습니다.
	
회원가입(newUser.jsp) 폼 중 일부 JS,HTML5/JSP 코드만 보여드리겠습니다.
</div>

```jsp
<div class="int-area">/*아이디 입력 폼*/
	<input type="text" name="userId" id="userId" maxlength="12" onkeydown="inputidcheck()" autocomplete="off" required/>
	<label for="userId">아이디 *</label>
</div>
<div class="check-area">/*중복체크 버튼*/
	<button onclick="idcheck01();">중복 체크</button>
	<input type="hidden" value="0" id="idcheck" name="idcheck"/>
</div>
```

```javaScript
function idcheck01() {
	var re = /^[a-zA-Z0-9]{4,12}$/; // 정규 표현식
	var id = document.getElementById("userId").value; // id 입력 값
	if(id!=""&&re.test(id)){ // 널값이 아니면서 정규 표현식에 해당하는 id 값이라면 실행
		window.name="parentForm"; // 새 창 이름 설정
		window.open("IdCheck.jsp","chkForm","width=500,height=300,resizable=no,scrollbars=no"); // 새 창 열기
	}else if(id==""){ // 아이디를 입력하지 않았다면 실행
		alert('아이디를 입력 하신 후 중복확인을 눌러주십시오.')
		return false;
	}else if(!re.test(id)){ // 정규 표현식에 일치하지 않는다면 실행
		alert('아이디는 4~12자의 영문 대소문자와 숫자로만 입력');
		return false;
	}
}
```

><h4 align="center">etc</h4>

<div align="center">
etc 파트에서는 말 그대로 기타 항목들을 정리해서 보여드리겠습니다.
대표적으로 API 와 업로드 및 다운로드 등 프론트와 백엔드로 나누어 보여드릴 수 없는 기술들을
정리해보았습니다.
	
먼저 업로드와 다운로드 부분입니다.
제가 구현한 업로드/다운로드 기능은 대략적으로 아래 사진과 같이 구성되어 있습니다.
자세한 코드는 사진 바로 아래에 첨부하겠습니다.
</div>

![KakaoTalk_20211125_035918569](https://user-images.githubusercontent.com/14798713/143298385-0dac079d-b2e4-4fcf-b779-e33b4811cef9.png)

><h5 align="center">업로드 및 다운로드</h5>

```jsp
/* newWorkData.jsp 중 일부 */

<%String workCode = (String)request.getAttribute("wCode"); %>
<body onload="loadOn();">
	<jsp:include page="boCheck_module.jsp" />/*로그인/사업자 정보 유효성 검사 모듈*/
	<form action="WorkDataUpload.do" method="post" enctype="multipart/form-data" onsubmit="return check_file();">
	/* enctype="multipart/form-data" 을 통해 인코딩 방식을 설정 (이미지 업로드를 위해 인코딩 하지 않음으로 설정) */
	/* check_file()를 통해 증빙자료가 정상적으로 선택 되었는지 검사 */
		<h1>증빙 자료 등록</h1>
		<div class="btnArea">
			<label for="uploadFile" id="label_upload">파일 업로드</label>
			<input type="file" id="uploadFile" class="uploadInput" name="uploadFile" accept="image/*" onchange="fileUpload(this);"/><br /> /* 파일 선택 */
			<p id="filename_p"></p> /* 파일 선택시 선택된 파일 명을 보여줌 */
			<input type="hidden" id="workCode" name="workCode" value="<%=workCode%>"/>
			/* 어떤 작업의 증명 파일인지 구분하기 위함  */
			<input class="submit_btn" type="submit" value="등록"/>
		</div>
	</form>
</body>
```

```javaScript
	//파일 업로드 후 정상 처리 검사 함수 onload를 통해 자동 실행
	function loadOn() {
		var uploadChk = <%=request.getAttribute("uploadChk")%>;
		switch (uploadChk) {
		case null:
			break;
		case 0:
			alert('증빙자료가 정상적으로 등록되지 않았습니다. 다시 시도해주세요.');
			break;
		case 1:
			alert('증빙자료가 정상적으로 등록었습니다. ');
			opener.parent.location.href='finishedWorkList.do';
			window.close();
			break;
		default:
			break;
		}
	}
	
	// 파일 선택 후 해당 위치(filename_p)에 파일 이름을 명시해주는 함수
	function fileUpload(fis) {
		var str = fis.value;
		document.getElementById('filename_p').innerHTML = " 선택된 파일 : " + fis.value.substring(str.lastIndexOf("\\")+1);
	}
	
	// 파일이 선택되지 않은 상태로 완료 버튼을 눌렀을 경우를 방지하기 위한 
	function check_file() {
		if(document.getElementById('uploadFile').value==''){
			alert('증빙 자료를 선택 해주세요.');
			return false;
		}
	}
```

<div align="center">
이렇게 front end에서의 업로드 세팅이 끝나고, 해당 코드를 이용하여 사용자가
이미지를 업로드 하게 된다면 Back end(서버/컨트롤러)에서 처리가 됩니다.
	
아래는 Back end 로직입니다.
</div>

```java
//WorkController 

@Controller
public class WorkController {
	
	@Autowired
	WorkDataInfoService workDataInfoService;
	
	@RequestMapping("WorkDataUpload.do")
	public String testUpload(WorkDataInfoVO vo, HttpServletRequest request) throws IllegalStateException, IOException{
		String saveFileName ="";
		//MultipartFile로 파일 정보를 받음
		MultipartFile uploadFile = vo.getUploadFile();
		//randomUUID로 랜덤값 받음
		String genId = UUID.randomUUID().toString().substring(5, 12);
		// realPath로 프로젝트에 fileSave 폴더에 값을 저장함
		String realPath = request.getSession().getServletContext().getRealPath("/workDataUpload/");
		
		// 만약 uploadFile이 비어있지않다면 다음과 같이 코드 실행
		if(!uploadFile.isEmpty()) {
			// originalFileName에 원본 파일명을 저장함
			String originalFileName = uploadFile.getOriginalFilename();
			// saveFileName에 랜덤값이 저장된 genID와 파일명을 저장함
			saveFileName = genId + "." + FilenameUtils.getExtension(originalFileName);
			// 아래 함수로 파일을 업로드함
            		uploadFile.transferTo(new File(realPath+saveFileName));
		}
		workDataInfoService.workDataUpload(saveFileName, request);
		//request 영역에 정상적으로 처리되었는지에 대한 값을 저장함
		return "newWorkData.do";

	}

}
```




<div align="center">
그렇다면 다운로드는 어떻게 진행 될까요 ? 
다운로드의 핵심은 OutputStream 입니다.
	
front end에서 request영역에 저장한 파일명을 가져와, 지정된 경로와 정보들을
response의 헤더에 저장하고 파일을 바이트 스트림으로 읽기 위해 FileInputStream 객체를 생성합니다.
마지막으로 OutputStream 을 사용하여 Byte 단위로 출력 스트림으로 보내주는게 다운로드의 과정입니다.

front end 코드는 이미지와 다운로드 버튼만 보여주기 때문에 생략하였습니다. (workDataIMG.jsp)
아래는  Back end 로직입니다.
</div>


```java
//WorkController 중 일부

@Controller
public class WorkController {

	@RequestMapping("workDataDownload.do")
	public void fileDownload(HttpServletResponse response,HttpServletRequest request) {
		String fileName = (String)request.getParameter("dtName");
		// front end에서 파일명을 받아옴
		String realPath = request.getSession().getServletContext().getRealPath("/workDataUpload/");
		realPath = realPath+fileName;
		// 경로 및 파일 명 설정
		
		File file = new File(realPath);
		long fileLength = file.length();
		// DB에 없는 정보는 파일로 만들어서 가져옴

		response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\";");
		response.setHeader("Content-Transfer-Encoding", "binary"); 
		response.setHeader("Content-Type", "jpg");
		response.setHeader("Content-Length", "" + fileLength);
		response.setHeader("Pragma", "no-cache;");
		response.setHeader("Expires", "-1;");
		// 그 정보들을 가지고 reponse의 Header에 세팅

		try {
			// saveFileName을 파라미터로 넣어 inputStream 객체를 생성
			// response에서 파일을 내보낼 OutputStream을 가져옴  
			FileInputStream fis = new FileInputStream(realPath);
			OutputStream out = response.getOutputStream();
			int readCount = 0;
			byte[] buffer = new byte[1024];
			// 파일 읽을 만큼 크기의 buffer를 생성
			while ((readCount = fis.read(buffer)) != -1) {
				out.write(buffer, 0, readCount);
				// outputStream에 작성
			}
		} catch (Exception e) {
		    	System.err.println(e);
		}
	}
}
```

><h5 align="center">API</h5>

<div align="center">
마지막으로 소개해드릴 파트는 API에 관한 내용입니다.
해당 프로그램을 개발하면서 여러가지 API를 활용해보고 싶었습니다.
위에서 말씀 드렸다시피 개인 포트폴리오 작업을 진행함에 있어 몇가지 API는 제약 사항이 많았습니다.

아무래도 개인정보와 관련 있는 API를 사용 하려고 했기 때문이라고 생각합니다.
(주민등록번호 유효성 검사, 핸드폰 인증 및 naver 로그인 등등)

저는 크게 두가지 api를 사용하였습니다.
Bootstrap과 naver에서 운영하는 스마트에디터 api입니다. 
	
BootStrap API를 이용하여 메인 페이지의 게시판 미리보기 디자인을 만들었습니다.
이는 원하는 태그에 class이름만 맞추어 작성하면 되었기 때문에 굉장히 쉬웠습니다.
	
하여 해당 코드는 생략하고, 네이버 스마트에디터 API 적용 코드를 소개해드릴까 합니다.
	
스마트에디터는 네이버에서 제공하는 오픈 API로써 게시판 기능 중 하나인 글 작성 시 유용하게
사용 할 수 있는 API입니다. 먼저 사진으로 어떤 API인지 보여드리겠습니다.
</div>

![게시판 글쓰기](https://user-images.githubusercontent.com/14798713/143312523-e0d295b9-816b-4904-b47a-637a9c2dae8a.gif)
게시판 글쓰기 결과 화면

<div align="center">
해당 API는 스마트에디터의 크기 조절 및 데이터 전송 시 데이터의 타입 변환
(HTML5코드를 문자열 형식으로 변환/공백 및 여러가지 특수문자의 데이터 변환)
등등의 여러가지 기능을 수행 할 수 있습니다.
	
아래는 적용 코드입니다.
</div>


```jsp
/* insertBoardForFree.jsp 중 일부 */
<tr style="height: 79%;">
	<th>
		내용
		<p style="font-size: 7px; color: red;" class="countSpan"></p>
	</th>
	<td colspan="3">
		<textarea name="boardContents" id="boardContents" maxlength="800">
		</textarea>
	</td>
</tr>
```

```javaScript
	//스마트에디터 적용 JS/jQuery코드
	
	var oEditors = [];
				
	nhn.husky.EZCreator.createInIFrame({ oAppRef : oEditors,
		elPlaceHolder : "boardContents", // 적용 할 태그(textarea)
		sSkinURI : "/naver-smarteditor2-ca95d21/demo/SmartEditor2Skin.html", // 적용할 스마트 에디터 경로
		fCreator : "createSEditor2"
	});
	
	setTimeout(function() {
		var ctntarea = document.querySelector("iframe").contentWindow.document.querySelector("iframe").contentWindow.document.querySelector(".se2_inputarea");
		ctntarea.addEventListener("keyup", function(e) {
			var text = this.innerHTML;
			text = text.replace(/<br>/ig, "");
			text = text.replace(/&nbsp;/ig, "");
			text = text.replace(/<(\/)?([a-zA-Z]*)(\s[a-zA-Z]*=[^>]*)?(\s)*(\/)?>/ig, "");
			
			var len = text.length; // 글자 수 보여주기 위해 커스텀한 코드
			document.querySelector(".countSpan").innerHTML = len + "byte";
			if (len > 3950) {
			    alert("최대 3950글자까지 입력 가능합니다.");
			}
			// 3950 이후 글자 초기화 코드 추가 예정
		});
	}, 1000)
```

<div align="center">
이렇게 기능 및 코드 설명을 마치겠습니다.
</div>

---

<h2 align="center">마침</h1>

<div align="center">
긴 글 끝까지 읽어주셔서 정말 감사합니다.
최대한 쉽고 간결하게 중장비 서비스 프로그램을 설명드리고 싶었지만
마음처럼 잘 되지 않았습니다.
	
분량이 너무 길어져 부득이 하게 생략된 부분도 많고, 그에 따라
제대로 된 설명이 부족한 부분도 많이 있었을 텐데요.
	
그 부분은 부디 양해 부탁드립니다.
	
해당 프로젝트는 2021년 5월 부터 구상 단계를 시작으로
약 5개월 정도의 기간동안 개발 하였습니다.

개발 구상 단계부터 개발 초기 단계까지는 제가 할 수 있는 언어와 기술로만
구현 할 생각으로 ajax를 포함한 여러가지 기술들을 배제하고 개발을 시작했습니다.
	
아직도 아쉬운 부분이 바로 이 부분입니다.
다양한 기술들을 사용하여, 좀 더 효율적인 개발을 할 수 있었음에도
초반 개발 단계를 지나 어느덧 개발 1-2개월이 지난 이후에
초반 설계를 제쳐두고 다른 기술을 사용하기에는 기존 기술들을 기반으로
설계 해둔 모든 것들을 재설계 해야했기 때문에
쉽사리 도전하지 못했습니다.
	
하지만 최대한 해당 기술들과 비슷한 방식으로 표현하기 위해
노력한 결과 지금의 프로젝트가 완성되었습니다.
	
아무래도 글로써 설명드리기에는 너무 애매하고, 어려운 기능들이 있어
이해가 잘 안되는 부분이 많았을 것이라 생각되는데요.
	
조금 번거로우시더라도 최상단에 위치한 포트폴리오 소개 영상을 참고 해주시면
감사하겠습니다.

다시 한번 긴 글 읽어주셔서 감사드리며
이만 글 줄이겠습니다.
	
감사합니다.
</div>
