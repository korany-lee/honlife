package command.stay.material;

import org.springframework.web.multipart.MultipartFile;

public class MaterialCommand {
	String materialNo;
	String materialType;
	MultipartFile [] materialImage;
	String materialUsage;
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
	public MultipartFile[] getMaterialImage() {
		return materialImage;
	}
	public void setMaterialImage(MultipartFile[] materialImage) {
		this.materialImage = materialImage;
	}
	public String getMaterialUsage() {
		return materialUsage;
	}
	public void setMaterialUsage(String materialUsage) {
		this.materialUsage = materialUsage;
	}
	
}
