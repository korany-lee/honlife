package command.care.clean;

import java.util.Date;
import java.util.List;

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
	Date cleanorderDate;
	Date cleanorderReceiveDate;
	Integer allsum;
	List<String> cleanitemName;
	List<String> cleanitemPrice;
	List<String> cleanitemQty;
	List<String> cleanitemSum;
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
	public List<String> getCleanitemSum() {
		return cleanitemSum;
	}
	public void setCleanitemSum(List<String> cleanitemSum) {
		this.cleanitemSum = cleanitemSum;
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
