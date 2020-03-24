package command.care.clean;

import org.springframework.web.multipart.MultipartFile;

public class RegistCommand {
	

	private Integer recruitNo;
	private String recruitClass;
	private String recruitName;
	private Integer recruitPh;
	private Long recruitJumin;
	private String recruitAddr;
	private String recruitEmail1;
	private String recruitEmail2;
	private String recruitGender;
	private MultipartFile [] recruitResume;
	
		public Integer getRecruitNo() {
		return recruitNo;
	}
	public void setRecruitNo(Integer recruitNo) {
		this.recruitNo = recruitNo;
	}
		public MultipartFile[] getRecruitResume() {
		return recruitResume;
	}
	public void setRecruitResume(MultipartFile[] recruitResume) {
		this.recruitResume = recruitResume;
	}
	public String getRecruitClass() {
		return recruitClass;
	}
	public void setRecruitClass(String recruitClass) {
		this.recruitClass = recruitClass;
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
	public String getRecruitAddr() {
		return recruitAddr;
	}
	public void setRecruitAddr(String recruitAddr) {
		this.recruitAddr = recruitAddr;
	}
	public String getRecruitEmail1() {
		return recruitEmail1;
	}
	public void setRecruitEmail1(String recruitEmail1) {
		this.recruitEmail1 = recruitEmail1;
	}
	public String getRecruitEmail2() {
		return recruitEmail2;
	}
	public void setRecruitEmail2(String recruitEmail2) {
		this.recruitEmail2 = recruitEmail2;
	}
	
	public String getRecruitGender() {
		return recruitGender;
	}
	public void setRecruitGender(String recruitGender) {
		this.recruitGender = recruitGender;
	}
	
	
}
