package com.HEProject.he.receipt;

import java.io.Serializable;
import java.sql.Date;

public class Receipt_ViewVO implements Serializable{
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
	private String workersData;
	private String eqRn;
	private String relative;
	private Date workDate;
	private String rv;
	private String assBoNumber;
	private String asscpName;
	private String assboName;
	private String assboadd01;
	private String assboadd02;
	private String asstop01;
	private String asstop02;
	private String indiBoNumber;
	private String indicpName;
	private String indiboName;
	private String indiboadd01;
	private String indiboadd02;
	private String inditop01;
	private String inditop02;
	private int et;
    private int aa;
    private int es;
	public Receipt_ViewVO() {}
	@Override
	public String toString() {
		return "Receipt_ViewVO [workCode=" + workCode + ", clientCode=" + clientCode + ", workField=" + workField
				+ ", fieldManager=" + fieldManager + ", fieldManagerPhone=" + fieldManagerPhone + ", fieldManagerCell="
				+ fieldManagerCell + ", fieldManagerMail=" + fieldManagerMail + ", fieldAdd01=" + fieldAdd01
				+ ", fieldAdd02=" + fieldAdd02 + ", workAmount=" + workAmount + ", workTime=" + workTime
				+ ", workRequests=" + workRequests + ", st=" + st + ", assUsRn=" + assUsRn + ", indiUsRn=" + indiUsRn
				+ ", workersData=" + workersData + ", eqRn=" + eqRn + ", relative=" + relative + ", workDate="
				+ workDate + ", rv=" + rv + ", assBoNumber=" + assBoNumber + ", asscpName=" + asscpName + ", assboName="
				+ assboName + ", assboadd01=" + assboadd01 + ", assboadd02=" + assboadd02 + ", asstop01=" + asstop01
				+ ", asstop02=" + asstop02 + ", indiBoNumber=" + indiBoNumber + ", indicpName=" + indicpName
				+ ", indiboName=" + indiboName + ", indiboadd01=" + indiboadd01 + ", indiboadd02=" + indiboadd02
				+ ", inditop01=" + inditop01 + ", inditop02=" + inditop02 + ", et=" + et + ", aa=" + aa + ", es=" + es
				+ "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + aa;
		result = prime * result + ((assBoNumber == null) ? 0 : assBoNumber.hashCode());
		result = prime * result + ((assUsRn == null) ? 0 : assUsRn.hashCode());
		result = prime * result + ((assboName == null) ? 0 : assboName.hashCode());
		result = prime * result + ((assboadd01 == null) ? 0 : assboadd01.hashCode());
		result = prime * result + ((assboadd02 == null) ? 0 : assboadd02.hashCode());
		result = prime * result + ((asscpName == null) ? 0 : asscpName.hashCode());
		result = prime * result + ((asstop01 == null) ? 0 : asstop01.hashCode());
		result = prime * result + ((asstop02 == null) ? 0 : asstop02.hashCode());
		result = prime * result + ((clientCode == null) ? 0 : clientCode.hashCode());
		result = prime * result + ((eqRn == null) ? 0 : eqRn.hashCode());
		result = prime * result + es;
		result = prime * result + et;
		result = prime * result + ((fieldAdd01 == null) ? 0 : fieldAdd01.hashCode());
		result = prime * result + ((fieldAdd02 == null) ? 0 : fieldAdd02.hashCode());
		result = prime * result + ((fieldManager == null) ? 0 : fieldManager.hashCode());
		result = prime * result + ((fieldManagerCell == null) ? 0 : fieldManagerCell.hashCode());
		result = prime * result + ((fieldManagerMail == null) ? 0 : fieldManagerMail.hashCode());
		result = prime * result + ((fieldManagerPhone == null) ? 0 : fieldManagerPhone.hashCode());
		result = prime * result + ((indiBoNumber == null) ? 0 : indiBoNumber.hashCode());
		result = prime * result + ((indiUsRn == null) ? 0 : indiUsRn.hashCode());
		result = prime * result + ((indiboName == null) ? 0 : indiboName.hashCode());
		result = prime * result + ((indiboadd01 == null) ? 0 : indiboadd01.hashCode());
		result = prime * result + ((indiboadd02 == null) ? 0 : indiboadd02.hashCode());
		result = prime * result + ((indicpName == null) ? 0 : indicpName.hashCode());
		result = prime * result + ((inditop01 == null) ? 0 : inditop01.hashCode());
		result = prime * result + ((inditop02 == null) ? 0 : inditop02.hashCode());
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
		Receipt_ViewVO other = (Receipt_ViewVO) obj;
		if (aa != other.aa)
			return false;
		if (assBoNumber == null) {
			if (other.assBoNumber != null)
				return false;
		} else if (!assBoNumber.equals(other.assBoNumber))
			return false;
		if (assUsRn == null) {
			if (other.assUsRn != null)
				return false;
		} else if (!assUsRn.equals(other.assUsRn))
			return false;
		if (assboName == null) {
			if (other.assboName != null)
				return false;
		} else if (!assboName.equals(other.assboName))
			return false;
		if (assboadd01 == null) {
			if (other.assboadd01 != null)
				return false;
		} else if (!assboadd01.equals(other.assboadd01))
			return false;
		if (assboadd02 == null) {
			if (other.assboadd02 != null)
				return false;
		} else if (!assboadd02.equals(other.assboadd02))
			return false;
		if (asscpName == null) {
			if (other.asscpName != null)
				return false;
		} else if (!asscpName.equals(other.asscpName))
			return false;
		if (asstop01 == null) {
			if (other.asstop01 != null)
				return false;
		} else if (!asstop01.equals(other.asstop01))
			return false;
		if (asstop02 == null) {
			if (other.asstop02 != null)
				return false;
		} else if (!asstop02.equals(other.asstop02))
			return false;
		if (clientCode == null) {
			if (other.clientCode != null)
				return false;
		} else if (!clientCode.equals(other.clientCode))
			return false;
		if (eqRn == null) {
			if (other.eqRn != null)
				return false;
		} else if (!eqRn.equals(other.eqRn))
			return false;
		if (es != other.es)
			return false;
		if (et != other.et)
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
		if (indiBoNumber == null) {
			if (other.indiBoNumber != null)
				return false;
		} else if (!indiBoNumber.equals(other.indiBoNumber))
			return false;
		if (indiUsRn == null) {
			if (other.indiUsRn != null)
				return false;
		} else if (!indiUsRn.equals(other.indiUsRn))
			return false;
		if (indiboName == null) {
			if (other.indiboName != null)
				return false;
		} else if (!indiboName.equals(other.indiboName))
			return false;
		if (indiboadd01 == null) {
			if (other.indiboadd01 != null)
				return false;
		} else if (!indiboadd01.equals(other.indiboadd01))
			return false;
		if (indiboadd02 == null) {
			if (other.indiboadd02 != null)
				return false;
		} else if (!indiboadd02.equals(other.indiboadd02))
			return false;
		if (indicpName == null) {
			if (other.indicpName != null)
				return false;
		} else if (!indicpName.equals(other.indicpName))
			return false;
		if (inditop01 == null) {
			if (other.inditop01 != null)
				return false;
		} else if (!inditop01.equals(other.inditop01))
			return false;
		if (inditop02 == null) {
			if (other.inditop02 != null)
				return false;
		} else if (!inditop02.equals(other.inditop02))
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
	public String getAssBoNumber() {
		return assBoNumber;
	}
	public void setAssBoNumber(String assBoNumber) {
		this.assBoNumber = assBoNumber;
	}
	public String getAsscpName() {
		return asscpName;
	}
	public void setAsscpName(String asscpName) {
		this.asscpName = asscpName;
	}
	public String getAssboName() {
		return assboName;
	}
	public void setAssboName(String assboName) {
		this.assboName = assboName;
	}
	public String getAssboadd01() {
		return assboadd01;
	}
	public void setAssboadd01(String assboadd01) {
		this.assboadd01 = assboadd01;
	}
	public String getAssboadd02() {
		return assboadd02;
	}
	public void setAssboadd02(String assboadd02) {
		this.assboadd02 = assboadd02;
	}
	public String getAsstop01() {
		return asstop01;
	}
	public void setAsstop01(String asstop01) {
		this.asstop01 = asstop01;
	}
	public String getAsstop02() {
		return asstop02;
	}
	public void setAsstop02(String asstop02) {
		this.asstop02 = asstop02;
	}
	public String getIndiBoNumber() {
		return indiBoNumber;
	}
	public void setIndiBoNumber(String indiBoNumber) {
		this.indiBoNumber = indiBoNumber;
	}
	public String getIndicpName() {
		return indicpName;
	}
	public void setIndicpName(String indicpName) {
		this.indicpName = indicpName;
	}
	public String getIndiboName() {
		return indiboName;
	}
	public void setIndiboName(String indiboName) {
		this.indiboName = indiboName;
	}
	public String getIndiboadd01() {
		return indiboadd01;
	}
	public void setIndiboadd01(String indiboadd01) {
		this.indiboadd01 = indiboadd01;
	}
	public String getIndiboadd02() {
		return indiboadd02;
	}
	public void setIndiboadd02(String indiboadd02) {
		this.indiboadd02 = indiboadd02;
	}
	public String getInditop01() {
		return inditop01;
	}
	public void setInditop01(String inditop01) {
		this.inditop01 = inditop01;
	}
	public String getInditop02() {
		return inditop02;
	}
	public void setInditop02(String inditop02) {
		this.inditop02 = inditop02;
	}
	public int getEt() {
		return et;
	}
	public void setEt(int et) {
		this.et = et;
	}
	public int getAa() {
		return aa;
	}
	public void setAa(int aa) {
		this.aa = aa;
	}
	public int getEs() {
		return es;
	}
	public void setEs(int es) {
		this.es = es;
	}
	
    
}
