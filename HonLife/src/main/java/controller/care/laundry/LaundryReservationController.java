package controller.care.laundry;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.care.clean.LaundryRevCommand;
import net.nurigo.java_sdk.Coolsms;
import service.care.clean.EmployeeDetailService;
import service.care.clean.EmployeeListService;
import service.care.laundry.LaundryRevService;
import service.care.laundry.SendSMSService;

@Controller
public class LaundryReservationController {
	@Autowired
	LaundryRevService laundryRevService;
	@Autowired
	EmployeeListService employeeListService;
	@Autowired
	SendSMSService sendSMSService;

	@RequestMapping("/care/laundryrev")
 public String laundryRev(HttpSession ses , Model model) {
	
		
		SimpleDateFormat formatter = new SimpleDateFormat ("yyyy-MM-dd hh:mm:ss");
		Calendar cal = Calendar.getInstance();
		String today = null;
		today = formatter.format(cal.getTime());
		Timestamp ts = Timestamp.valueOf(today);	
		  String aa = ts.toString().replace("-",""); 
		  String bb = aa.replace(":","");
		  String cc = bb.replace(" ","");
		  String dd = cc.replace(".", "");
		  employeeListService.empList(model, ses);
		 
		 model.addAttribute("LrevNo" , dd);

		
	 return "careView/care/laundry_rev";
 }
	@RequestMapping(value="/care/laundryAct", method = RequestMethod.POST)
	public String LrevAct(LaundryRevCommand lc,HttpSession ses , Model model, HttpServletRequest req) {
		Integer i = laundryRevService.revInsert(lc,ses,model);
		
		if(i != null) {
			sendSMSService.strSend(lc,req);
		}
	
		
		return "careView/care/laundry_rev_detail";
	}
	

}
