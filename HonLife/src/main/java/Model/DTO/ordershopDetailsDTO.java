package Model.DTO;

public class ordershopDetailsDTO {
/*
ORDER_DETAILS_NUM NOT NULL NUMBER
ORDER_NO          NOT NULL VARCHAR2(50) 
GDS_NUM           NOT NULL NUMBER       
CART_STOCK        NOT NULL NUMBER      
 */
	
	private int orderDetailsNum;
	private String orderNo;
	private int gdsNum;
	private int cartStock;
	
	
	public int getOrderDetailsNum() {
		return orderDetailsNum;
	}
	public void setOrderDetailsNum(int orderDetailsNum) {
		this.orderDetailsNum = orderDetailsNum;
	}
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	public int getGdsNum() {
		return gdsNum;
	}
	public void setGdsNum(int gdsNum) {
		this.gdsNum = gdsNum;
	}
	public int getCartStock() {
		return cartStock;
	}
	public void setCartStock(int cartStock) {
		this.cartStock = cartStock;
	}
	
	


}
