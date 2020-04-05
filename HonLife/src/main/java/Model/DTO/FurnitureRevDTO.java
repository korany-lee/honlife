package Model.DTO;

import java.io.Serializable;
import java.sql.Timestamp;

@SuppressWarnings("serial")
public class FurnitureRevDTO  implements Serializable{
	String furnitureRevNo;
	String roomRevNo;
	String userNo;
	String roomNo;
	Timestamp furnitureRevStartDate;
	Timestamp furnitureRevEndDate;
	String furnitureNo;
	
	
	
	public String getFurnitureNo() {
		return furnitureNo;
	}
	public void setFurnitureNo(String furnitureNo) {
		this.furnitureNo = furnitureNo;
	}
	public String getFurnitureRevNo() {
		return furnitureRevNo;
	}
	public void setFurnitureRevNo(String furnitureRevNo) {
		this.furnitureRevNo = furnitureRevNo;
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
	public Timestamp getFurnitureRevStartDate() {
		return furnitureRevStartDate;
	}
	public void setFurnitureRevStartDate(Timestamp furnitureRevStartDate) {
		this.furnitureRevStartDate = furnitureRevStartDate;
	}
	public Timestamp getFurnitureRevEndDate() {
		return furnitureRevEndDate;
	}
	public void setFurnitureRevEndDate(Timestamp furnitureRevEndDate) {
		this.furnitureRevEndDate = furnitureRevEndDate;
	}
	
	
}
