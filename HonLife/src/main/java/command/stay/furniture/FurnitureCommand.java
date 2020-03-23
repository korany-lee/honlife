package command.stay.furniture;

import java.sql.Date;
import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

public class FurnitureCommand {
	String furnitureNo;
	String furnitureType;
	Integer rentalFee;
	String funitureColor;
	String furnitureName;
	Date buyDate;
	MultipartFile [] furnitureImage;
	String furnitureContent;
	String furnitureExtra;
	public String getFurnitureNo() {
		return furnitureNo;
	}
	public void setFurnitureNo(String furnitureNo) {
		this.furnitureNo = furnitureNo;
	}
	public String getFurnitureType() {
		return furnitureType;
	}
	public void setFurnitureType(String furnitureType) {
		this.furnitureType = furnitureType;
	}
	public Integer getRentalFee() {
		return rentalFee;
	}
	public void setRentalFee(Integer rentalFee) {
		this.rentalFee = rentalFee;
	}
	public String getFunitureColor() {
		return funitureColor;
	}
	public void setFunitureColor(String funitureColor) {
		this.funitureColor = funitureColor;
	}
	public String getFurnitureName() {
		return furnitureName;
	}
	public void setFurnitureName(String furnitureName) {
		this.furnitureName = furnitureName;
	}
	public Date getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(Date buyDate) {
		this.buyDate = buyDate;
	}
	public MultipartFile[] getFurnitureImage() {
		return furnitureImage;
	}
	public void setFurnitureImage(MultipartFile[] furnitureImage) {
		this.furnitureImage = furnitureImage;
	}
	public String getFurnitureContent() {
		return furnitureContent;
	}
	public void setFurnitureContent(String furnitureContent) {
		this.furnitureContent = furnitureContent;
	}
	public String getFurnitureExtra() {
		return furnitureExtra;
	}
	public void setFurnitureExtra(String furnitureExtra) {
		this.furnitureExtra = furnitureExtra;
	}
	
	
}
