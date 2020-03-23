package Command.Stay.Room;

import org.springframework.web.multipart.MultipartFile;

public class RoomCommand {
	private String roomNo;
	private Integer roomSize;
	private Integer rentalFee;
	private String roomView;
	private Integer callNum;
	private String roomExtra;
	MultipartFile [] roomImage;
	private String roomContent;
	public String getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}
	public Integer getRoomSize() {
		return roomSize;
	}
	public void setRoomSize(Integer roomSize) {
		this.roomSize = roomSize;
	}
	public Integer getRentalFee() {
		return rentalFee;
	}
	public void setRentalFee(Integer rentalFee) {
		this.rentalFee = rentalFee;
	}
	public String getRoomView() {
		return roomView;
	}
	public void setRoomView(String roomView) {
		this.roomView = roomView;
	}
	public Integer getCallNum() {
		return callNum;
	}
	public void setCallNum(Integer callNum) {
		this.callNum = callNum;
	}
	public String getRoomExtra() {
		return roomExtra;
	}
	public void setRoomExtra(String roomExtra) {
		this.roomExtra = roomExtra;
	}
	public MultipartFile[] getRoomImage() {
		return roomImage;
	}
	public void setRoomImage(MultipartFile[] roomImage) {
		this.roomImage = roomImage;
	}
	public String getRoomContent() {
		return roomContent;
	}
	public void setRoomContent(String roomContent) {
		this.roomContent = roomContent;
	}
	
	
	
}
