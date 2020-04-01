package controller.care.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.manager.ListCountService;

@Controller
public class managerMainController {
	@Autowired
 private	ListCountService listCountService;	
	@RequestMapping("/manager/main")
	public String main(Model model) {
		
		listCountService.recCount(model); 
		listCountService.empCount(model);
		return "common/manager/managerview/managermain";
	}
	

}