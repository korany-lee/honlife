package Model.DTO.care;

import java.io.Serializable;

@SuppressWarnings("serial")
public class CleanFeeDTO implements Serializable {
	
	Integer cleanFee;
	Integer cleanSize;
	
	public Integer getCleanFee() {
		return cleanFee;
	}
	public void setCleanFee(Integer cleanFee) {
		this.cleanFee = cleanFee;
	}
	public Integer getCleanSize() {
		return cleanSize;
	}
	public void setCleanSize(Integer cleanSize) {
		this.cleanSize = cleanSize;
	}

}
