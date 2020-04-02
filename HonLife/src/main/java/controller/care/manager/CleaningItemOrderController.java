package controller.care.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.care.clean.ItemOrderCommand;
import service.care.clean.ItemOrderService;



@Controller
public class CleaningItemOrderController {
	@Autowired
	ItemOrderService itemOrderService;
	@RequestMapping ("/manager/cleanorder")
public String Corder(Model model) {

	
	return "common/manager/managerview/care/order_cleaningitem";
}

	@RequestMapping(value="/manager/orderAct", method = RequestMethod.POST)
public String CorderAct(ItemOrderCommand itemOrderCommand ,Model model) {
	
	itemOrderService.orderInsert(itemOrderCommand,model);
	return "common/manager/managerview/managermain";
}


}
