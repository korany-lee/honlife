package Model.DTO.care;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

import Model.DTO.MemberDTO;



@SuppressWarnings("serial")
public class CleanRevDTO implements Serializable{

	


	
	public Timestamp getCleanrevDate() {
		return cleanrevDate;
	}
	public void setCleanrevDate(Timestamp cleanrevDate) {
		this.cleanrevDate = cleanrevDate;
	}
	public MemberDTO getMemDTO() {
		return memDTO;
	}
	public void setMemDTO(MemberDTO memDTO) {
		this.memDTO = memDTO;
	}
	public EmployeeDTO getEmpDTO() {
		return empDTO;
	}
	public void setEmpDTO(EmployeeDTO empDTO) {
		this.empDTO = empDTO;
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
	Timestamp cleanrevDate;
	String cleanrevTime;
	String cleanrevAddr;
    Integer revPay;
    Integer revCount;
    Integer revChk;
    public Integer getRevChk() {
		return revChk;
	}
	public void setRevChk(Integer revChk) {
		this.revChk = revChk;
	}
	public Integer getRevCount() {
		return revCount;
	}
	public void setRevCount(Integer revCount) {
		this.revCount = revCount;
	}
	MemberDTO memDTO;
    EmployeeDTO empDTO;
    RevChkDTO rcDTO;
    
	
	public RevChkDTO getRcDTO() {
		return rcDTO;
	}
	public void setRcDTO(RevChkDTO rcDTO) {
		this.rcDTO = rcDTO;
	}
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


	public String getCleanrevAddr() {
		return cleanrevAddr;
	}
	public void setCleanrevAddr(String cleanrevAddr) {
		this.cleanrevAddr = cleanrevAddr;
	}

	public Integer getRevPay() {
		return revPay;
	}
	public void setRevPay(Integer revPay) {
		this.revPay = revPay;
	}
	

}
