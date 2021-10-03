package com.HEProject.he.usersInfo.Impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.HEProject.he.usersInfo.SearchInfoVO;
import com.HEProject.he.usersInfo.UsersInfoVO;

public class SearchForEquipRowMapper implements RowMapper<SearchInfoVO>{

	@Override
	public SearchInfoVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		SearchInfoVO vo = new SearchInfoVO();
		vo.setUsRn(rs.getString("usRn"));
		vo.setUserID(rs.getString("userID"));
		vo.setUserName(rs.getString("userName"));
		vo.setEquipType(rs.getString("equipType"));
		vo.setEquipOption(rs.getString("equipOption"));
		vo.setEquipClass(rs.getString("equipClass"));
		vo.setEquipID(rs.getDate("equipId"));
		vo.setEquipRD(rs.getDate("equipRd"));
		return vo;
	}
	
}
