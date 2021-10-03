package com.HEProject.he.usersInfo.Impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.HEProject.he.usersInfo.SearchInfoVO;
import com.HEProject.he.usersInfo.UsersInfoVO;

public class SearchGrouperInfoRowMapper implements RowMapper<SearchInfoVO>{

	@Override
	public SearchInfoVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		SearchInfoVO vo = new SearchInfoVO();
		vo.setUsRn(rs.getString("usRn"));
		vo.setUserID(rs.getString("userID"));
		vo.setUserPW(rs.getString("userPW"));
		vo.setUserName(rs.getString("userName"));
		vo.setUserCell(rs.getString("userCell"));
		vo.setUserAdd01(rs.getString("userAdd01"));
		vo.setUserAdd02(rs.getString("userAdd02"));
		vo.setUserClass(rs.getInt("userClass"));
		vo.setUserEmail(rs.getString("userEmail"));
		vo.setUserConsent01(rs.getInt("USERCONSENT01"));
		vo.setUserConsent02(rs.getInt("USERCONSENT02"));
		vo.setUserConsent03(rs.getInt("USERCONSENT03"));
		vo.setSt(rs.getInt("ST"));
		vo.setRegiDate(rs.getDate("REGIDATE"));
		vo.setBoNumber(rs.getString("BONUMBER"));
		vo.setBoName(rs.getString("BONAME"));
		vo.setBoRrn(rs.getString("BORRN"));
		vo.setBoPhone(rs.getString("BOPHONE"));
		vo.setBoCell(rs.getString("BOCELL"));
		vo.setBoMail(rs.getString("BOMAIL"));
		vo.setBoLicense(rs.getInt("BOLICENSE"));
		vo.setBoAdd01(rs.getString("BOADD01"));
		vo.setBoAdd02(rs.getString("BOADD02"));
		vo.setBoAcc(rs.getLong("BOACC"));
		vo.setBoAccBack(rs.getString("BOACCBANK"));
		vo.setTob01(rs.getString("TOB01"));
		vo.setTob02(rs.getString("TOB02"));
		vo.setCpName(rs.getString("CPNAME"));
		return vo;
	}
	
}
