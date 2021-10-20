package com.HEProject.he.workInfo.Impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.HEProject.he.workInfo.WorkInfoVO;

public class StatisticsRowMapper implements RowMapper<WorkInfoVO>{

	@Override
	public WorkInfoVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		WorkInfoVO vo = new WorkInfoVO();
		vo.setWorkDate(rs.getDate("workDate"));
		vo.setWorkAmount(rs.getInt("workAmount"));
		return vo;
	}
	
}
