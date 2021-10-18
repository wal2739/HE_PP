package com.HEProject.he.receipt.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.HEProject.he.receipt.Receipt_ViewVO;

public class Receipt_ViewRowMapper implements RowMapper<Receipt_ViewVO>{

	@Override
	public Receipt_ViewVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		Receipt_ViewVO vo = new Receipt_ViewVO();
		vo.setWorkCode(rs.getString("WORKCODE"));
		vo.setClientCode(rs.getString("CLIENTCODE"));
		vo.setWorkField(rs.getString("WORKFIELD"));
		vo.setFieldManager(rs.getString("FIELDMANAGER"));
		vo.setFieldManagerPhone(rs.getString("FIELDMANAGERPHONE"));
		vo.setFieldManagerCell(rs.getString("FIELDMANAGERCELL"));
		vo.setFieldManagerMail(rs.getString("FIELDMANAGERMAIL"));
		vo.setFieldAdd01(rs.getString("FIELDADD01"));
		vo.setFieldAdd02(rs.getString("FIELDADD02"));
		vo.setWorkAmount(rs.getInt("WORKAMOUNT"));
		vo.setWorkTime(rs.getString("WORKTIME"));
		vo.setWorkRequests(rs.getString("WORKREQUESTS"));
		vo.setSt(rs.getInt("ST"));
		vo.setAssUsRn(rs.getString("ASSUSRN"));
		vo.setIndiUsRn(rs.getString("INDIUSRN"));
		vo.setWorkersData(rs.getString("WORKERSDATA"));
		vo.setEqRn(rs.getString("EQRN"));
		vo.setRelative(rs.getString("RELATIVE"));
		vo.setWorkDate(rs.getDate("WORKDATE"));
		vo.setRv(rs.getString("RV"));
		vo.setAssBoNumber(rs.getString("assBoNumber"));
		vo.setAsscpName(rs.getString("asscpName"));
		vo.setAssboName(rs.getString("assboName"));
		vo.setAssboadd01(rs.getString("assboadd01"));
		vo.setAssboadd02(rs.getString("assboadd02"));
		vo.setAsstop01(rs.getString("asstop01"));
		vo.setAsstop02(rs.getString("asstop02"));
		vo.setIndiBoNumber(rs.getString("indiboNumber"));
		vo.setIndicpName(rs.getString("indicpName"));
		vo.setIndiboName(rs.getString("indiboName"));
		vo.setIndiboadd01(rs.getString("indiboadd01"));
		vo.setIndiboadd02(rs.getString("indiboadd02"));
		vo.setInditop01(rs.getString("inditop01"));
		vo.setInditop02(rs.getString("inditop02"));
		vo.setEt(rs.getInt("et"));
		vo.setEs(rs.getInt("es"));
		vo.setAa(rs.getInt("aa"));	
		return vo;
	}

}
