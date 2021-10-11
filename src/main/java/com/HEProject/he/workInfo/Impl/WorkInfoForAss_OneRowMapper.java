package com.HEProject.he.workInfo.Impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.HEProject.he.workInfo.WorkInfoForAssVO;
import com.HEProject.he.workInfo.WorkInfoVO;

public class WorkInfoForAss_OneRowMapper implements RowMapper<WorkInfoForAssVO>{

	@Override
	public WorkInfoForAssVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		WorkInfoForAssVO vo = new WorkInfoForAssVO();
		vo.setWorkCode(rs.getString("WORKCODE"));
		vo.setClientCode(rs.getString("CLIENTCODE"));
		vo.setWorkField(rs.getString("WORKFIELD"));
		vo.setFieldManager(rs.getString("FIELDMANAGER"));
		vo.setFieldManagerPhone(rs.getString("FIELDMANAGERPHONE"));
		vo.setFieldManagerCell(rs.getString("FIELDMANAGERCELL"));
		vo.setFieldAdd01(rs.getString("FIELDADD01"));
		vo.setFieldAdd02(rs.getString("FIELDADD02"));
		vo.setWorkAmount(rs.getInt("WORKAMOUNT"));
		vo.setSt(rs.getInt("ST"));
		vo.setAppstatus(rs.getInt("APPSTATUS"));
		return vo;
	}

}
