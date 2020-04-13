package controller.care.clean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import service.care.clean.ItemReceivingService;

@Controller
public class ItemReceivingController {
@Autowired
ItemReceivingService  itemReceivingService;
	
@RequestMapping("/manager/itemreceiving")
	public String itemRe() {
		
		/* itemReceivingService.receiving(); */
		return "common/manager/managerview/care/receiving_cleaningitem";
	}
	
}
