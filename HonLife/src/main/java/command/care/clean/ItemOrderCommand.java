package command.care.clean;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

public class ItemOrderCommand {
	public String getEmployeeNo() {
		return employeeNo;
	}
	public void setEmployeeNo(String employeeNo) {
		this.employeeNo = employeeNo;
	}
	String employeeNo;
	String cleanorderCompanyName;
	String cleanorderPostcode;
	String cleanorderAddress;
	String cleanorderAddrdetail;
	Integer cleanorderCompanyPh;
	Integer cleanorderCompanyFax;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	Date cleanorderDate;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	Date cleanorderReceiveDate;
	Integer allsum;

	String moveHow;
	String movePay;

	
public String getCleanorderCompanyName() {
		return cleanorderCompanyName;
	}
	public void setCleanorderCompanyName(String cleanorderCompanyName) {
		this.cleanorderCompanyName = cleanorderCompanyName;
	}
	public String getCleanorderPostcode() {
		return cleanorderPostcode;
	}
	public void setCleanorderPostcode(String cleanorderPostcode) {
		this.cleanorderPostcode = cleanorderPostcode;
	}
	public String getCleanorderAddress() {
		return cleanorderAddress;
	}
	public void setCleanorderAddress(String cleanorderAddress) {
		this.cleanorderAddress = cleanorderAddress;
	}
	public String getCleanorderAddrdetail() {
		return cleanorderAddrdetail;
	}
	public void setCleanorderAddrdetail(String cleanorderAddrdetail) {
		this.cleanorderAddrdetail = cleanorderAddrdetail;
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
	public Integer getAllsum() {
		return allsum;
	}
	public void setAllsum(Integer allsum) {
		this.allsum = allsum;
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


}
