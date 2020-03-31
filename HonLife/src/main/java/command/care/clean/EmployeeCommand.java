package command.care.clean;

import org.springframework.web.multipart.MultipartFile;

public class EmployeeCommand {
	

	private String employeeNo;
	private String employeeName;
	private Integer employeePh;
	private String employeeGender;
	private String employeeWorkField;
	private Integer employeeCallnum;
	private Long employeeJumin;
	private Integer employeeScore;
	private String employeeBad;
	private String addrPost;
	private String addrMain;
	private String addrDetail;
	
	private MultipartFile [] employeePhoto;
	public String getAddrMain() {
		return addrMain;
	}
	public void setAddrMain(String addrMain) {
		this.addrMain = addrMain;
	}
	public String getAddrPost() {
		return addrPost;
	}
	public void setAddrPost(String addrPost) {
		this.addrPost = addrPost;
	}
	
	public String getAddrDetail() {
		return addrDetail;
	}
	public void setAddrDetail(String addrDetail) {
		this.addrDetail = addrDetail;
	}
	public Integer getEmployeePh() {
		return employeePh;
	}
	public void setEmployeePh(Integer employeePh) {
		this.employeePh = employeePh;
	}
	public String getEmployeeGender() {
		return employeeGender;
	}
	public void setEmployeeGender(String employeeGender) {
		this.employeeGender = employeeGender;
	}
	
	public String getEmployeeNo() {
		return employeeNo;
	}
	public void setEmployeeNo(String employeeNo) {
		this.employeeNo = employeeNo;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getEmployeeWorkField() {
		return employeeWorkField;
	}
	public void setEmployeeWorkField(String employeeWorkField) {
		this.employeeWorkField = employeeWorkField;
	}
	public Integer getEmployeeCallnum() {
		return employeeCallnum;
	}
	public void setEmployeeCallnum(Integer employeeCallnum) {
		this.employeeCallnum = employeeCallnum;
	}
	public Long getEmployeeJumin() {
		return employeeJumin;
	}
	public void setEmployeeJumin(Long employeeJumin) {
		this.employeeJumin = employeeJumin;
	}
	
	public MultipartFile[] getEmployeePhoto() {
		return employeePhoto;
	}
	public void setEmployeePhoto(MultipartFile[] employeePhoto) {
		this.employeePhoto = employeePhoto;
	}
	public Integer getEmployeeScore() {
		return employeeScore;
	}
	public void setEmployeeScore(Integer employeeScore) {
		this.employeeScore = employeeScore;
	}
	public String getEmployeeBad() {
		return employeeBad;
	}
	public void setEmployeeBad(String employeeBad) {
		this.employeeBad = employeeBad;
	}
	
	
	
	
	
}
