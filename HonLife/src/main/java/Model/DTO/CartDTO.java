package Model.DTO;

import java.io.Serializable;

@SuppressWarnings("serial")
public class CartDTO implements Serializable{
	private String userNo;
	private String productNo;
	private Integer basketAmount;
	
	private MemberDTO member;
	
	private ProductDTO product;


	public MemberDTO getMember() {
		return member;
	}
	public void setMember(MemberDTO member) {
		this.member = member;
	}
	public ProductDTO getProduct() {
		return product;
	}
	public void setProduct(ProductDTO product) {
		this.product = product;
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
