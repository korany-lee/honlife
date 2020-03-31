package command.shop;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

public class ProductCommand {
	private String productNo;
	private String productName;
	private String productType;
	private String productDetailtype;
	MultipartFile [] productPhoto;
	private Integer productPrice;
	private Integer productCount;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	Date productUsedate;
	
	
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
	public MultipartFile[] getProductPhoto() {
		return productPhoto;
	}
	public void setProductPhoto(MultipartFile[] productPhoto) {
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
	public Date getProductUsedate() {
		return productUsedate;
	}
	public void setProductUsedate(Date productUsedate) {
		this.productUsedate = productUsedate;
	}
	
}
