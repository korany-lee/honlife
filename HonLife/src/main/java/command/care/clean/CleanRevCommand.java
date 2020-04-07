package command.care.clean;

import java.sql.Timestamp;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class CleanRevCommand {
	public String getRevPay() {
		return revPay;
	}
	public void setRevPay(String revPay) {
		this.revPay = revPay;
	}
	public String getCleanrevTime() {
		return cleanrevTime;
	}
	public void setCleanrevTime(String cleanrevTime) {
		this.cleanrevTime = cleanrevTime;
	}
	String cleanrevNo;
	String userNo;
	String employeeNo;
	Integer cleanfeeSize;
	String cleanrevDemand;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	Date cleanrevDate;
	String cleanrevTime;
	String cleanrevAddr;
	String revPay;
	
	
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

	public String getCleanrevAddr() {
		return cleanrevAddr;
	}
	public void setCleanrevAddr(String cleanrevAddr) {
		this.cleanrevAddr = cleanrevAddr;
	}
}
