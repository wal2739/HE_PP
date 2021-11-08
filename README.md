<h1 align="center">중장비 서비스 포트폴리오</h1>

[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fwal2739%2FHE_PP%2F&count_bg=%23000000&title_bg=%23E12D2D&icon=&icon_color=%23E7E7E7&title=%EC%A4%91%EC%9E%A5%EB%B9%84+%EC%84%9C%EB%B9%84%EC%8A%A4+%ED%8F%AC%ED%8A%B8%ED%8F%B4%EB%A6%AC%EC%98%A4&edge_flat=false)](https://hits.seeyoufarm.com)

---

<h2 align="center">머리글</h1>
<div align="center">

</div>

---

>목차


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

>> 객체 지향 프로그래밍을 위해 service 를 ~Service라는 이름의 interface 와 해당 interface를 상속받는  ~ServiceImpl 이라는 class로 구현했습다.
>> 아래는 해당 코드입니다.

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

>> 정보 저장과 중복 로그인 방지등의 코드들을 보면, 쿠키를 사용하지 않고 세션을 사용했습니다.
>> 왜냐하면 쿠키는 안전성이 부족하다고 판단했기 때문입니다. 회원 정보 중 usRn은 고유 회원 번호와 같이 개인 정보가 세션에 저장되는데 안전성이 떨어지는 쿠키에
>> 해당 데이터를 저장하게 되면 악용의 가능성이 있다고 생각했기 때문입니다.
>> 물론 사용자가 많은 상황에서 세션은 서버에 많은 부하를 주게 되지만, 이는 하드웨어적인 해결이 가능하다고 생각했기 때문에 세션을 선택하게 되었습니다.
>> 아래는 세션의 삭제 및 중복 로그인 방지 기능을 정의 한 클래스입니다.

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
>> 이렇게 로그인 파트에 해당하는 Back end 로직이 종료됩니다. 
>> <cite>Controller 호출 > Service(interface) 메서드 호출 > 상속하여 메서드를 정의한 ServiceImpl > DB와의 연동 및 데이터를 가져옴 > VO에 데이터 저장을 기반으로 ServiceImpl에서 세션에 정보 저장 및 이동 페이지 반환값 반환 > Controller에서 반환값을 받아 이동</cite> 순으로 처리가 이루어지며, 반환값이 이동 경로가 아니라 데이터가 반환이 된다면 mav(ModelAndView)를 통해 이동 경로와
>> Front end로의 전송을 동작하게 됩니다. 프로그램 구성 코드 중 하나를 예를 들어 보여드리겠습니다.

>> 아래는 메인 화면에 구성되어 있는 공지 게시판 미리보기 기능의 데이터를 DB에서 추출하여 프론트로 전송하는 로직입니다.
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

>>위의 코드가 CRUD 기능 중 조회를 담당하는 로직이며, ModelAndView를 사용하여 해당 이동 경로와 해당 경로에 데이터를 전송 하였습니다.
>>마지막으로 데이터의 삭제와 수정을 보여드리겠습니다.
>>삽입과 수정, 삭제는 해당 동작을 수행 한 후 ServiceImpl 클래스에서 DAO의 반환값을 request 영역에 저장하여 정상처리 유무를 프론트에 전송하게 되어있습니다.
>>( 예. 정상처리 : 1, 오류 : 2, 정상적이지 않은 값 : 3 )
>>그 외 Service 인터페이스, Controller 클래스 등은 조회와 동일 하므로, DAO 클래스와 ServiceImpl 클래스만 보여드리겠습니다.

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
	  
	1. DataBase에서 각 기능마다의 view 를 생성한다.<br/>
	2. Back end 중 DAO(데이터를 직접적으로 추출하는 class)에서의 query를 기능에 맞게 원하는 데이터만 추출 할 수 있도록 작성한다.  <br/>
	3. Back end 중 ServiceImpl(interface를 상속받은 class)에서 DAO를 통해 받은 데이터를 원하는 데이터만 재추출 하여 전송한다.  <br/>

</div>

><h4 align="center">Front end</h4>


---

<h2 align="center">마침</h1>

