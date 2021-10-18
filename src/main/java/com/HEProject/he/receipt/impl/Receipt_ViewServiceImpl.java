package com.HEProject.he.receipt.impl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.HEProject.he.receipt.Receipt_ViewService;
import com.HEProject.he.receipt.Receipt_ViewVO;

@Repository
public class Receipt_ViewServiceImpl implements Receipt_ViewService{

	@Autowired
	Receipt_ViewDAO dao;
	
	@Override
	public Receipt_ViewVO getReceipt(HttpServletRequest request, HttpSession session) {
		String usRn = (String)session.getAttribute("usRn");
		String type = request.getParameter("classType");
		String workCode = request.getParameter("wCode");
		request.setAttribute("classType", type);
		return dao.getReceipt(usRn, type, workCode);
	}
	
}
