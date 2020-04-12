package Model.DTO.care;

import java.io.Serializable;

@SuppressWarnings("serial")
public class EmpLogin implements Serializable{
	String empNo;
	String empJumin;
	String empClass;
	public String getEmpClass() {
		return empClass;
	}
	public void setEmpClass(String empClass) {
		this.empClass = empClass;
	}
	public String getEmpNo() {
		return empNo;
	}
	public void setEmpNo(String empNo) {
		this.empNo = empNo;
	}
	public String getEmpJumin() {
		return empJumin;
	}
	public void setEmpJumin(String empJumin) {
		this.empJumin = empJumin;
	}
	

}
