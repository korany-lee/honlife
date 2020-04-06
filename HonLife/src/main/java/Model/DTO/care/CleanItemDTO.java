package Model.DTO.care;

import java.io.Serializable;
import java.util.List;

@SuppressWarnings("serial")
public class CleanItemDTO  implements Serializable{
	
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

public List<String> getCleanitemNo() {
		return cleanitemNo;
	}
	public void setCleanitemNo(List<String> cleanitemNo) {
		this.cleanitemNo = cleanitemNo;
	}
	public List<String> getCleanitemName() {
		return cleanitemName;
	}
	public void setCleanitemName(List<String> cleanitemName) {
		this.cleanitemName = cleanitemName;
	}
	public List<String> getCleanitemPrice() {
		return cleanitemPrice;
	}
	public void setCleanitemPrice(List<String> cleanitemPrice) {
		this.cleanitemPrice = cleanitemPrice;
	}
	public List<String> getCleanitemQty() {
		return cleanitemQty;
	}
	public void setCleanitemQty(List<String> cleanitemQty) {
		this.cleanitemQty = cleanitemQty;
	}
	public List<String> getCleanitemSumprice() {
		return cleanitemSumprice;
	}
	public void setCleanitemSumprice(List<String> cleanitemSumprice) {
		this.cleanitemSumprice = cleanitemSumprice;
	}
List<String> cleanitemNo;
List<String> cleanitemName;
List<String> cleanitemPrice;
List<String> cleanitemQty;
List<String> cleanitemSumprice;

String employeeNo;
String cleanorderNo;



}
