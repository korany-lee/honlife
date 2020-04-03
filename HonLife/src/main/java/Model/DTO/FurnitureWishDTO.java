package Model.DTO;

import java.io.Serializable;

@SuppressWarnings("serial")
public class FurnitureWishDTO implements Serializable {
	String furnitureNo;
	String userNo;
	String furnitureName;
	Integer furnitureRentalFee;
	String furniturePhoto;
	
	public String getFurnitureNo() {
		return furnitureNo;
	}
	public void setFurnitureNo(String furnitureNo) {
		this.furnitureNo = furnitureNo;
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	
}
