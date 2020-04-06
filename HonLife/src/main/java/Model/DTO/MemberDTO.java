package Model.DTO;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

@SuppressWarnings("serial")
public class MemberDTO implements Serializable{

	String userNo;
	String userId;
	String userPw;
	String userName;
	String userPh;
	String userEmail;
	String userAddr;
	String userZone;
	String userGender;
	Date userBirth;
	Timestamp userResist;
	Timestamp connectDate;

	String role;
	public MemberDTO() {};
	
	public MemberDTO(String userNo, String userId, String userPw, String userName, String userPh, String userEmail,
			String userAddr, String userZone, String userGender, Date userBirth, Timestamp userResist,
			Timestamp connectDate, String role) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.userPh = userPh;
		this.userEmail = userEmail;
		this.userAddr = userAddr;
		this.userZone = userZone;
		this.userGender = userGender;
		this.userBirth = userBirth;
		this.userResist = userResist;
		this.connectDate = connectDate;
		this.role = role;
	}

	
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserZone() {
		return userZone;
	}
	public void setUserZone(String userZone) {
		this.userZone = userZone;
	}
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
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserAddr() {
		return userAddr;
	}
	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public Date getUserBirth() {
		return userBirth;
	}
	public void setUserBirth(Date userBirth) {
		this.userBirth = userBirth;
	}
	public Timestamp getUserResist() {
		return userResist;
	}
	public void setUserResist(Timestamp userResist) {
		this.userResist = userResist;
	}
	public Timestamp getConnectDate() {
		return connectDate;
	}
	public void setConnectDate(Timestamp connectDate) {
		this.connectDate = connectDate;
	}
	
}
