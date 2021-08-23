package com.HEProject.he.cmtInfo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface CmtInfoService {
	
	CmtInfoVO getCmt(HttpServletRequest request);
	
	List<CmtInfoVO> getCmtList (HttpServletRequest request);
	
//	List<CmtInfoVO> getMyCmtList (HttpServletRequest request);
	
	String insertCmt(CmtInfoVO vo,HttpServletRequest request,HttpSession session);
	
	int deleteCmt(String cmtCode);
	
	String cmtDelIdCheck(HttpServletRequest request, HttpSession session);

	
}
