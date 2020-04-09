package controller.care.manager;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.care.clean.EmployeeListService;

@Controller
public class EmployeeListController {
@Autowired
EmployeeListService employeeListService;
	@RequestMapping("/manager/empList")
	public String empList(Model model,HttpSession session) {
		employeeListService.empList(model,session);
		
		return "common/manager/managerview/care/list_employee";
	}
	
	@RequestMapping("/empsel")
	public String empsel(@RequestParam("time") String time,
								   @RequestParam("date") String date, Model model) {
		System.out.println("empsercon=" + time);
		System.out.println("empsercon date=" + date);
		employeeListService.empsel(time,date,model);
		
		return"careView/care/empsel";
	}
}
