package Model.DTO.care;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;



@SuppressWarnings("serial")
public class CleanRevDTO implements Serializable{
	String cleanrevNo;
	String userNo;
	String employeeNo;
	Integer cleanfeeSize;
	String cleanrevDemand;
	
	Date cleanrevDate;
	Timestamp cleanrevTime;
	String cleanrevAddr;
	
	
	public String getCleanrevNo() {
		return cleanrevNo;
	}
	public void setCleanrevNo(String cleanrevNo) {
		this.cleanrevNo = cleanrevNo;
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public String getEmployeeNo() {
		return employeeNo;
	}
	public void setEmployeeNo(String employeeNo) {
		this.employeeNo = employeeNo;
	}
	public Integer getCleanfeeSize() {
		return cleanfeeSize;
	}
	public void setCleanfeeSize(Integer cleanfeeSize) {
		this.cleanfeeSize = cleanfeeSize;
	}
	public String getCleanrevDemand() {
		return cleanrevDemand;
	}
	public void setCleanrevDemand(String cleanrevDemand) {
		this.cleanrevDemand = cleanrevDemand;
	}
	public Date getCleanrevDate() {
		return cleanrevDate;
	}
	public void setCleanrevDate(Date cleanrevDate) {
		this.cleanrevDate = cleanrevDate;
	}
	public Timestamp getCleanrevTime() {
		return cleanrevTime;
	}
	public void setCleanrevTime(Timestamp cleanrevTime) {
		this.cleanrevTime = cleanrevTime;
	}
	public String getCleanrevAddr() {
		return cleanrevAddr;
	}
	public void setCleanrevAddr(String cleanrevAddr) {
		this.cleanrevAddr = cleanrevAddr;
	}
	
	

}
