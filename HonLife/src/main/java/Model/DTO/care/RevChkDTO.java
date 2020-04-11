package Model.DTO.care;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
@SuppressWarnings("serial")
public class RevChkDTO implements Serializable{
	public Integer getRevChk() {
		return revChk;
	}
	public void setRevChk(Integer revChk) {
		this.revChk = revChk;
	}
	
	public Timestamp getCleanrevDate() {
		return cleanrevDate;
	}
	public void setCleanrevDate(Timestamp cleanrevDate) {
		this.cleanrevDate = cleanrevDate;
	}

	public String getCleanrevTime() {
		return cleanrevTime;
	}
	public void setCleanrevTime(String cleanrevTime) {
		this.cleanrevTime = cleanrevTime;
	}
	public String getEmployeeNo() {
		return employeeNo;
	}
	public void setEmployeeNo(String employeeNo) {
		this.employeeNo = employeeNo;
	}
	Integer revCount;
	public Integer getRevCount() {
		return revCount;
	}
	public void setRevCount(Integer revCount) {
		this.revCount = revCount;
	}
	Integer revChk;
	Timestamp cleanrevDate;
	String employeeNo;
	String cleanrevTime;
	
}
