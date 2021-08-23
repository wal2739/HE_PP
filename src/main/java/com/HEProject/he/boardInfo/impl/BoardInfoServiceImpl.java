package com.HEProject.he.boardInfo.impl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.HEProject.he.boardInfo.BoardInfoService;
import com.HEProject.he.boardInfo.BoardInfoVO;
import com.HEProject.he.usersInfo.UsersInfoService;
import com.HEProject.he.usersInfo.UsersInfoVO;

@Repository
public class BoardInfoServiceImpl implements BoardInfoService{

	@Autowired
	BoardInfoDAO dao;
	
	@Autowired
	UsersInfoService usersInfoService;

	@Override
	public List<BoardInfoVO> getAllBoard() {
		return dao.getAllBoard(0);
	}

	@Override
	public void insertBoard(BoardInfoVO vo,HttpServletRequest request,HttpSession session) {
		vo.setBoardClass(Integer.parseInt(request.getParameter("boardClass")));
		vo.setBoardTitle(request.getParameter("boardTitle"));
		String boardContents = request.getParameter("boardContents");
		if(boardContents=="") {
			boardContents = "내용 없음";
		}
		vo.setBoardContents(boardContents);
		vo.setUsRn(request.getParameter("usRn"));
		vo.setUserName(request.getParameter("userName"));
		int result = dao.insertBoard(vo);
		if(result==1) {
			request.setAttribute("insertBoardSF", 1);
		}else {
			request.setAttribute("insertBoardSF", 0);
		}
	}

	@Override
	public BoardInfoVO getBoard(BoardInfoVO vo, HttpServletRequest request, HttpSession session) {
		vo.setBoardCode(request.getParameter("boardCode"));
		int statusNum = Integer.parseInt(request.getParameter("statusNum"));
		int result = 3;
		switch (statusNum) {
		case 0:
			break;
		case 1:
			result = dao.increaseView(vo);
			switch (result) {
			case 0:
				System.err.println("조회수 증가 에러 - impl");
				break;
			default:
				break;
			}
		default:
			break;
		}
		
		return dao.getBoard(vo);
	}

	@Override
	public String checkIdForModify(BoardInfoVO vo, HttpServletRequest request, HttpSession session) {
		String boardCode = request.getParameter("boardCode");
		vo.setBoardCode(boardCode);
		String usRn = dao.getBoard(vo).getUsRn();
		String ssUsRn = (String)session.getAttribute("usRn");
		int status = Integer.parseInt(request.getParameter("status"));
		int boardClass = Integer.parseInt(request.getParameter("boardClass"));
		if(ssUsRn.equals(usRn)) {
			switch (status) {
			case 0:
				return "deleteBoard.do?boardCode=" + boardCode + "&boardClass=" + boardClass;
			case 1:
				return "modifyBoard.do?boardCode=" + boardCode + "&statusNum=0";
			default:
				request.setAttribute("MBCheck", 3);
				return "getBoard.do?boardCode=" + boardCode + "&statusNum=0";
			}
		}else {
			request.setAttribute("MBCheck", 2);
			return "getBoard.do?boardCode=" + boardCode + "&statusNum=0";
		}
	}

	@Override
	public String modifyBoard(BoardInfoVO vo, HttpServletRequest request, HttpSession session) {
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
	}

	/*
	 * @Override public List<BoardInfoVO> getEachBoard(HttpServletRequest request,
	 * HttpSession session) { if(request.getParameter("boardClassNum")==null) {
	 * return null; } int boardClassNum =
	 * Integer.parseInt(request.getParameter("boardClassNum")); int userClass =
	 * (Integer)session.getAttribute("userClass"); if(boardClassNum==0) {
	 * request.setAttribute("classType", 0); }else if(boardClassNum==1) {
	 * request.setAttribute("classType", 1); }else if(boardClassNum==2){
	 * request.setAttribute("classType", 2); }else if(boardClassNum==3){
	 * request.setAttribute("classType", 3); }else {
	 * request.setAttribute("classType", 9); } request.setAttribute("nuserClass",
	 * userClass); return dao.getAllBoard(boardClassNum); }
	 */
	
