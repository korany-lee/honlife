package command.care.clean;

import java.sql.Timestamp;

public class LaundryRevCommand {
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPh() {
		return userPh;
	}
	public void setUserPh(String userPh) {
		this.userPh = userPh;
	}
	public String getLaundryrevDate() {
		return laundryrevDate;
	}
	public void setLaundryrevDate(String laundryrevDate) {
		this.laundryrevDate = laundryrevDate;
	}
	public String getLaundryrevRecdate() {
		return laundryrevRecdate;
	}
	public void setLaundryrevRecdate(String laundryrevRecdate) {
		this.laundryrevRecdate = laundryrevRecdate;
	}
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

	public String getLaundryrevAddr() {
		return laundryrevAddr;
	}
	public void setLaundryrevAddr(String laundryrevAddr) {
		this.laundryrevAddr = laundryrevAddr;
	}
	String laundryrevNo;
	String userNo;
	String laundryrevDate; 
	String laundryrevRecdate;
	String laundryrevAddr;
	String userName;
	String userPh;
	

}
