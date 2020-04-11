package controller.care.manager;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.care.clean.CleanRevService;

@Controller
public class CleanRevListController {
	@Autowired
	CleanRevService  cleanRevService;
	
	
	@RequestMapping("/manager/C_revList")
	public String revList(Model model) {
		
		cleanRevService.list(model);
		
		return "common/manager/managerview/care/list_cleanrev";
	}
	
}
