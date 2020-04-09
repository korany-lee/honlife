package Model.DTO.care;

import java.util.Date;

public class RevChkDTO {
	public Integer getRevChk() {
		return revChk;
	}
	public void setRevChk(Integer revChk) {
		this.revChk = revChk;
	}
	public Date getCleanrevDate() {
		return cleanrevDate;
	}
	public void setCleanrevDate(Date cleanrevDate) {
		this.cleanrevDate = cleanrevDate;
	}
	public String getEmployeeNo() {
		return employeeNo;
	}
	public void setEmployeeNo(String employeeNo) {
		this.employeeNo = employeeNo;
	}
	Integer revChk;
	Date cleanrevDate;
	String employeeNo;
	
}
