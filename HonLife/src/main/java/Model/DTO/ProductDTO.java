package Model.DTO;

import java.io.Serializable;
import java.sql.Timestamp;

@SuppressWarnings("serial")
public class ProductDTO implements Serializable{
	String productNo;
	String productName;
	String productType;
	String productDetailtype;
	String productPhoto;
	Integer productPrice;
	Integer productCount;
	Timestamp productUsedate;
	
	public String getProductNo() {
		return productNo;
	}
	public void setProductNo(String productNo) {
		this.productNo = productNo;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductType() {
		return productType;
	}
	public void setProductType(String productType) {
		this.productType = productType;
	}
	public String getProductDetailtype() {
		return productDetailtype;
	}
	public void setProductDetailtype(String productDetailtype) {
		this.productDetailtype = productDetailtype;
	}
	public String getProductPhoto() {
		return productPhoto;
	}
	public void setProductPhoto(String productPhoto) {
		this.productPhoto = productPhoto;
	}
	public Integer getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(Integer productPrice) {
		this.productPrice = productPrice;
	}
	public Integer getProductCount() {
		return productCount;
	}
	public void setProductCount(Integer productCount) {
		this.productCount = productCount;
	}
	public Timestamp getProductUsedate() {
		return productUsedate;
	}
	public void setProductUsedate(Timestamp productUsedate) {
		this.productUsedate = productUsedate;
	}
	
}
