package Model.DTO;

import java.util.Date;

public class OrderShopDTO {
/*
ORDER_NO   NOT NULL VARCHAR2(25)  
USER_NO    NOT NULL VARCHAR2(20)  
ORDER_REC           VARCHAR2(25)  
USER_ADDR           VARCHAR2(150) 
USER_ZONE           VARCHAR2(20)  
USER_PH             VARCHAR2(20)  
AMOUNT              NUMBER        
ORDER_DATE          DATE   
 */
	private String orderNo;
	private String userNo;
	private String orderRec;
	private String userAddr;
	private String userZone;
	private String userPh;
	private int amount;
	private Date orderDate;
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public String getOrderRec() {
		return orderRec;
	}
	public void setOrderRec(String orderRec) {
		this.orderRec = orderRec;
	}
	public String getUserAddr() {
		return userAddr;
	}
	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}
	public String getUserZone() {
		return userZone;
	}
	public void setUserZone(String userZone) {
		this.userZone = userZone;
	}
	public String getUserPh() {
		return userPh;
	}
	public void setUserPh(String userPh) {
		this.userPh = userPh;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	
	
}
