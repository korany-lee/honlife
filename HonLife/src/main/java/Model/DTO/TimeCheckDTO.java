package Model.DTO;

import java.io.Serializable;
import java.sql.Timestamp;


@SuppressWarnings("serial")
public class TimeCheckDTO implements  Serializable{
	Timestamp start;
	Timestamp end;
	String roomNo;
	public Timestamp getStart() {
		return start;
	}
	public void setStart(Timestamp start) {
		this.start = start;
	}
	public Timestamp getEnd() {
		return end;
	}
	public void setEnd(Timestamp end) {
		this.end = end;
	}
	public String getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}
	
	
}
