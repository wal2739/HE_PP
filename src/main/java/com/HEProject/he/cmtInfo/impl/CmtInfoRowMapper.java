package com.HEProject.he.cmtInfo.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.HEProject.he.cmtInfo.CmtInfoVO;

public class CmtInfoRowMapper implements RowMapper<CmtInfoVO>{

	@Override
	public CmtInfoVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		CmtInfoVO vo = new CmtInfoVO();
		vo.setCmtCode(rs.getString("CMTCODE"));
		vo.setCmtContent(rs.getString("CMTCONTENT"));
		vo.setCmtDate(rs.getDate("CMTDATE"));
		vo.setRefCode(rs.getString("REFCODE"));
		vo.setCmtUsRn(rs.getString("CMTUSRN"));
		return vo;
	}

}
