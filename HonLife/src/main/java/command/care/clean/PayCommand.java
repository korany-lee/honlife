package command.care.clean;

import java.sql.Timestamp;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class PayCommand {

	public String getRevdate() {
		return revdate;
	}
	public void setRevdate(String revdate) {
		this.revdate = revdate;
	}
	String revNo;
	String uname;
	String uph;
	String uemail;
	String revaddr;

	String revdate;
	String revtime;
	String empname;
	String empph;
	String empNo;
	Integer size;
	String demand;
	Integer pay;
	
	public String getRevNo() {
		return revNo;
	}
	public void setRevNo(String revNo) {
		this.revNo = revNo;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getRevaddr() {
		return revaddr;
	}
	public void setRevaddr(String revaddr) {
		this.revaddr = revaddr;
	}


	public String getRevtime() {
		return revtime;
	}
	public void setRevtime(String revtime) {
		this.revtime = revtime;
	}
	public String getEmpname() {
		return empname;
	}
	public void setEmpname(String empname) {
		this.empname = empname;
	}
	
	public String getUph() {
		return uph;
	}
	public void setUph(String uph) {
		this.uph = uph;
	}
	public String getEmpph() {
		return empph;
	}
	public void setEmpph(String empph) {
		this.empph = empph;
	}
	public String getEmpNo() {
		return empNo;
	}
	public void setEmpNo(String empNo) {
		this.empNo = empNo;
	}
	public Integer getSize() {
		return size;
	}
	public void setSize(Integer size) {
		this.size = size;
	}
	public String getDemand() {
		return demand;
	}
	public void setDemand(String demand) {
		this.demand = demand;
	}
	public Integer getPay() {
		return pay;
	}
	public void setPay(Integer pay) {
		this.pay = pay;
	}
	

}
