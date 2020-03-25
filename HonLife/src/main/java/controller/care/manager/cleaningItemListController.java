package controller.care.manager;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class cleaningItemListController {
	
	
@RequestMapping("manager/cleanItemList")
public String itemList(Model model) {
	
	return "common/manager/managerview/care/list_order_cleaningitem";
}


}
