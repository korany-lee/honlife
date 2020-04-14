package controller.care.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.care.clean.EmpDeleteService;
import service.care.clean.EmployeeDetailService;

@Controller
public class EmployeeDetailController {
	
	@Autowired
	EmployeeDetailService employeeDetailService;
	@Autowired
	EmpDeleteService empDeleteService;
	

	
	@RequestMapping(value="/manager/orderChk")
	public String orderChk(@RequestParam(value="empNo") String empNo,
									  @RequestParam(value="orderNo") String orderNo
									  														,Model model) {
		
		employeeDetailService.chk(empNo,orderNo,model);
		return "common/manager/managerview/care/chk";
	}
	@RequestMapping(value="/manager/employeeDel")
	public String empdel(@RequestParam(value="empNo") String empNo) {
		empDeleteService.delete(empNo);
		
		return "redirect:/manager/employee";
	}
}

