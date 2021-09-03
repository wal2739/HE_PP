package com.HEProject.he.workInfo.Impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.HEProject.he.workInfo.WorkInfo_ST2VO;

public class WorkInfo_ST2RowMapper implements RowMapper<WorkInfo_ST2VO>{

	@Override
	public WorkInfo_ST2VO mapRow(ResultSet rs, int rowNum) throws SQLException {
		WorkInfo_ST2VO vo = new WorkInfo_ST2VO();
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
		vo.setAssUserID(rs.getString("ASSUSERID"));
		vo.setAssUserName(rs.getString("ASSUSERNAME"));
		vo.setAssBOName(rs.getString("ASSBONAME"));
		vo.setAssCPName(rs.getString("ASSCPNAME"));
		vo.setIndiUserID(rs.getString("INDIUSERID"));
		vo.setIndiUserName(rs.getString("INDIUSERNAME"));
		vo.setIndiBOName(rs.getString("INDIBONAME"));
		vo.setIndiCPName(rs.getString("INDICPNAME"));
		vo.setEquipNum(rs.getString("EQUIPNUM"));
		vo.setEquipType(rs.getString("EQUIPTYPE"));
		vo.setEquipClass(rs.getString("EQUIPCLASS"));
		vo.setEquipOption(rs.getString("EQUIPOPTION"));
		vo.setClientCPName(rs.getString("CLIENTCPNAME"));
		vo.setClientManager(rs.getString("CLIENTMANAGER"));
		vo.setClientPhone(rs.getString("CLIENTPHONE"));
		vo.setRv(rs.getString("RV"));
		vo.setEs(rs.getInt("es"));
		vo.setEt(rs.getInt("et"));
		vo.setAa(rs.getInt("aa"));
		vo.setDe(rs.getInt("de"));
		vo.setDtName(rs.getString("dtname"));
		return vo;
	}
	
}
