package controller.care.clean;

import javax.servlet.ServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.care.clean.EmployeeCommand;
import service.care.clean.RecruitDetailService;
import service.care.clean.RegistService;

@Controller
public class EmpRegistController {
@Autowired
RegistService registService;
	
@Autowired
RecruitDetailService recruitDetailService;


@RequestMapping("/care/empRegist")
	public String empReg(@RequestParam(value="recNum") Integer recNum, EmployeeCommand employeeCommand, Model model,
			 ServletRequest request) {
	
	recruitDetailService.detail(recNum, model);
	registService.empRegist(recNum,employeeCommand,request);
		return "careView/care/reg_employee";
	}
}
