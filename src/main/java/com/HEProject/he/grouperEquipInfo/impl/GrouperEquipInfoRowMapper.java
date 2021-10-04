package com.HEProject.he.grouperEquipInfo.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.HEProject.he.grouperEquipInfo.GrouperEquipInfoVO;

public class GrouperEquipInfoRowMapper implements RowMapper<GrouperEquipInfoVO>{

	@Override
	public GrouperEquipInfoVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		GrouperEquipInfoVO vo = new GrouperEquipInfoVO();
		vo.setEquipNum(rs.getString("EQUIPNUM"));
		vo.setEqRn(rs.getString("EQRN"));
		vo.setEquipType(rs.getString("EQUIPTYPE"));
		vo.setEquipClass(rs.getString("EQUIPCLASS"));
		vo.setEquipOption(rs.getString("EQUIPOPTION"));
		vo.setEquipRD(rs.getDate("EQUIPRD"));
		vo.setEquipID(rs.getDate("EQUIPID"));
		vo.setGrUsRn(rs.getString("GRUSRN"));
		vo.setAssUsRn(rs.getString("ASSUSRN"));
		vo.setUserId(rs.getString("USERID"));
		vo.setgSt(rs.getInt("gst"));
		return vo;
	}
	

}
