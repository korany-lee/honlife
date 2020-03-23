package Model.DTO;

import java.io.Serializable;
import java.sql.Timestamp;

@SuppressWarnings("serial")
public class FurnitureDTO implements Serializable {
	String furnitureNo;
	String furniturePhoto;
	String furnitureColor;
	String furnitureType;
	String furniturePoint;
	Timestamp furnitureBuydate;
	String furnitureState;
	Integer furnitureScore;
	Integer furnitureRentalFee;
	String furnitureUsage;
	String furnitureName;
	public String getFurnitureNo() {
		return furnitureNo;
	}
	public void setFurnitureNo(String furnitureNo) {
		this.furnitureNo = furnitureNo;
	}
	public String getFurniturePhoto() {
		return furniturePhoto;
	}
	public void setFurniturePhoto(String furniturePhoto) {
		this.furniturePhoto = furniturePhoto;
	}
	public String getFurnitureColor() {
		return furnitureColor;
	}
	public void setFurnitureColor(String furnitureColor) {
		this.furnitureColor = furnitureColor;
	}
	public String getFurnitureType() {
		return furnitureType;
	}
	public void setFurnitureType(String furnitureType) {
		this.furnitureType = furnitureType;
	}
	public String getFurniturePoint() {
		return furniturePoint;
	}
	public void setFurniturePoint(String furniturePoint) {
		this.furniturePoint = furniturePoint;
	}
	public Timestamp getFurnitureBuydate() {
		return furnitureBuydate;
	}
	public void setFurnitureBuydate(Timestamp furnitureBuydate) {
		this.furnitureBuydate = furnitureBuydate;
	}
	public String getFurnitureState() {
		return furnitureState;
	}
	public void setFurnitureState(String furnitureState) {
		this.furnitureState = furnitureState;
	}
	public Integer getFurnitureScore() {
		return furnitureScore;
	}
	public void setFurnitureScore(Integer furnitureScore) {
		this.furnitureScore = furnitureScore;
	}
	public Integer getFurnitureRentalFee() {
		return furnitureRentalFee;
	}
	public void setFurnitureRentalFee(Integer furnitureRentalFee) {
		this.furnitureRentalFee = furnitureRentalFee;
	}
	public String getFurnitureUsage() {
		return furnitureUsage;
	}
	public void setFurnitureUsage(String furnitureUsage) {
		this.furnitureUsage = furnitureUsage;
	}
	public String getFurnitureName() {
		return furnitureName;
	}
	public void setFurnitureName(String furnitureName) {
		this.furnitureName = furnitureName;
	}
	
}
