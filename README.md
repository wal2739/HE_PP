<h1 align="center">중장비 서비스 포트폴리오</h1>

[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fwal2739%2FHE_PP%2F&count_bg=%23000000&title_bg=%23E12D2D&icon=&icon_color=%23E7E7E7&title=%EC%A4%91%EC%9E%A5%EB%B9%84+%EC%84%9C%EB%B9%84%EC%8A%A4+%ED%8F%AC%ED%8A%B8%ED%8F%B4%EB%A6%AC%EC%98%A4&edge_flat=false)](https://hits.seeyoufarm.com)

---

<h2 align="center">머리글</h1>
<div align="center">

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


---

<h2 align="center">마침</h1>

