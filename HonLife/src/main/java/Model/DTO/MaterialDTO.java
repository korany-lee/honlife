package Model.DTO;

import java.io.Serializable;

@SuppressWarnings("serial")
public class MaterialDTO implements Serializable {
	String materialNo;
	String materialType;
	String materialQuantity;
	String materialUsage;
	String materialPhoto;
	public String getMaterialNo() {
		return materialNo;
	}
	public void setMaterialNo(String materialNo) {
		this.materialNo = materialNo;
	}
	public String getMaterialType() {
		return materialType;
	}
	public void setMaterialType(String materialType) {
		this.materialType = materialType;
	}
	public String getMaterialQuantity() {
		return materialQuantity;
	}
	public void setMaterialQuantity(String materialQuantity) {
		this.materialQuantity = materialQuantity;
	}
	public String getMaterialUsage() {
		return materialUsage;
	}
	public void setMaterialUsage(String materialUsage) {
		this.materialUsage = materialUsage;
	}
	public String getMaterialPhoto() {
		return materialPhoto;
	}
	public void setMaterialPhoto(String materialPhoto) {
		this.materialPhoto = materialPhoto;
	}
	
	
	
}
