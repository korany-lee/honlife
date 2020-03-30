package Model.DTO.care;

import java.io.Serializable;

@SuppressWarnings("serial")
public class RecruitDTO implements Serializable{
	
	



	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	Integer recruitNo;
	String recruitName;
	Integer recruitPh;
	Long recruitJumin;
	String recruitEmail;
	String recruitAddr;
	String recruitClass;
	String recruitGender;
	String postcode;
	String recruitPhoto;

	Integer interview;
	Integer points;
	//파일전송
	
	String originalFileName;
	
	String storeFileName;
    String fileSize;	
	
    //메일체크
    String mailChk;
    
    public Integer getPoints() {
		return points;
	}
	public void setPoints(Integer points) {
		this.points = points;
	}
	public Integer getInterview() {
		return interview;
	}
	public void setInterview(Integer interview) {
		this.interview = interview;
	}
	public String getMailChk() {
		return mailChk;
	}
	public void setMailChk(String mailChk) {
		this.mailChk = mailChk;
	}
	public String getRecruitPhoto() {
		return recruitPhoto;
	}
	public void setRecruitPhoto(String recruitPhoto) {
		this.recruitPhoto = recruitPhoto;
	}
    
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
	public String getFileSize() {
		return fileSize;
	}
	public void setFileSize(String fileSize) {
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
	public Long getRecruitJumin() {
		return recruitJumin;
	}
	public void setRecruitJumin(Long recruitJumin) {
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
	
	public String getRecruitClass() {
		return recruitClass;
	}
	public void setRecruitClass(String recruitClass) {
		this.recruitClass = recruitClass;
	}

	

	
	
}

