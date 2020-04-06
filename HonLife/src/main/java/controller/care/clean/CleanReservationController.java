package controller.care.clean;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	employeeListService.empList(model,session);
	cleanFeeService.fee(model);
		return "careView/care/clean_rev";
	}

@RequestMapping("/care/cleanRevAct")
	public String revAct(CleanRevCommand cleanRevCommand) {
	cleanRevService.revIn(cleanRevCommand);
	
	return "redirect:/careMain";
}
}
