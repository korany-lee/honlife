package Model.DTO;

public class CartDTO {
	private Integer cartNo;
	private String userNo;
	private String productNo;
	private Integer basketAmount;
	
	public Integer getCartNo() {
		return cartNo;
	}
	public void setCartNo(Integer cartNo) {
		this.cartNo = cartNo;
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
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
