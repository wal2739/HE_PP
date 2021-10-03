package com.HEProject.he.groupAssInfo.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.HEProject.he.groupAssInfo.GrouperInfoService;
import com.HEProject.he.groupAssInfo.GrouperInfoVO;
import com.HEProject.he.usersInfo.SearchInfoVO;

@Repository
public class GrouperInfoServiceImpl implements GrouperInfoService{

	@Autowired
	GroupAssInfoDAO dao;
	
	@Override
	public List<GrouperInfoVO> getAllGrouperInfo(HttpServletRequest request, HttpSession session) {//내 회원 목록
		String usRn = (String)session.getAttribute("usRn");
		return dao.getAllGrouper(usRn);
	}

	@Override
	public GrouperInfoVO getGrouperInfo(GrouperInfoVO vo, HttpServletRequest request, HttpSession session) {// 내 회원 상세 정보
		vo.setAssUsRn((String)session.getAttribute("usRn"));
		vo.setUsRn(request.getParameter("usRn"));
		return dao.getGrouperInfo(vo);
	}

	@Override
	public SearchInfoVO searchGrouperInfo(SearchInfoVO vo, HttpSession session, HttpServletRequest request) {//회원 검색 - 상세 보기
		vo.setUsRn(request.getParameter("usRn"));
		return dao.searchGrouperInfo(vo);
	}
	
	@Override
	public List<SearchInfoVO> searchGrouperEquipInfo(HttpServletRequest request) {//회원 검색 - 상세 보기
		String usRn = request.getParameter("usRn");
		return dao.searchGrouperEquipInfo(usRn);
	}

}
