package controller.care.clean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.care.clean.ItemOrderListService;
import service.care.clean.ItemReceivingService;

@Controller
public class ItemReceivingController {
@Autowired
ItemReceivingService  itemReceivingService;
@Autowired
ItemOrderListService  itemOrderListService;
	
@RequestMapping("/manager/itemreceiving")
	public String itemRe(Model model) {
	itemOrderListService.list(model);
		 itemReceivingService.receiving(); 
		return "common/manager/managerview/care/receiving_cleaningitem";
	}
	
}
