package com.HEProject.he.grouperEquipInfo;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface GrouperEquipInfoService {

	List<GrouperEquipInfoVO> getAllEquipInfo(HttpServletRequest request, HttpSession session);

}
