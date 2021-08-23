package com.HEProject.he.cmtInfo.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.HEProject.he.cmtInfo.CmtInfoVO;

@Repository
public class CmtInfoDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	//기본 조회
	CmtInfoVO getCmt(String cmtCode) {
		String sql = "select * from cmtInfo where cmtCode=?";
		Object[] args = {cmtCode};
		try {
			return jdbcTemplate.queryForObject(sql, args, new CmtInfoRowMapper());
		} catch (EmptyResultDataAccessException e) {
			System.err.println(e);
			return null;
		}
	}
	
	List<CmtInfoVO> getCmtList (String searchCond, String searchContents){
		String sql = "select * from cmtInfo where " + searchCond + "='" + searchContents + "' order by cmtCode asc";
		try {
			return jdbcTemplate.query(sql, new CmtInfoRowMapper());
		} catch (Exception e) {
			System.err.println(e);
			return null;
		}
	}
	
	//삽입
	int insertCmt(CmtInfoVO vo) {
		String sql = "insert into cmtInfo(CMTCODE,REFCODE,CMTDATE,CMTCONTENT,CMTUSRN) values(LPAD(LPAD(cmtInfo_sq.nextVal, '8', '0'),'9','C'),?,sysdate,?,?)";
		try {
			jdbcTemplate.update(sql,vo.getRefCode(),vo.getCmtContent(),vo.getCmtUsRn());
			return 1;
		} catch (Exception e) {
			System.err.println(e+" [insertCmt error]");
			return 0;
		}
	}
	
	//삭제
	int deleteCmt(String cmtCode) {
		String sql = "delete from cmtInfo where cmtCode=?";
		try {
			jdbcTemplate.update(sql, cmtCode);
			return 1;
		} catch (Exception e) {
			System.err.println(e);
			return 0;
		}
	}
	
}
