package com.HEProject.he.usersInfo.Impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.HEProject.he.boInfo.BOInfoService;
import com.HEProject.he.boInfo.BOInfoVO;
import com.HEProject.he.usersInfo.SearchInfoVO;
import com.HEProject.he.usersInfo.UsersInfoService;
import com.HEProject.he.usersInfo.UsersInfoVO;

@Repository
public class UsersInfoServiceImpl implements UsersInfoService{
	
	@Autowired
	private UserInfoDAO dao;
	
	@Autowired
	private BOInfoService boInfoService;
	
	@Override
	public String getUser(BOInfoVO boVO, UsersInfoVO vo, HttpSession session,HttpServletRequest request) {
		vo.setUserID(request.getParameter("userId"));
		UsersInfoVO result = dao.getUser(vo);
		if(result==null) {
			request.setAttribute("loginST", 0);
			return "login.jsp";
		}else if(result.getUserID().equals(vo.getUserID())&&result.getUserPW().equals(vo.getUserPW())){
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
			return "main.do";
		}else{
			request.setAttribute("loginST", 2);
			return "login.jsp";
		}
	}
	
	@Override
	public UsersInfoVO getUser(UsersInfoVO vo, HttpSession session) {
		vo.setUserID((String)session.getAttribute("userId"));
		return dao.getUser(vo);
	}

	@Override
	public List<UsersInfoVO> getAllUsers(UsersInfoVO vo, HttpSession session) {
		return dao.getAllUsers(vo, session);
	}
	
	@Override
	public String IdCheck(UsersInfoVO vo, HttpServletRequest request) {
		vo.setUserID((String)request.getParameter("userId"));
		UsersInfoVO result =  dao.getUser(vo);
		if(result == null) {
			request.setAttribute("idCheck", 1);
			return "IdCheck.jsp";
		}else {
			request.setAttribute("idCheck", 0);
			return "IdCheck.jsp";
		}
	}

	@Override
	public void newUser(UsersInfoVO vo, HttpSession session, HttpServletRequest request) {
		vo.setUserAdd01(request.getParameter("userAdd01"));
		if(request.getParameter("userAdd02")=="") {
			vo.setUserAdd02("없음");
		}else {
			vo.setUserAdd02(request.getParameter("userAdd02"));
		}
		vo.setUserCell(request.getParameter("userCell"));
		vo.setUserClass(Integer.parseInt(request.getParameter("userClass")));
		vo.setUserConsent01(Integer.parseInt(request.getParameter("checkbox1")));
		vo.setUserConsent02(Integer.parseInt(request.getParameter("checkbox2")));
		vo.setUserConsent03(Integer.parseInt(request.getParameter("checkbox3")));
		vo.setUserEmail(request.getParameter("userEmail"));
		vo.setUserID(request.getParameter("userId"));
		vo.setUserName(request.getParameter("userName"));
		vo.setUserPW(request.getParameter("userPW"));
		
		int rltNum = 0;
		if(vo.getUserClass()==1) {
			rltNum = dao.newIUser(vo);
		}else if(vo.getUserClass()==2){
			rltNum = dao.newAUser(vo);
		}else if(vo.getUserClass()==3) {
			rltNum = dao.newAllUser(vo);
		}
		request.setAttribute("newUserRlt", rltNum);
		
		
	}

	@Override
	public List<UsersInfoVO> getAllUsersClass(UsersInfoVO vo, HttpSession session, int num01, int num02) {
		return dao.getAllUsersClass(vo, session, num01, num02);
	}

	@Override
	public List<UsersInfoVO> getAllUsersClass(UsersInfoVO vo, HttpSession session, int num01) {
		return dao.getAllUsersClass(vo, session, num01);
	}
	
	@Override
	public UsersInfoVO getUserInfo(UsersInfoVO vo,HttpSession session) {
		vo.setUsRn((String)session.getAttribute("usRn"));
		return dao.getUserInfo(vo);
	}

	@Override
	public List<SearchInfoVO> getAllEqInfo(SearchInfoVO vo, HttpSession session, String eqType) {
		vo.setUsRn((String)session.getAttribute("usRn"));
		return dao.getAllEqInfo(vo, eqType);
	}
	
	@Override
	public List<SearchInfoVO> getAllEqInfo(SearchInfoVO vo, HttpSession session) {
		vo.setUsRn((String)session.getAttribute("usRn"));
		return dao.getAllEqInfo(vo);
	}
	
	@Override
	public void pwCheck(UsersInfoVO vo,HttpSession session,HttpServletRequest request) {
		vo.setUsRn((String)session.getAttribute("usRn"));
		UsersInfoVO result =  dao.getUserInfo(vo);
		String passWord = request.getParameter("passWord");
		if(result.getUserPW().equals(passWord) ) {
			request.setAttribute("pwCheck", 1);
		}else {
			request.setAttribute("pwCheck", 0);
		}
	}

	@Override
	public void modifyUserInfo(UsersInfoVO vo, HttpSession session, HttpServletRequest request) {
		vo.setUserAdd01(request.getParameter("userAdd01"));
		if(request.getParameter("userAdd02")=="") {
			vo.setUserAdd02("없음");
		}else {
			vo.setUserAdd02(request.getParameter("userAdd02"));
		}
		vo.setUserCell(request.getParameter("userCell"));
		vo.setUserEmail(request.getParameter("userEmail"));
		vo.setUserName(request.getParameter("userName"));
		vo.setUsRn((String)session.getAttribute("usRn"));
		int result = dao.modifyUserInfo(vo);
		if(result==1) {
			request.setAttribute("MDFUS", 1);
		}else {
			request.setAttribute("MDFUS", 0);
		}
	}

	@Override
	public String getFdInfo(HttpServletRequest request) {
		String rqm01 = "userId";
		String rqm02 = "userEmail";
		String rqmVal01 = "";
		String rqmVal02 = ""; 
		String rqmVal03 = "";
		int muNxed =  Integer.parseInt(request.getParameter("muNxed"));
		if(muNxed==1) {
			rqmVal02 = tc("userEmail",request);
			rqmVal03 = tc("userName",request);
			String rlt = "";
			try {
				rlt = dao.getFdInfo(rqm02, rqmVal02, rqmVal03).getUserID();
			} catch (NullPointerException e) {
				return "0";
			}
			return rlt;
		}else if(muNxed==2) {
			rqmVal01 = tc("userId",request);
			rqmVal03 = tc("userName",request);
			String rlt = "";
			try {
				rlt = dao.getFdInfo(rqm01, rqmVal01, rqmVal03).getUserPW();
			} catch (NullPointerException e) {
				return "0";
			}
			return rlt;
		}else {
			System.err.println("getFdInfo method is fuckin error !!!");
			return "err";
		}
	}
	
	private String tc(String valCon,HttpServletRequest request) {
		String rlt = "";
		try {
			rlt =  request.getParameter(valCon);
			return rlt;
		} catch (Exception e) {
			System.err.println(e);
			return null;
		}
	}
}
