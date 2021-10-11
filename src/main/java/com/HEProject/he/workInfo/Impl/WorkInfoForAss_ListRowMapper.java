package com.HEProject.he.workInfo.Impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.HEProject.he.workInfo.WorkInfoForAssVO;
import com.HEProject.he.workInfo.WorkInfoVO;

public class WorkInfoForAss_ListRowMapper implements RowMapper<WorkInfoForAssVO>{

	@Override
	public WorkInfoForAssVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		WorkInfoForAssVO vo = new WorkInfoForAssVO();
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
		vo.setAppstatus(rs.getInt("APPSTATUS"));
		vo.setClientBoNumber(rs.getString("CLIENTBONUMBER"));
		vo.setClientCeo(rs.getString("CLIENTCEO"));
		vo.setClientManager(rs.getString("CLIENTMANAGER"));
		vo.setClientPhone(rs.getString("CLIENTPHONE"));
		vo.setClientCell(rs.getString("CLIENTCELL"));
		vo.setClientMail(rs.getString("CLIENTMAIL"));
		vo.setClientAdd01(rs.getString("CLIENTADD01"));
		vo.setClientAdd02(rs.getString("CLIENTADD02"));
		vo.setClientCpName(rs.getString("clientCpName"));
		vo.setIndiName(rs.getString("indiName"));
		vo.setIndiCell(rs.getString("indiCell"));
		vo.setIndiMail(rs.getString("indiMail"));
		vo.setIndiId(rs.getString("indiId"));
		vo.setEquipnum(rs.getString("equipnum"));
		vo.setEquipoption(rs.getString("equipoption"));
		vo.setEquipclass(rs.getString("equipclass"));
		vo.setEquiptype(rs.getString("equiptype"));
		return vo;
	}

}
