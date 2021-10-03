package com.HEProject.he.grouperEquipInfo.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.HEProject.he.grouperEquipInfo.GrouperEquipInfoService;
import com.HEProject.he.grouperEquipInfo.GrouperEquipInfoVO;

@Repository
public class GrouperEquipInfoServiceImpl implements GrouperEquipInfoService{

	@Autowired
	GrouperEquipInfoDAO dao;
	
	@Override
	public List<GrouperEquipInfoVO> getAllEquipInfo(HttpServletRequest request, HttpSession session){
		String usRn = request.getParameter("usRn");
		String assUsRn = (String)session.getAttribute("usRn");
		return dao.getAllEquipInfo(usRn, assUsRn);
	}
}
