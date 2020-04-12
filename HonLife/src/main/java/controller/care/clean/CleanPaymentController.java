package controller.care.clean;

import java.text.ParseException;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import service.care.clean.CleanRevDetailService;
import service.care.clean.CleanRevService;

@Controller
public class CleanPaymentController {
	@Autowired
	CleanRevDetailService  cleanRevDetailService;
	@RequestMapping(value="/care/paymentKG")
	public String pay(HttpSession session,@RequestParam("revNo") String revNo,
			@RequestParam("uname") String uname,
			@RequestParam("uph") String uph ,
			@RequestParam("uemail") String uemail,
			@RequestParam("revaddr") String revaddr,
			@RequestParam("revdate") String revdate,
			@RequestParam("revtime") String revtime,
			@RequestParam("empname") String empname,
			@RequestParam("empph") String empph,
			@RequestParam("empNo") String empNo,
			@RequestParam("size") Integer size,
			@RequestParam("demand") String demand,
			@RequestParam("pay") String pay,
			Model model) throws ParseException {
		

		
		cleanRevDetailService.detail(session,revNo,uname,uph,uemail,revaddr,revdate,revtime,empname,empph,empNo,size,demand,pay,model);
		return "careView/care/payment/paymentKG";
	}
	@RequestMapping(value="/care/paymentKakao")
	public String payKakao(HttpSession session,@RequestParam("revNo") String revNo,
																	@RequestParam("uname") String uname,
																	@RequestParam("uph") String uph ,
																	@RequestParam("uemail") String uemail,
																	@RequestParam("revaddr") String revaddr,
																	@RequestParam("revdate") String revdate,
																	@RequestParam("revtime") String revtime,
																	@RequestParam("empname") String empname,
																	@RequestParam("empph") String empph,
																	@RequestParam("empNo") String empNo,
																	@RequestParam("size") Integer size,
																	@RequestParam("demand") String demand,
																	@RequestParam("pay") String pay,																	
																	Model model) throws ParseException {
	
		
		
		cleanRevDetailService.detail(session,revNo,uname,uph,uemail,revaddr,revdate,revtime,empname,empph,empNo,size,demand,pay,model);
		
		
		return "careView/care/payment/paymentKakao";
		
	}
	@RequestMapping(value="/care/paymentDanal")
	public String payDanal(HttpSession session,@RequestParam("revNo") String revNo,
			@RequestParam("uname") String uname,
			@RequestParam("uph") String uph ,
			@RequestParam("uemail") String uemail,
			@RequestParam("revaddr") String revaddr,
			@RequestParam("revdate") String revdate,
			@RequestParam("revtime") String revtime,
			@RequestParam("empname") String empname,
			@RequestParam("empph") String empph,
			@RequestParam("empNo") String empNo,
			@RequestParam("size") Integer size,
			@RequestParam("demand") String demand,
			@RequestParam("pay") String pay, Model model) throws ParseException {
	
		
		cleanRevDetailService.detail(session,revNo,uname,uph,uemail,revaddr,revdate,revtime,empname,empph,empNo,size,demand,pay,model);
		return "careView/care/payment/paymentDanal";
		

	}
	
}
