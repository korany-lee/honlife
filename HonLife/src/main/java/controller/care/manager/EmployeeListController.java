package controller.care.manager;

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
	public String empList(Model model) {
		employeeListService.empList(model);
		
		return "common/manager/managerview/care/list_employee";
	}
}
