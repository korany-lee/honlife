package Model.DTO.care;

import java.io.Serializable;
import java.util.List;
@SuppressWarnings("serial")
public class CleanitemInsert implements Serializable{
	
	public String getCleanitemrealQty() {
		return cleanitemrealQty;
	}
	public void setCleanitemrealQty(String cleanitemrealQty) {
		this.cleanitemrealQty = cleanitemrealQty;
	}
	public String getCleanorderNo() {
		return cleanorderNo;
	}
	public void setCleanorderNo(String cleanorderNo) {
		this.cleanorderNo = cleanorderNo;
	}
	public String getEmployeeNo() {
		return employeeNo;
	}
	public void setEmployeeNo(String employeeNo) {
		this.employeeNo = employeeNo;
	}
	public String getCleanitemNo() {
		return cleanitemNo;
	}
	public void setCleanitemNo(String cleanitemNo) {
		this.cleanitemNo = cleanitemNo;
	}
	public String getCleanitemName() {
		return cleanitemName;
	}
	public void setCleanitemName(String cleanitemName) {
		this.cleanitemName = cleanitemName;
	}
	public String getCleanitemPrice() {
		return cleanitemPrice;
	}
	public void setCleanitemPrice(String cleanitemPrice) {
		this.cleanitemPrice = cleanitemPrice;
	}
	public String getCleanitemQty() {
		return cleanitemQty;
	}
	public void setCleanitemQty(String cleanitemQty) {
		this.cleanitemQty = cleanitemQty;
	}
	public String getCleanitemSumprice() {
		return cleanitemSumprice;
	}
	public void setCleanitemSumprice(String cleanitemSumprice) {
		this.cleanitemSumprice = cleanitemSumprice;
	}
	String cleanitemNo;
	String cleanitemName;
	String cleanitemPrice;
	String cleanitemQty;
	String cleanitemrealQty;
	String cleanitemSumprice;
	String employeeNo;
	String cleanorderNo;
	

	
}
