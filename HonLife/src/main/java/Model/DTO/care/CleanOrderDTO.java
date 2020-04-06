package Model.DTO.care;


import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class CleanOrderDTO implements Serializable{
	

	public CleanitemInsert getItemDTO() {
		return itemDTO;
	}
	public void setItemDTO(CleanitemInsert itemDTO) {
		this.itemDTO = itemDTO;
	}
	public String getOrderChk() {
		return orderChk;
	}
	public void setOrderChk(String orderChk) {
		this.orderChk = orderChk;
	}
	public EmployeeDTO getEmpDTO() {
		return empDTO;
	}
	public void setEmpDTO(EmployeeDTO empDTO) {
		this.empDTO = empDTO;
	}

	public String getMoveHow() {
		return moveHow;
	}
	public void setMoveHow(String moveHow) {
		this.moveHow = moveHow;
	}
	public String getMovePay() {
		return movePay;
	}
	public void setMovePay(String movePay) {
		this.movePay = movePay;
	}
	public Integer getAllsum() {
		return allsum;
	}
	public void setAllsum(Integer allsum) {
		this.allsum = allsum;
	}
	String employeeNo;  
	String cleanorderNo;
	Date cleanorderDate;
	Date cleanorderReceiveDate;
	String cleanorderCompanyName;
	

	String cleanorderAddress;
	Integer cleanorderCompanyPh;
	Integer cleanorderCompanyFax;
	String cleanorderPostcode;
	String cleanorderAddrdetail;
	Integer allsum;
	String moveHow;
	String movePay;
	EmployeeDTO empDTO;
	CleanitemInsert itemDTO;
	String orderChk;
	public String getCleanorderPostcode() {
		return cleanorderPostcode;
	}
	public void setCleanorderPostcode(String cleanorderPostcode) {
		this.cleanorderPostcode = cleanorderPostcode;
	}
	public String getCleanorderAddrdetail() {
		return cleanorderAddrdetail;
	}
	public void setCleanorderAddrdetail(String cleanorderAddrdetail) {
		this.cleanorderAddrdetail = cleanorderAddrdetail;
	}
 
	public String getEmployeeNo() {
		return employeeNo;
	}
	public void setEmployeeNo(String employeeNo) {
		this.employeeNo = employeeNo;
	}
	public String getCleanorderNo() {
		return cleanorderNo;
	}
	public void setCleanorderNo(String cleanorderNo) {
		this.cleanorderNo = cleanorderNo;
	}
	public Date getCleanorderDate() {
		return cleanorderDate;
	}
	public void setCleanorderDate(Date cleanorderDate) {
		this.cleanorderDate = cleanorderDate;
	}
	public Date getCleanorderReceiveDate() {
		return cleanorderReceiveDate;
	}
	public void setCleanorderReceiveDate(Date cleanorderReceiveDate) {
		this.cleanorderReceiveDate = cleanorderReceiveDate;
	}
	public String getCleanorderCompanyName() {
		return cleanorderCompanyName;
	}
	public void setCleanorderCompanyName(String cleanorderCompanyName) {
		this.cleanorderCompanyName = cleanorderCompanyName;
	}
	
	public String getCleanorderAddress() {
		return cleanorderAddress;
	}
	public void setCleanorderAddress(String cleanorderAddress) {
		this.cleanorderAddress = cleanorderAddress;
	}
	public Integer getCleanorderCompanyPh() {
		return cleanorderCompanyPh;
	}
	public void setCleanorderCompanyPh(Integer cleanorderCompanyPh) {
		this.cleanorderCompanyPh = cleanorderCompanyPh;
	}
	public Integer getCleanorderCompanyFax() {
		return cleanorderCompanyFax;
	}
	public void setCleanorderCompanyFax(Integer cleanorderCompanyFax) {
		this.cleanorderCompanyFax = cleanorderCompanyFax;
	}


}
