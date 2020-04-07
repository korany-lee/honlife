package controller.care.clean;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Model.DTO.LoginDTO;
import Model.DTO.care.CleanRevDTO;
import command.care.clean.CleanRevCommand;
import service.care.clean.CleanFeeService;
import service.care.clean.CleanRevService;
import service.care.clean.EmployeeListService;

@Controller
public class CleanReservationController {
	@Autowired
	private EmployeeListService employeeListService;
	@Autowired
	private CleanFeeService cleanFeeService;
	@Autowired
	private CleanRevService cleanRevService;
	
@RequestMapping("/care/cleanRev")
	public String cleanRev(Model model, HttpSession session) {
	SimpleDateFormat formatter = new SimpleDateFormat ("yyyy-MM-dd hh:mm:ss");
	Calendar cal = Calendar.getInstance();
	String today = null;
	today = formatter.format(cal.getTime());
	Timestamp ts = Timestamp.valueOf(today);	
	  String aa = ts.toString().replace("-",""); 
	  String bb = aa.replace(":","");
	  String cc = bb.replace(" ","");
	  String dd = cc.replace(".", "");
	 model.addAttribute("revNo" , dd);
	
	

	employeeListService.empList(model,session);
	cleanFeeService.fee(model);
		return "careView/care/clean_rev";
	}

@RequestMapping(value="/care/cleanpayKG",method = RequestMethod.GET)
	public String revAct(CleanRevCommand cleanRevCommand,HttpSession session) {
	cleanRevService.revIn(cleanRevCommand);
	LoginDTO login = (LoginDTO)session.getAttribute("memberInfo");
	
	String userId = login.getUserId();
	String userNo = login.getUserNo();
	String revNo = cleanRevCommand.getCleanrevNo();
	
	return "redirect:/care/paymentKG?userId="+userId+"&userNo="+userNo+"&revNo="+revNo;
}

@RequestMapping(value="/care/cleanpayKakao",method = RequestMethod.GET)

public String revkakao(CleanRevCommand cleanRevCommand,HttpSession session) {
	cleanRevService.revIn(cleanRevCommand);
	LoginDTO login = (LoginDTO)session.getAttribute("memberInfo");
	
	String userId = login.getUserId();
	String userNo = login.getUserNo();
	String revNo = cleanRevCommand.getCleanrevNo();
	
	return "redirect:/care/paymentKakao?userId="+userId+"&userNo="+userNo+"&revNo="+revNo;
	
}

@RequestMapping(value="/care/cleanpayDanal" ,method = RequestMethod.GET)
public String revDanal(CleanRevCommand cleanRevCommand,HttpSession session) {
	cleanRevService.revIn(cleanRevCommand);
	LoginDTO login = (LoginDTO)session.getAttribute("memberInfo");
	
	String userId = login.getUserId();
	String userNo = login.getUserNo();
	String revNo = cleanRevCommand.getCleanrevNo();
	
	return "redirect:/care/paymentDanal?userId="+userId+"&userNo="+userNo+"&revNo="+revNo;
	
}



}
