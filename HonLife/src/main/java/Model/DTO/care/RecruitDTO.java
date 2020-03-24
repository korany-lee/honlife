package Model.DTO.care;

import java.io.Serializable;

@SuppressWarnings("serial")
public class RecruitDTO implements Serializable{
	
	

	Integer recruitNo;
	String recruitName;
	Integer recruitPh;
	Integer recruitJumin;
	String recruitEmail;
	String recruitAddr;
	String recruitResume;
	String recruitClass;
	String recruitGender;
	//파일전송
	String originalFileName;
	String storeFileName;
    Long 	  fileSize;	
	
	public String getOriginalFileName() {
		return originalFileName;
	}
	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}
	public String getStoreFileName() {
		return storeFileName;
	}
	public void setStoreFileName(String storeFileName) {
		this.storeFileName = storeFileName;
	}
	public Long getFileSize() {
		return fileSize;
	}
	public void setFileSize(Long fileSize) {
		this.fileSize = fileSize;
	}
	public String getRecruitGender() {
		return recruitGender;
	}
	public void setRecruitGender(String recruitGender) {
		this.recruitGender = recruitGender;
	}
	public Integer getRecruitNo() {
		return recruitNo;
	}
	public void setRecruitNo(Integer recruitNo) {
		this.recruitNo = recruitNo;
	}
	public String getRecruitName() {
		return recruitName;
	}
	public void setRecruitName(String recruitName) {
		this.recruitName = recruitName;
	}
	public Integer getRecruitPh() {
		return recruitPh;
	}
	public void setRecruitPh(Integer recruitPh) {
		this.recruitPh = recruitPh;
	}
	public Integer getRecruitJumin() {
		return recruitJumin;
	}
	public void setRecruitJumin(Integer recruitJumin) {
		this.recruitJumin = recruitJumin;
	}
	public String getRecruitEmail() {
		return recruitEmail;
	}
	public void setRecruitEmail(String recruitEmail) {
		this.recruitEmail = recruitEmail;
	}
	public String getRecruitAddr() {
		return recruitAddr;
	}
	public void setRecruitAddr(String recruitAddr) {
		this.recruitAddr = recruitAddr;
	}
	public String getRecruitResume() {
		return recruitResume;
	}
	public void setRecruitResume(String recruitResume) {
		this.recruitResume = recruitResume;
	}
	public String getRecruitClass() {
		return recruitClass;
	}
	public void setRecruitClass(String recruitClass) {
		this.recruitClass = recruitClass;
	}

	

	
	
}

