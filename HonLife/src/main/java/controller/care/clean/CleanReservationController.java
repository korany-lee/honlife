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
import org.springframework.web.bind.annotation.RequestParam;

import Model.DTO.LoginDTO;
import command.care.clean.CleanRevCommand;
import service.care.clean.CleanFeeService;
import service.care.clean.CleanRevDetailService;
import service.care.clean.CleanRevService;
import service.care.clean.EmployeeDetailService;
import service.care.clean.EmployeeListService;

@Controller
public class CleanReservationController {
	@Autowired
	private EmployeeListService employeeListService;
	@Autowired
	private CleanFeeService cleanFeeService;
	@Autowired
	private CleanRevService cleanRevService;
	@Autowired
	private CleanRevDetailService cleanRevDetailService;
	
	
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

@RequestMapping(value="/care/cleanAct")
	public String revAct(CleanRevCommand crc,Model model,HttpSession ses) {
	
	cleanRevService.revDetail(crc,model,ses);

	return "careView/care/clean_rev_detail";
}

@RequestMapping(value="/care/success")
public String success(	@RequestParam("revNo") String revNo ,Model model,HttpSession ses) {
	cleanRevService.revIn(revNo, model, ses);
	cleanRevDetailService.sucDetail(revNo, model, ses);
	return "careView/care/rev_success";
}


}
