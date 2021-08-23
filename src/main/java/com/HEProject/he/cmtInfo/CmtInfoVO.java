package com.HEProject.he.cmtInfo;

import java.io.Serializable;
import java.sql.Date;

public class CmtInfoVO implements Serializable{
	String cmtCode;
	String refCode;
	Date cmtDate;
	String cmtContent;
	String cmtUsRn;
	public CmtInfoVO() {}
	@Override
	public String toString() {
		return "CmtInfoVO [cmtCode=" + cmtCode + ", refCode=" + refCode + ", cmtDate=" + cmtDate + ", cmtContent="
				+ cmtContent + ", cmtUsRn=" + cmtUsRn + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cmtCode == null) ? 0 : cmtCode.hashCode());
		result = prime * result + ((cmtContent == null) ? 0 : cmtContent.hashCode());
		result = prime * result + ((cmtDate == null) ? 0 : cmtDate.hashCode());
		result = prime * result + ((cmtUsRn == null) ? 0 : cmtUsRn.hashCode());
		result = prime * result + ((refCode == null) ? 0 : refCode.hashCode());
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
		CmtInfoVO other = (CmtInfoVO) obj;
		if (cmtCode == null) {
			if (other.cmtCode != null)
				return false;
		} else if (!cmtCode.equals(other.cmtCode))
			return false;
		if (cmtContent == null) {
			if (other.cmtContent != null)
				return false;
		} else if (!cmtContent.equals(other.cmtContent))
			return false;
		if (cmtDate == null) {
			if (other.cmtDate != null)
				return false;
		} else if (!cmtDate.equals(other.cmtDate))
			return false;
		if (cmtUsRn == null) {
			if (other.cmtUsRn != null)
				return false;
		} else if (!cmtUsRn.equals(other.cmtUsRn))
			return false;
		if (refCode == null) {
			if (other.refCode != null)
				return false;
		} else if (!refCode.equals(other.refCode))
			return false;
		return true;
	}
	public String getCmtCode() {
		return cmtCode;
	}
	public void setCmtCode(String cmtCode) {
		this.cmtCode = cmtCode;
	}
	public String getRefCode() {
		return refCode;
	}
	public void setRefCode(String refCode) {
		this.refCode = refCode;
	}
	public Date getCmtDate() {
		return cmtDate;
	}
	public void setCmtDate(Date cmtDate) {
		this.cmtDate = cmtDate;
	}
	public String getCmtContent() {
		return cmtContent;
	}
	public void setCmtContent(String cmtContent) {
		this.cmtContent = cmtContent;
	}
	public String getCmtUsRn() {
		return cmtUsRn;
	}
	public void setCmtUsRn(String cmtUsRn) {
		this.cmtUsRn = cmtUsRn;
	}
	
	
	
	
	
	
	
}
