package controller.care.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import command.care.clean.ItemOrderCommand;
import service.care.clean.ItemOrderService;

import service.manager.ListCountService;

@Controller
public class cleaningItemOrderController {
	@Autowired
	ItemOrderService itemOrderService;
	@RequestMapping ("/manager/cleanorder")
public String Corder(Model model) {

	
	return "common/manager/managerview/care/order_cleaningitem";
}

@RequestMapping("/manager/orederAct")

public String CorderAct(ItemOrderCommand itemOrderCommand ,Model model) {
	
	itemOrderService.orderInsert(itemOrderCommand,model);
	return "common/manager/managerview/managermain";
}


}
