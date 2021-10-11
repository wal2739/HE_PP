package com.HEProject.he.workInfo;

import java.io.Serializable;
import java.sql.Date;

public class WorkInfoForAssVO implements Serializable{
	private String workCode;
	private String clientCode;
	private String workField;
	private String fieldManager;
	private String fieldManagerPhone;
	private String fieldManagerCell;
	private String fieldManagerMail;
	private String fieldAdd01;
	private String fieldAdd02;
	private int workAmount;
	private String workTime;
	private String workRequests;
	private int st;
	private String assUsRn;
	private String indiUsRn;
	private String 	workersData;
	private String 	eqRn;
	private String 	relative;
	private Date workDate;
	private String rv;
	private int appstatus;
	private String clientBoNumber;
	private String clientCeo;
	private String clientManager;
	private String clientPhone;
	private String clientCell;
	private String clientMail;
	private String clientAdd01;
	private String clientAdd02;
	private String clientCpName;
	private String indiName;
	private String indiCell;
	private String indiMail;
	private String indiId;
	private String equipnum;
	private String equipoption;
	private String equipclass;
	private String equiptype;

	public WorkInfoForAssVO() {}

	@Override
	public String toString() {
		return "WorkInfoForAssVO [workCode=" + workCode + ", clientCode=" + clientCode + ", workField=" + workField
				+ ", fieldManager=" + fieldManager + ", fieldManagerPhone=" + fieldManagerPhone + ", fieldManagerCell="
				+ fieldManagerCell + ", fieldManagerMail=" + fieldManagerMail + ", fieldAdd01=" + fieldAdd01
				+ ", fieldAdd02=" + fieldAdd02 + ", workAmount=" + workAmount + ", workTime=" + workTime
				+ ", workRequests=" + workRequests + ", st=" + st + ", assUsRn=" + assUsRn + ", indiUsRn=" + indiUsRn
				+ ", workersData=" + workersData + ", eqRn=" + eqRn + ", relative=" + relative + ", workDate="
				+ workDate + ", rv=" + rv + ", appstatus=" + appstatus + ", clientBoNumber=" + clientBoNumber
				+ ", clientCeo=" + clientCeo + ", clientManager=" + clientManager + ", clientPhone=" + clientPhone
				+ ", clientCell=" + clientCell + ", clientMail=" + clientMail + ", clientAdd01=" + clientAdd01
				+ ", clientAdd02=" + clientAdd02 + ", clientCpName=" + clientCpName + ", indiName=" + indiName
				+ ", indiCell=" + indiCell + ", indiMail=" + indiMail + ", indiId=" + indiId + ", equipnum=" + equipnum
				+ ", equipoption=" + equipoption + ", equipclass=" + equipclass + ", equiptype=" + equiptype + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + appstatus;
		result = prime * result + ((assUsRn == null) ? 0 : assUsRn.hashCode());
		result = prime * result + ((clientAdd01 == null) ? 0 : clientAdd01.hashCode());
		result = prime * result + ((clientAdd02 == null) ? 0 : clientAdd02.hashCode());
		result = prime * result + ((clientBoNumber == null) ? 0 : clientBoNumber.hashCode());
		result = prime * result + ((clientCell == null) ? 0 : clientCell.hashCode());
		result = prime * result + ((clientCeo == null) ? 0 : clientCeo.hashCode());
		result = prime * result + ((clientCode == null) ? 0 : clientCode.hashCode());
		result = prime * result + ((clientCpName == null) ? 0 : clientCpName.hashCode());
		result = prime * result + ((clientMail == null) ? 0 : clientMail.hashCode());
		result = prime * result + ((clientManager == null) ? 0 : clientManager.hashCode());
		result = prime * result + ((clientPhone == null) ? 0 : clientPhone.hashCode());
		result = prime * result + ((eqRn == null) ? 0 : eqRn.hashCode());
		result = prime * result + ((equipclass == null) ? 0 : equipclass.hashCode());
		result = prime * result + ((equipnum == null) ? 0 : equipnum.hashCode());
		result = prime * result + ((equipoption == null) ? 0 : equipoption.hashCode());
		result = prime * result + ((equiptype == null) ? 0 : equiptype.hashCode());
		result = prime * result + ((fieldAdd01 == null) ? 0 : fieldAdd01.hashCode());
		result = prime * result + ((fieldAdd02 == null) ? 0 : fieldAdd02.hashCode());
		result = prime * result + ((fieldManager == null) ? 0 : fieldManager.hashCode());
		result = prime * result + ((fieldManagerCell == null) ? 0 : fieldManagerCell.hashCode());
		result = prime * result + ((fieldManagerMail == null) ? 0 : fieldManagerMail.hashCode());
		result = prime * result + ((fieldManagerPhone == null) ? 0 : fieldManagerPhone.hashCode());
		result = prime * result + ((indiCell == null) ? 0 : indiCell.hashCode());
		result = prime * result + ((indiId == null) ? 0 : indiId.hashCode());
		result = prime * result + ((indiMail == null) ? 0 : indiMail.hashCode());
		result = prime * result + ((indiName == null) ? 0 : indiName.hashCode());
		result = prime * result + ((indiUsRn == null) ? 0 : indiUsRn.hashCode());
		result = prime * result + ((relative == null) ? 0 : relative.hashCode());
		result = prime * result + ((rv == null) ? 0 : rv.hashCode());
		result = prime * result + st;
		result = prime * result + workAmount;
		result = prime * result + ((workCode == null) ? 0 : workCode.hashCode());
		result = prime * result + ((workDate == null) ? 0 : workDate.hashCode());
		result = prime * result + ((workField == null) ? 0 : workField.hashCode());
		result = prime * result + ((workRequests == null) ? 0 : workRequests.hashCode());
		result = prime * result + ((workTime == null) ? 0 : workTime.hashCode());
		result = prime * result + ((workersData == null) ? 0 : workersData.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		WorkInfoForAssVO other = (WorkInfoForAssVO) obj;
		if (appstatus != other.appstatus)
			return false;
		if (assUsRn == null) {
			if (other.assUsRn != null)
				return false;
		} else if (!assUsRn.equals(other.assUsRn))
			return false;
		if (clientAdd01 == null) {
			if (other.clientAdd01 != null)
				return false;
		} else if (!clientAdd01.equals(other.clientAdd01))
			return false;
		if (clientAdd02 == null) {
			if (other.clientAdd02 != null)
				return false;
		} else if (!clientAdd02.equals(other.clientAdd02))
			return false;
		if (clientBoNumber == null) {
			if (other.clientBoNumber != null)
				return false;
		} else if (!clientBoNumber.equals(other.clientBoNumber))
			return false;
		if (clientCell == null) {
			if (other.clientCell != null)
				return false;
		} else if (!clientCell.equals(other.clientCell))
			return false;
		if (clientCeo == null) {
			if (other.clientCeo != null)
				return false;
		} else if (!clientCeo.equals(other.clientCeo))
			return false;
		if (clientCode == null) {
			if (other.clientCode != null)
				return false;
		} else if (!clientCode.equals(other.clientCode))
			return false;
		if (clientCpName == null) {
			if (other.clientCpName != null)
				return false;
		} else if (!clientCpName.equals(other.clientCpName))
			return false;
		if (clientMail == null) {
			if (other.clientMail != null)
				return false;
		} else if (!clientMail.equals(other.clientMail))
			return false;
		if (clientManager == null) {
			if (other.clientManager != null)
				return false;
		} else if (!clientManager.equals(other.clientManager))
			return false;
		if (clientPhone == null) {
			if (other.clientPhone != null)
				return false;
		} else if (!clientPhone.equals(other.clientPhone))
			return false;
		if (eqRn == null) {
			if (other.eqRn != null)
				return false;
		} else if (!eqRn.equals(other.eqRn))
			return false;
		if (equipclass == null) {
			if (other.equipclass != null)
				return false;
		} else if (!equipclass.equals(other.equipclass))
			return false;
		if (equipnum == null) {
			if (other.equipnum != null)
				return false;
		} else if (!equipnum.equals(other.equipnum))
			return false;
		if (equipoption == null) {
			if (other.equipoption != null)
				return false;
		} else if (!equipoption.equals(other.equipoption))
			return false;
		if (equiptype == null) {
			if (other.equiptype != null)
				return false;
		} else if (!equiptype.equals(other.equiptype))
			return false;
		if (fieldAdd01 == null) {
			if (other.fieldAdd01 != null)
				return false;
		} else if (!fieldAdd01.equals(other.fieldAdd01))
			return false;
		if (fieldAdd02 == null) {
			if (other.fieldAdd02 != null)
				return false;
		} else if (!fieldAdd02.equals(other.fieldAdd02))
			return false;
		if (fieldManager == null) {
			if (other.fieldManager != null)
				return false;
		} else if (!fieldManager.equals(other.fieldManager))
			return false;
		if (fieldManagerCell == null) {
			if (other.fieldManagerCell != null)
				return false;
		} else if (!fieldManagerCell.equals(other.fieldManagerCell))
			return false;
		if (fieldManagerMail == null) {
			if (other.fieldManagerMail != null)
				return false;
		} else if (!fieldManagerMail.equals(other.fieldManagerMail))
			return false;
		if (fieldManagerPhone == null) {
			if (other.fieldManagerPhone != null)
				return false;
		} else if (!fieldManagerPhone.equals(other.fieldManagerPhone))
			return false;
		if (indiCell == null) {
			if (other.indiCell != null)
				return false;
		} else if (!indiCell.equals(other.indiCell))
			return false;
		if (indiId == null) {
			if (other.indiId != null)
				return false;
		} else if (!indiId.equals(other.indiId))
			return false;
		if (indiMail == null) {
			if (other.indiMail != null)
				return false;
		} else if (!indiMail.equals(other.indiMail))
			return false;
		if (indiName == null) {
			if (other.indiName != null)
				return false;
		} else if (!indiName.equals(other.indiName))
			return false;
		if (indiUsRn == null) {
			if (other.indiUsRn != null)
				return false;
		} else if (!indiUsRn.equals(other.indiUsRn))
			return false;
		if (relative == null) {
			if (other.relative != null)
				return false;
		} else if (!relative.equals(other.relative))
			return false;
		if (rv == null) {
			if (other.rv != null)
				return false;
		} else if (!rv.equals(other.rv))
			return false;
		if (st != other.st)
			return false;
		if (workAmount != other.workAmount)
			return false;
		if (workCode == null) {
			if (other.workCode != null)
				return false;
		} else if (!workCode.equals(other.workCode))
			return false;
		if (workDate == null) {
			if (other.workDate != null)
				return false;
		} else if (!workDate.equals(other.workDate))
			return false;
		if (workField == null) {
			if (other.workField != null)
				return false;
		} else if (!workField.equals(other.workField))
			return false;
		if (workRequests == null) {
			if (other.workRequests != null)
				return false;
		} else if (!workRequests.equals(other.workRequests))
			return false;
		if (workTime == null) {
			if (other.workTime != null)
				return false;
		} else if (!workTime.equals(other.workTime))
			return false;
		if (workersData == null) {
			if (other.workersData != null)
				return false;
		} else if (!workersData.equals(other.workersData))
			return false;
		return true;
	}

	public String getWorkCode() {
		return workCode;
	}

	public void setWorkCode(String workCode) {
		this.workCode = workCode;
	}

	public String getClientCode() {
		return clientCode;
	}

	public void setClientCode(String clientCode) {
		this.clientCode = clientCode;
	}

	public String getWorkField() {
		return workField;
	}

	public void setWorkField(String workField) {
		this.workField = workField;
	}

	public String getFieldManager() {
		return fieldManager;
	}

	public void setFieldManager(String fieldManager) {
		this.fieldManager = fieldManager;
	}

	public String getFieldManagerPhone() {
		return fieldManagerPhone;
	}

	public void setFieldManagerPhone(String fieldManagerPhone) {
		this.fieldManagerPhone = fieldManagerPhone;
	}

	public String getFieldManagerCell() {
		return fieldManagerCell;
	}

	public void setFieldManagerCell(String fieldManagerCell) {
		this.fieldManagerCell = fieldManagerCell;
	}

	public String getFieldManagerMail() {
		return fieldManagerMail;
	}

	public void setFieldManagerMail(String fieldManagerMail) {
		this.fieldManagerMail = fieldManagerMail;
	}

	public String getFieldAdd01() {
		return fieldAdd01;
	}

	public void setFieldAdd01(String fieldAdd01) {
		this.fieldAdd01 = fieldAdd01;
	}

	public String getFieldAdd02() {
		return fieldAdd02;
	}

	public void setFieldAdd02(String fieldAdd02) {
		this.fieldAdd02 = fieldAdd02;
	}

	public int getWorkAmount() {
		return workAmount;
	}

	public void setWorkAmount(int workAmount) {
		this.workAmount = workAmount;
	}

	public String getWorkTime() {
		return workTime;
	}

	public void setWorkTime(String workTime) {
		this.workTime = workTime;
	}

	public String getWorkRequests() {
		return workRequests;
	}

	public void setWorkRequests(String workRequests) {
		this.workRequests = workRequests;
	}

	public int getSt() {
		return st;
	}

	public void setSt(int st) {
		this.st = st;
	}

	public String getAssUsRn() {
		return assUsRn;
	}

	public void setAssUsRn(String assUsRn) {
		this.assUsRn = assUsRn;
	}

	public String getIndiUsRn() {
		return indiUsRn;
	}

	public void setIndiUsRn(String indiUsRn) {
		this.indiUsRn = indiUsRn;
	}

	public String getWorkersData() {
		return workersData;
	}

	public void setWorkersData(String workersData) {
		this.workersData = workersData;
	}

	public String getEqRn() {
		return eqRn;
	}

	public void setEqRn(String eqRn) {
		this.eqRn = eqRn;
	}

	public String getRelative() {
		return relative;
	}

	public void setRelative(String relative) {
		this.relative = relative;
	}

	public Date getWorkDate() {
		return workDate;
	}

	public void setWorkDate(Date workDate) {
		this.workDate = workDate;
	}

	public String getRv() {
		return rv;
	}

	public void setRv(String rv) {
		this.rv = rv;
	}

	public int getAppstatus() {
		return appstatus;
	}

	public void setAppstatus(int appstatus) {
		this.appstatus = appstatus;
	}

	public String getClientBoNumber() {
		return clientBoNumber;
	}

	public void setClientBoNumber(String clientBoNumber) {
		this.clientBoNumber = clientBoNumber;
	}

	public String getClientCeo() {
		return clientCeo;
	}

	public void setClientCeo(String clientCeo) {
		this.clientCeo = clientCeo;
	}

	public String getClientManager() {
		return clientManager;
	}

	public void setClientManager(String clientManager) {
		this.clientManager = clientManager;
	}

	public String getClientPhone() {
		return clientPhone;
	}

	public void setClientPhone(String clientPhone) {
		this.clientPhone = clientPhone;
	}

	public String getClientCell() {
		return clientCell;
	}

	public void setClientCell(String clientCell) {
		this.clientCell = clientCell;
	}

	public String getClientMail() {
		return clientMail;
	}

	public void setClientMail(String clientMail) {
		this.clientMail = clientMail;
	}

	public String getClientAdd01() {
		return clientAdd01;
	}

	public void setClientAdd01(String clientAdd01) {
		this.clientAdd01 = clientAdd01;
	}

	public String getClientAdd02() {
		return clientAdd02;
	}

	public void setClientAdd02(String clientAdd02) {
		this.clientAdd02 = clientAdd02;
	}

	public String getClientCpName() {
		return clientCpName;
	}

	public void setClientCpName(String clientCpName) {
		this.clientCpName = clientCpName;
	}

	public String getIndiName() {
		return indiName;
	}

	public void setIndiName(String indiName) {
		this.indiName = indiName;
	}

	public String getIndiCell() {
		return indiCell;
	}

	public void setIndiCell(String indiCell) {
		this.indiCell = indiCell;
	}

	public String getIndiMail() {
		return indiMail;
	}

	public void setIndiMail(String indiMail) {
		this.indiMail = indiMail;
	}

	public String getIndiId() {
		return indiId;
	}

	public void setIndiId(String indiId) {
		this.indiId = indiId;
	}

	public String getEquipnum() {
		return equipnum;
	}

	public void setEquipnum(String equipnum) {
		this.equipnum = equipnum;
	}

	public String getEquipoption() {
		return equipoption;
	}

	public void setEquipoption(String equipoption) {
		this.equipoption = equipoption;
	}

	public String getEquipclass() {
		return equipclass;
	}

	public void setEquipclass(String equipclass) {
		this.equipclass = equipclass;
	}

	public String getEquiptype() {
		return equiptype;
	}

	public void setEquiptype(String equiptype) {
		this.equiptype = equiptype;
	}
	
	
	
	
}
