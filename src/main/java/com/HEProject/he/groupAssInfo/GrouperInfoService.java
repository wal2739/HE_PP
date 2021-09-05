package com.HEProject.he.groupAssInfo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.HEProject.he.usersInfo.SearchInfoVO;

public interface GrouperInfoService {
	List<GrouperInfoVO> getAllGrouperInfo(HttpServletRequest request, HttpSession session);
	
	GrouperInfoVO getGrouperInfo(GrouperInfoVO vo,HttpServletRequest request, HttpSession session);

	SearchInfoVO searchGrouperInfo(SearchInfoVO vo, HttpSession session, HttpServletRequest request);
}
