package controller.care.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.care.clean.ItemOrderListService;

@Controller
public class CleaningItemListController {
	@Autowired
	ItemOrderListService itemOrderListService;
	
@RequestMapping("manager/cleanItemList")
public String itemList(Model model) {
	
	itemOrderListService.list(model);
	
	return "common/manager/managerview/care/list_order_cleaningitem";
}


}
