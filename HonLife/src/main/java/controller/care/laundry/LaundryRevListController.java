package controller.care.laundry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.care.laundry.LaundryRevService;

@Controller
public class LaundryRevListController {
@Autowired
LaundryRevService laundryRevService;

	@RequestMapping("manager/L_revList")
	public String laundryList(Model model) {
		
		laundryRevService.list(model);
		
		
		return "common/manager/managerview/care/list_laundryrev"; 
			
	}
	
}
