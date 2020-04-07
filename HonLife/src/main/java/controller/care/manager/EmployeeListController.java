package controller.care.manager;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
