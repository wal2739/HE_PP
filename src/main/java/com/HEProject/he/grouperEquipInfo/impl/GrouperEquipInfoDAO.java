package com.HEProject.he.grouperEquipInfo.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.HEProject.he.grouperEquipInfo.GrouperEquipInfoVO;

@Repository
public class GrouperEquipInfoDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	List<GrouperEquipInfoVO> getAllEquipInfo(String usRn, String assUsRn,int gst){//현재 그룹원들의 차량 조회
		String sql = "select * from grouperEquipInfo where grusrn='" + usRn + "' and ASSUSRN='" + assUsRn + "' and gst="+gst;
		try {
			return jdbcTemplate.query(sql, new GrouperEquipInfoRowMapper());
		} catch (EmptyResultDataAccessException e) {
			System.err.println(e);
			return null;
		}
	} 

}
