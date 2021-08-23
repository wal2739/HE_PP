package com.HEProject.he.cmtInfo.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.HEProject.he.cmtInfo.CmtInfoService;
import com.HEProject.he.cmtInfo.CmtInfoVO;

@Repository
public class CmtInfoServiceImpl implements CmtInfoService{

	@Autowired
	private CmtInfoDAO dao;
	
	@Override
	public CmtInfoVO getCmt(HttpServletRequest request) {
		return dao.getCmt(request.getParameter("cmtCode"));

	}

	@Override
	public List<CmtInfoVO> getCmtList(HttpServletRequest request) {
		//전체 조회 ( 조건 : 해당 boardCode 에 해당하는 댓글만 가져옴 )
		String boardCode = request.getParameter("boardCode");
		String searchCond = "refCode";
		return dao.getCmtList(searchCond, boardCode);
	}

//	@Override
//	public List<CmtInfoVO> getMyCmtList(HttpServletRequest request) {
//		//전체 조회 ( 조건 : 자신이 쓴 댓글들의 boardCode 를 가져옴 )
//		String cmtUsRn = request.getParameter("cmtUsRn");
//		String searchCond = "refCode";
//		return dao.getCmtList(searchCond, cmtUsRn);
//	}

	@Override
	public String insertCmt(CmtInfoVO vo, HttpServletRequest request, HttpSession session) {
		vo.setCmtContent(request.getParameter("cmtContent"));
		vo.setCmtUsRn((String) session.getAttribute("usRn"));
		vo.setRefCode(request.getParameter("boardCode"));
		int result = dao.insertCmt(vo);
		switch (result) {
		case 0:
			request.setAttribute("insertCmt", 0);
			break;
		case 1:
			request.setAttribute("insertCmt", 1);
			break;
		default:
			request.setAttribute("insertCmt", 2);
			break;
		}
		return "getBoard.do?boardCode=" + vo.getRefCode() + "&statusNum=0";
	}

	@Override
	public int deleteCmt(String cmtCode) {
		int result = dao.deleteCmt(cmtCode);
		return result;
	}

	@Override
	public String cmtDelIdCheck(HttpServletRequest request, HttpSession session) {
		String cmtCode = request.getParameter("cmtCode");
		String nowUsRn = (String)session.getAttribute("usRn");
		String cmtUsRn = dao.getCmt(cmtCode).getCmtUsRn();
		String boardCode = request.getParameter("boardCode");
		if(!nowUsRn.equals(cmtUsRn)) {
			request.setAttribute("delCmt", 3);//본인 삭제 x
		}else {
			int result = deleteCmt(cmtCode);
			switch (result) {
			case 0:
				request.setAttribute("delCmt", 0);
				break;
			case 1:
				request.setAttribute("delCmt", 1);
				break;
			default:
				request.setAttribute("delCmt", 2);
				break;
			}
		}
		return "getBoard.do?boardCode=" + boardCode + "&statusNum=0";			
	}
	
}
