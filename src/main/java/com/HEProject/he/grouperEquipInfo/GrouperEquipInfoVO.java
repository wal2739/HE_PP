package com.HEProject.he.grouperEquipInfo;

import java.io.Serializable;
import java.sql.Date;

public class GrouperEquipInfoVO implements Serializable{
	private String userId;
	private String grUsRn;
	private String assUsRn;
	private String eqRn;
	private String equipNum;
	private String equipType;
	private String equipClass;
	private String equipOption;
	private Date equipRD;
	private Date equipID;
	public GrouperEquipInfoVO() {}
	@Override
	public String toString() {
		return "GrouperEquipInfoVO [userId=" + userId + ", grUsRn=" + grUsRn + ", assUsRn=" + assUsRn + ", eqRn=" + eqRn
				+ ", equipNum=" + equipNum + ", equipType=" + equipType + ", equipClass=" + equipClass
				+ ", equipOption=" + equipOption + ", equipRD=" + equipRD + ", equipID=" + equipID + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((assUsRn == null) ? 0 : assUsRn.hashCode());
		result = prime * result + ((eqRn == null) ? 0 : eqRn.hashCode());
		result = prime * result + ((equipClass == null) ? 0 : equipClass.hashCode());
		result = prime * result + ((equipID == null) ? 0 : equipID.hashCode());
		result = prime * result + ((equipNum == null) ? 0 : equipNum.hashCode());
		result = prime * result + ((equipOption == null) ? 0 : equipOption.hashCode());
		result = prime * result + ((equipRD == null) ? 0 : equipRD.hashCode());
		result = prime * result + ((equipType == null) ? 0 : equipType.hashCode());
		result = prime * result + ((grUsRn == null) ? 0 : grUsRn.hashCode());
		result = prime * result + ((userId == null) ? 0 : userId.hashCode());
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
		GrouperEquipInfoVO other = (GrouperEquipInfoVO) obj;
		if (assUsRn == null) {
			if (other.assUsRn != null)
				return false;
		} else if (!assUsRn.equals(other.assUsRn))
			return false;
		if (eqRn == null) {
			if (other.eqRn != null)
				return false;
		} else if (!eqRn.equals(other.eqRn))
			return false;
		if (equipClass == null) {
			if (other.equipClass != null)
				return false;
		} else if (!equipClass.equals(other.equipClass))
			return false;
		if (equipID == null) {
			if (other.equipID != null)
				return false;
		} else if (!equipID.equals(other.equipID))
			return false;
		if (equipNum == null) {
			if (other.equipNum != null)
				return false;
		} else if (!equipNum.equals(other.equipNum))
			return false;
		if (equipOption == null) {
			if (other.equipOption != null)
				return false;
		} else if (!equipOption.equals(other.equipOption))
			return false;
		if (equipRD == null) {
			if (other.equipRD != null)
				return false;
		} else if (!equipRD.equals(other.equipRD))
			return false;
		if (equipType == null) {
			if (other.equipType != null)
				return false;
		} else if (!equipType.equals(other.equipType))
			return false;
		if (grUsRn == null) {
			if (other.grUsRn != null)
				return false;
		} else if (!grUsRn.equals(other.grUsRn))
			return false;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		return true;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getGrUsRn() {
		return grUsRn;
	}
	public void setGrUsRn(String grUsRn) {
		this.grUsRn = grUsRn;
	}
	public String getAssUsRn() {
		return assUsRn;
	}
	public void setAssUsRn(String assUsRn) {
		this.assUsRn = assUsRn;
	}
	public String getEqRn() {
		return eqRn;
	}
	public void setEqRn(String eqRn) {
		this.eqRn = eqRn;
	}
	public String getEquipNum() {
		return equipNum;
	}
	public void setEquipNum(String equipNum) {
		this.equipNum = equipNum;
	}
	public String getEquipType() {
		return equipType;
	}
	public void setEquipType(String equipType) {
		this.equipType = equipType;
	}
	public String getEquipClass() {
		return equipClass;
	}
	public void setEquipClass(String equipClass) {
		this.equipClass = equipClass;
	}
	public String getEquipOption() {
		return equipOption;
	}
	public void setEquipOption(String equipOption) {
		this.equipOption = equipOption;
	}
	public Date getEquipRD() {
		return equipRD;
	}
	public void setEquipRD(Date equipRD) {
		this.equipRD = equipRD;
	}
	public Date getEquipID() {
		return equipID;
	}
	public void setEquipID(Date equipID) {
		this.equipID = equipID;
	}
	
	
}
