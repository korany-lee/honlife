package Model.DTO.care;

import java.io.Serializable;

@SuppressWarnings("serial")
public class EmployeeDTO implements Serializable{
	
	
	public String getEmployeeAddrDetail() {
		return employeeAddrDetail;
	}
	public void setEmployeeAddrDetail(String employeeAddrDetail) {
		this.employeeAddrDetail = employeeAddrDetail;
	}
	String employeeNo;
	String employeeName;
	String employeeWorkField;
	Integer employeeCallnum;
	Integer employeeJumin;
	String employeePhoto;
	Integer employeeScore;	
	String employeeBad;
	String employeeAddr;
	String employeeGender;
	Integer employeePh;
	String employeeAddrPost;
	String employeeAddrDetail;
	
	

	
	
	public String getEmployeeAddr() {
		return employeeAddr;
	}
	public void setEmployeeAddr(String employeeAddr) {
		this.employeeAddr = employeeAddr;
	}
	public String getEmployeeGender() {
		return employeeGender;
	}
	public void setEmployeeGender(String employeeGender) {
		this.employeeGender = employeeGender;
	}
	public Integer getEmployeePh() {
		return employeePh;
	}
	public void setEmployeePh(Integer employeePh) {
		this.employeePh = employeePh;
	}
	public String getEmployeeAddrPost() {
		return employeeAddrPost;
	}
	public void setEmployeeAddrPost(String employeeAddrPost) {
		this.employeeAddrPost = employeeAddrPost;
	}
	
	public String getEmployeeNo() {
		return employeeNo;
	}
	public void setEmployeeNo(String employeeNo) {
		this.employeeNo = employeeNo;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getEmployeeWorkField() {
		return employeeWorkField;
	}
	public void setEmployeeWorkField(String employeeWorkField) {
		this.employeeWorkField = employeeWorkField;
	}
	public Integer getEmployeeCallnum() {
		return employeeCallnum;
	}
	public void setEmployeeCallnum(Integer employeeCallnum) {
		this.employeeCallnum = employeeCallnum;
	}
	public Integer getEmployeeJumin() {
		return employeeJumin;
	}
	public void setEmployeeJumin(Integer employeeJumin) {
		this.employeeJumin = employeeJumin;
	}
	public String getEmployeePhoto() {
		return employeePhoto;
	}
	public void setEmployeePhoto(String employeePhoto) {
		this.employeePhoto = employeePhoto;
	}
	public Integer getEmployeeScore() {
		return employeeScore;
	}
	public void setEmployeeScore(Integer employeeScore) {
		this.employeeScore = employeeScore;
	}
	public String getEmployeeBad() {
		return employeeBad;
	}
	public void setEmployeeBad(String employeeBad) {
		this.employeeBad = employeeBad;
	}
	
	

}
