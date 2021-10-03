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
	
	List<GrouperEquipInfoVO> getAllEquipInfo(String usRn, String assUsRn){
		String sql = "select * from grouperEquipInfo where grusrn='" + usRn + "' and ASSUSRN='" + assUsRn + "'";
		try {
			return jdbcTemplate.query(sql, new GrouperEquipInfoRowMapper());
		} catch (EmptyResultDataAccessException e) {
			System.err.println(e);
			return null;
		}
	} 
}
