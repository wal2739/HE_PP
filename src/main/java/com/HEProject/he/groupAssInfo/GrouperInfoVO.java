package com.HEProject.he.groupAssInfo;

import java.io.Serializable;
import java.sql.Date;

public class GrouperInfoVO implements Serializable{
	private String userID;
	private String userPW;
	private String userName;
	private String userCell;
	private String userAdd01;
	private String userAdd02;
	private int userClass;
	private String userEmail;
	private int userConsent01;
	private int userConsent02;
	private int userConsent03;
	private int st;
	private String usRn;
	private Date regiDate;
	private String boNumber;
	private String boName;
	private String boRrn;
	private String boPhone;
	private String boCell;
	private String boMail;
	private int boLicense;
	private String boAdd01;
	private String boAdd02;
	private long boAcc;
	private String boAccBack;
	private String tob01;
	private String tob02;
	private String cpName;
	private String assUsRn;
	private String equipType;
	private String equipOption;
	private String equipClass;
	public GrouperInfoVO() {}
	@Override
	public String toString() {
		return "GrouperInfoVO [userID=" + userID + ", userPW=" + userPW + ", userName=" + userName + ", userCell="
				+ userCell + ", userAdd01=" + userAdd01 + ", userAdd02=" + userAdd02 + ", userClass=" + userClass
				+ ", userEmail=" + userEmail + ", userConsent01=" + userConsent01 + ", userConsent02=" + userConsent02
				+ ", userConsent03=" + userConsent03 + ", st=" + st + ", usRn=" + usRn + ", regiDate=" + regiDate
				+ ", boNumber=" + boNumber + ", boName=" + boName + ", boRrn=" + boRrn + ", boPhone=" + boPhone
				+ ", boCell=" + boCell + ", boMail=" + boMail + ", boLicense=" + boLicense + ", boAdd01=" + boAdd01
				+ ", boAdd02=" + boAdd02 + ", boAcc=" + boAcc + ", boAccBack=" + boAccBack + ", tob01=" + tob01
				+ ", tob02=" + tob02 + ", cpName=" + cpName + ", assUsRn=" + assUsRn + ", equipType=" + equipType
				+ ", equipOption=" + equipOption + ", equipClass=" + equipClass + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((assUsRn == null) ? 0 : assUsRn.hashCode());
		result = prime * result + (int) (boAcc ^ (boAcc >>> 32));
		result = prime * result + ((boAccBack == null) ? 0 : boAccBack.hashCode());
		result = prime * result + ((boAdd01 == null) ? 0 : boAdd01.hashCode());
		result = prime * result + ((boAdd02 == null) ? 0 : boAdd02.hashCode());
		result = prime * result + ((boCell == null) ? 0 : boCell.hashCode());
		result = prime * result + boLicense;
		result = prime * result + ((boMail == null) ? 0 : boMail.hashCode());
		result = prime * result + ((boName == null) ? 0 : boName.hashCode());
		result = prime * result + ((boNumber == null) ? 0 : boNumber.hashCode());
		result = prime * result + ((boPhone == null) ? 0 : boPhone.hashCode());
		result = prime * result + ((boRrn == null) ? 0 : boRrn.hashCode());
		result = prime * result + ((cpName == null) ? 0 : cpName.hashCode());
		result = prime * result + ((equipClass == null) ? 0 : equipClass.hashCode());
		result = prime * result + ((equipOption == null) ? 0 : equipOption.hashCode());
		result = prime * result + ((equipType == null) ? 0 : equipType.hashCode());
		result = prime * result + ((regiDate == null) ? 0 : regiDate.hashCode());
		result = prime * result + st;
		result = prime * result + ((tob01 == null) ? 0 : tob01.hashCode());
		result = prime * result + ((tob02 == null) ? 0 : tob02.hashCode());
		result = prime * result + ((usRn == null) ? 0 : usRn.hashCode());
		result = prime * result + ((userAdd01 == null) ? 0 : userAdd01.hashCode());
		result = prime * result + ((userAdd02 == null) ? 0 : userAdd02.hashCode());
		result = prime * result + ((userCell == null) ? 0 : userCell.hashCode());
		result = prime * result + userClass;
		result = prime * result + userConsent01;
		result = prime * result + userConsent02;
		result = prime * result + userConsent03;
		result = prime * result + ((userEmail == null) ? 0 : userEmail.hashCode());
		result = prime * result + ((userID == null) ? 0 : userID.hashCode());
		result = prime * result + ((userName == null) ? 0 : userName.hashCode());
		result = prime * result + ((userPW == null) ? 0 : userPW.hashCode());
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
		GrouperInfoVO other = (GrouperInfoVO) obj;
		if (assUsRn == null) {
			if (other.assUsRn != null)
				return false;
		} else if (!assUsRn.equals(other.assUsRn))
			return false;
		if (boAcc != other.boAcc)
			return false;
		if (boAccBack == null) {
			if (other.boAccBack != null)
				return false;
		} else if (!boAccBack.equals(other.boAccBack))
			return false;
		if (boAdd01 == null) {
			if (other.boAdd01 != null)
				return false;
		} else if (!boAdd01.equals(other.boAdd01))
			return false;
		if (boAdd02 == null) {
			if (other.boAdd02 != null)
				return false;
		} else if (!boAdd02.equals(other.boAdd02))
			return false;
		if (boCell == null) {
			if (other.boCell != null)
				return false;
		} else if (!boCell.equals(other.boCell))
			return false;
		if (boLicense != other.boLicense)
			return false;
		if (boMail == null) {
			if (other.boMail != null)
				return false;
		} else if (!boMail.equals(other.boMail))
			return false;
		if (boName == null) {
			if (other.boName != null)
				return false;
		} else if (!boName.equals(other.boName))
			return false;
		if (boNumber == null) {
			if (other.boNumber != null)
				return false;
		} else if (!boNumber.equals(other.boNumber))
			return false;
		if (boPhone == null) {
			if (other.boPhone != null)
				return false;
		} else if (!boPhone.equals(other.boPhone))
			return false;
		if (boRrn == null) {
			if (other.boRrn != null)
				return false;
		} else if (!boRrn.equals(other.boRrn))
			return false;
		if (cpName == null) {
			if (other.cpName != null)
				return false;
		} else if (!cpName.equals(other.cpName))
			return false;
		if (equipClass == null) {
			if (other.equipClass != null)
				return false;
		} else if (!equipClass.equals(other.equipClass))
			return false;
		if (equipOption == null) {
			if (other.equipOption != null)
				return false;
		} else if (!equipOption.equals(other.equipOption))
			return false;
		if (equipType == null) {
			if (other.equipType != null)
				return false;
		} else if (!equipType.equals(other.equipType))
			return false;
		if (regiDate == null) {
			if (other.regiDate != null)
				return false;
		} else if (!regiDate.equals(other.regiDate))
			return false;
		if (st != other.st)
			return false;
		if (tob01 == null) {
			if (other.tob01 != null)
				return false;
		} else if (!tob01.equals(other.tob01))
			return false;
		if (tob02 == null) {
			if (other.tob02 != null)
				return false;
		} else if (!tob02.equals(other.tob02))
			return false;
		if (usRn == null) {
			if (other.usRn != null)
				return false;
		} else if (!usRn.equals(other.usRn))
			return false;
		if (userAdd01 == null) {
			if (other.userAdd01 != null)
				return false;
		} else if (!userAdd01.equals(other.userAdd01))
			return false;
		if (userAdd02 == null) {
			if (other.userAdd02 != null)
				return false;
		} else if (!userAdd02.equals(other.userAdd02))
			return false;
		if (userCell == null) {
			if (other.userCell != null)
				return false;
		} else if (!userCell.equals(other.userCell))
			return false;
		if (userClass != other.userClass)
			return false;
		if (userConsent01 != other.userConsent01)
			return false;
		if (userConsent02 != other.userConsent02)
			return false;
		if (userConsent03 != other.userConsent03)
			return false;
		if (userEmail == null) {
			if (other.userEmail != null)
				return false;
		} else if (!userEmail.equals(other.userEmail))
			return false;
		if (userID == null) {
			if (other.userID != null)
				return false;
		} else if (!userID.equals(other.userID))
			return false;
		if (userName == null) {
			if (other.userName != null)
				return false;
		} else if (!userName.equals(other.userName))
			return false;
		if (userPW == null) {
			if (other.userPW != null)
				return false;
		} else if (!userPW.equals(other.userPW))
			return false;
		return true;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPW() {
		return userPW;
	}
	public void setUserPW(String userPW) {
		this.userPW = userPW;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserCell() {
		return userCell;
	}
	public void setUserCell(String userCell) {
		this.userCell = userCell;
	}
	public String getUserAdd01() {
		return userAdd01;
	}
	public void setUserAdd01(String userAdd01) {
		this.userAdd01 = userAdd01;
	}
	public String getUserAdd02() {
		return userAdd02;
	}
	public void setUserAdd02(String userAdd02) {
		this.userAdd02 = userAdd02;
	}
	public int getUserClass() {
		return userClass;
	}
	public void setUserClass(int userClass) {
		this.userClass = userClass;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public int getUserConsent01() {
		return userConsent01;
	}
	public void setUserConsent01(int userConsent01) {
		this.userConsent01 = userConsent01;
	}
	public int getUserConsent02() {
		return userConsent02;
	}
	public void setUserConsent02(int userConsent02) {
		this.userConsent02 = userConsent02;
	}
	public int getUserConsent03() {
		return userConsent03;
	}
	public void setUserConsent03(int userConsent03) {
		this.userConsent03 = userConsent03;
	}
	public int getSt() {
		return st;
	}
	public void setSt(int st) {
		this.st = st;
	}
	public String getUsRn() {
		return usRn;
	}
	public void setUsRn(String usRn) {
		this.usRn = usRn;
	}
	public Date getRegiDate() {
		return regiDate;
	}
	public void setRegiDate(Date regiDate) {
		this.regiDate = regiDate;
	}
	public String getBoNumber() {
		return boNumber;
	}
	public void setBoNumber(String boNumber) {
		this.boNumber = boNumber;
	}
	public String getBoName() {
		return boName;
	}
	public void setBoName(String boName) {
		this.boName = boName;
	}
	public String getBoRrn() {
		return boRrn;
	}
	public void setBoRrn(String boRrn) {
		this.boRrn = boRrn;
	}
	public String getBoPhone() {
		return boPhone;
	}
	public void setBoPhone(String boPhone) {
		this.boPhone = boPhone;
	}
	public String getBoCell() {
		return boCell;
	}
	public void setBoCell(String boCell) {
		this.boCell = boCell;
	}
	public String getBoMail() {
		return boMail;
	}
	public void setBoMail(String boMail) {
		this.boMail = boMail;
	}
	public int getBoLicense() {
		return boLicense;
	}
	public void setBoLicense(int boLicense) {
		this.boLicense = boLicense;
	}
	public String getBoAdd01() {
		return boAdd01;
	}
	public void setBoAdd01(String boAdd01) {
		this.boAdd01 = boAdd01;
	}
	public String getBoAdd02() {
		return boAdd02;
	}
	public void setBoAdd02(String boAdd02) {
		this.boAdd02 = boAdd02;
	}
	public long getBoAcc() {
		return boAcc;
	}
	public void setBoAcc(long boAcc) {
		this.boAcc = boAcc;
	}
	public String getBoAccBack() {
		return boAccBack;
	}
	public void setBoAccBack(String boAccBack) {
		this.boAccBack = boAccBack;
	}
	public String getTob01() {
		return tob01;
	}
	public void setTob01(String tob01) {
		this.tob01 = tob01;
	}
	public String getTob02() {
		return tob02;
	}
	public void setTob02(String tob02) {
		this.tob02 = tob02;
	}
	public String getCpName() {
		return cpName;
	}
	public void setCpName(String cpName) {
		this.cpName = cpName;
	}
	public String getAssUsRn() {
		return assUsRn;
	}
	public void setAssUsRn(String assUsRn) {
		this.assUsRn = assUsRn;
	}
	public String getEquipType() {
		return equipType;
	}
	public void setEquipType(String equipType) {
		this.equipType = equipType;
	}
	public String getEquipOption() {
		return equipOption;
	}
	public void setEquipOption(String equipOption) {
		this.equipOption = equipOption;
	}
	public String getEquipClass() {
		return equipClass;
	}
	public void setEquipClass(String equipClass) {
		this.equipClass = equipClass;
	}
	
	
}
