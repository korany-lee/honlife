package controller.care.clean;

import javax.servlet.ServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Model.DTO.care.EmployeeDTO;
import command.care.clean.EmployeeCommand;
import service.care.clean.RecruitDeleteService;
import service.care.clean.RecruitDetailService;
import service.care.clean.RegistService;

@Controller
public class EmpRegistController {
	@Autowired
	RegistService registService;
	@Autowired
	RecruitDetailService recruitDetailService;
	@Autowired
	RecruitDeleteService recruitDeleteService;


	@RequestMapping("/care/empRegist")
	public String empReg( Integer recNum, Model model,ServletRequest request) {

		recruitDetailService.detail(recNum, model);
		recruitDeleteService.recDel(recNum, model);
		return "careView/care/reg_employee";
	}


	@RequestMapping("/care/empRegAct")
	public String regAct(EmployeeCommand employeeCommnad,ServletRequest req)  {
		
		System.out.println("empno=====" + employeeCommnad.getEmployeeNo());
		System.out.println("empno=====" + employeeCommnad.getEmployeeName());
		System.out.println("empno=====" + employeeCommnad.getAddrDetail());
		
		registService.empRegist(employeeCommnad, req);
		
		return "redirect:/careMain";
	}
}
