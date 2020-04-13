package Model.DTO;

import java.io.Serializable;

@SuppressWarnings("serial")
public class CartDTO implements Serializable{
	private String productNo;
	private Integer basketAmount;
	private String userNo;
	private String productName;
	private Integer productPrice;
	private String productPhoto;
	

	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public Integer getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(Integer productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductPhoto() {
		return productPhoto;
	}
	public void setProductPhoto(String productPhoto) {
		this.productPhoto = productPhoto;
	}
	public String getProductNo() {
		return productNo;
	}
	public void setProductNo(String productNo) {
		this.productNo = productNo;
	}
	public Integer getBasketAmount() {
		return basketAmount;
	}
	public void setBasketAmount(Integer basketAmount) {
		this.basketAmount = basketAmount;
	}
	
	
}