	@Override
	public List<BoardInfoVO> getEachBoardPaging(HttpServletRequest request, HttpSession session) {
		//페이징
		if(request.getParameter("boardClassNum")==null) {
			return null;
		}
		int boardClassNum = Integer.parseInt(request.getParameter("boardClassNum"));
		int userClass = (Integer)session.getAttribute("userClass");
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
		request.setAttribute("nuserClass", userClass);
		
		String searchBox = null;
		String searchCond = null;
		int mw = 0;
		try {
			searchBox = request.getParameter("searchBox");
			searchCond = request.getParameter("searchCond");
		}catch (Exception e) {
			System.err.println("검색 안함");
		}
		
		try {
			mw = Integer.parseInt(request.getParameter("mw"));
		}catch (Exception e) {
			System.err.println("내 리스트 X");
		}
		List<BoardInfoVO> list = null;
		if(searchBox!=null||searchCond!=null) {
			list = dao.getAllBoard(boardClassNum,searchCond,searchBox);// 데이터 전체 추출 값
			request.setAttribute("searchIDX", searchBox);
			request.setAttribute("searchIDXCON", searchCond);
		}else if(mw==1){
			list = dao.getAllBoard(boardClassNum, (String) session.getAttribute("usRn"));
		}else {
			list = dao.getAllBoard(boardClassNum);// 데이터 전체 추출 값
		}
		int boardCnt = list.size();// 게시글 수
		if(boardCnt<=20) {
			// 게시글이 20개 이하일 경우에는 페이징을 할 필요성이 없다. 그러므로 데이터를 그대로 전송한다.
			request.setAttribute("pagingCntRlt", 0);
			request.setAttribute("pageNum", 0);
			request.setAttribute("boardCnt", boardCnt);
			return list;
		}else {
			int pageNum = 0;
			try {
				pageNum = Integer.parseInt(request.getParameter("pagingNum"));//현재 페이지 값
			} catch (NumberFormatException e) {}
			float pagingCnt = (float)(boardCnt/20.0); //페이지 수 
			
			List<BoardInfoVO> rslList = null;
			//for 조건 문을 위한 정수 
			int forNum01 = pageNum*20;//시작 게시글 숫자
			int forNum02 = 0;//마지막 게시글 숫자
			if(pagingCnt-(int) pagingCnt!=0) {
				pagingCnt = (int)pagingCnt + 1;
			}//만약 게시글수/20의 결과가 0이 아니라면(소수점이 발생한다면 페이지 +1)
			int pagingCntRlt = (int) Math.floor(pagingCnt); // 페이지 수를 다시 정수로 변환
			
			//전체게시물에 20을 나눈 몫 / 시작 게시물에 20을 나눈 몫 이 같다면 == 마지막 페이지
			// 마지막 페이지는 전체 게시글에 1을 뺀 값  == 마지막 게시물
			
			if((int) Math.floor(boardCnt/20.0)!=pageNum) {//딱 20개의 게시물을 보여줄 경우 ex) 20 20 30 40
				forNum02 = forNum01 + 19;
			}else {// 20개미만의 게시글을 보여줄 경우 ex) 15 17 69 38
				if(boardCnt-forNum01==20) {
					forNum02 = forNum01 + 19;
				}else {
					forNum02 = boardCnt-1;
				}
			}
	
			List<BoardInfoVO> listRlt = new ArrayList<BoardInfoVO>();// 데이터 전체 추출 값
			if(forNum01==forNum02) {
				listRlt.add(0,list.get(forNum01));
			}else {
				for(int i = 0 ; forNum01<=forNum02; i++,forNum01++) {
					listRlt.add(i,list.get(forNum01));

				}
				
			}

			//페이징 수가 10 초과인지 아닌지 판단
			//초과가 아니라면 그냥 출력 [ double Arrow x ]
			//초과라면 현재 페이지*0.1 의 몫에 따라 보여줄 페이지 설정
			//현재 페이지 jsp 로 전송
			
			request.setAttribute("pagingCntRlt", pagingCntRlt);
			request.setAttribute("pageNum", pageNum);
			request.setAttribute("boardCnt", boardCnt);
			return listRlt;
		}
		
	}

	@Override
	public UsersInfoVO insertBoardForFree(UsersInfoVO vo, HttpServletRequest request, HttpSession session) {
		if(request.getParameter("boardClass")!=null) {
			request.setAttribute("boardClassRe", request.getParameter("boardClass"));
		}
		return usersInfoService.getUserInfo(vo,session);
	}

	@Override
	public String deleteBoard(HttpServletRequest request) {
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
		return "eachBoard.do?boardClassNum=" + boardClass;
	}
	
	
}
