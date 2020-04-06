package Model.DTO;

import java.io.Serializable;
import java.sql.Timestamp;

@SuppressWarnings("serial")
public class RoomRevDTO  implements Serializable{
	String roomRevNo;
	String userNo;
	String roomNo;
	String roomRevName;
	String roomLiveName;
	Timestamp roomRevStartDate;
	Timestamp roomRevEndDate;
	String roomRevState;
	Integer roomRevPrice;
	String roomRevPh;
	String roomRevEmail;
	String roomRevReviewChk;
	
	
	public String getRoomRevReviewChk() {
		return roomRevReviewChk;
	}
	public void setRoomRevReviewChk(String roomRevReviewChk) {
		this.roomRevReviewChk = roomRevReviewChk;
	}
	public String getRoomRevNo() {
		return roomRevNo;
	}
	public void setRoomRevNo(String roomRevNo) {
		this.roomRevNo = roomRevNo;
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public String getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}
	public String getRoomRevName() {
		return roomRevName;
	}
	public void setRoomRevName(String roomRevName) {
		this.roomRevName = roomRevName;
	}
	public String getRoomLiveName() {
		return roomLiveName;
	}
	public void setRoomLiveName(String roomLiveName) {
		this.roomLiveName = roomLiveName;
	}
	public Timestamp getRoomRevStartDate() {
		return roomRevStartDate;
	}
	public void setRoomRevStartDate(Timestamp roomRevStartDate) {
		this.roomRevStartDate = roomRevStartDate;
	}
	public Timestamp getRoomRevEndDate() {
		return roomRevEndDate;
	}
	public void setRoomRevEndDate(Timestamp roomRevEndDate) {
		this.roomRevEndDate = roomRevEndDate;
	}
	public String getRoomRevState() {
		return roomRevState;
	}
	public void setRoomRevState(String roomRevState) {
		this.roomRevState = roomRevState;
	}
	public Integer getRoomRevPrice() {
		return roomRevPrice;
	}
	public void setRoomRevPrice(Integer roomRevPrice) {
		this.roomRevPrice = roomRevPrice;
	}
	public String getRoomRevPh() {
		return roomRevPh;
	}
	public void setRoomRevPh(String roomRevPh) {
		this.roomRevPh = roomRevPh;
	}
	public String getRoomRevEmail() {
		return roomRevEmail;
	}
	public void setRoomRevEmail(String roomRevEmail) {
		this.roomRevEmail = roomRevEmail;
	}
	
	
}
