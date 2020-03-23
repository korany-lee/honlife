package controller.care.manager;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class cleaningItemListController {
	
	
@RequestMapping("manager/cleanItemList")
public String itemList() {
	
	return "common/manager/managerview/list_order_cleaningitem";
}
}
