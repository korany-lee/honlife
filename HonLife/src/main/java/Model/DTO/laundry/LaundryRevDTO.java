package Model.DTO.laundry;

import java.io.Serializable;
import java.sql.Timestamp;

@SuppressWarnings("serial")
public class LaundryRevDTO implements Serializable{
	public String getLaundryrevNo() {
		return laundryrevNo;
	}
	public void setLaundryrevNo(String laundryrevNo) {
		this.laundryrevNo = laundryrevNo;
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public Timestamp getLaundryrevDate() {
		return laundryrevDate;
	}
	public void setLaundryrevDate(Timestamp laundryrevDate) {
		this.laundryrevDate = laundryrevDate;
	}
	public Timestamp getLaundryrevRecdate() {
		return laundryrevRecdate;
	}
	public void setLaundryrevRecdate(Timestamp laundryrevRecdate) {
		this.laundryrevRecdate = laundryrevRecdate;
	}
	public String getLaundryrevAddr() {
		return laundryrevAddr;
	}
	public void setLaundryrevAddr(String laundryrevAddr) {
		this.laundryrevAddr = laundryrevAddr;
	}
	String laundryrevNo;
	String userNo;
	Timestamp laundryrevDate; 
	Timestamp laundryrevRecdate;
	String laundryrevAddr;

}
