package com.HEProject.he.receipt.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.HEProject.he.receipt.Receipt_ViewVO;

@Repository
public class Receipt_ViewDAO {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	Receipt_ViewVO getReceipt(String usRn, String type, String workCode) {
		String sql = "select * from receipt_view where " + type + "=? and workCode='" + workCode + "'";
		Object[] args = {usRn};
		try {
			return jdbcTemplate.queryForObject(sql,args, new Receipt_ViewRowMapper());
		} catch (Exception e) {
			System.err.println(e);
			return null;
		}
	}
}
