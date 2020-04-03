package controller.care.manager;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.care.clean.ItemCommand;
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
public String CorderAct(ItemOrderCommand itemOrderCommand ,ItemCommand itemCommand,Model model) {
	System.out.println("name="+itemCommand.getCleanitemName());
	System.out.println("price="+itemCommand.getCleanitemPrice());
	System.out.println("qty="+itemCommand.getCleanitemQty());
	System.out.println("sump="+itemCommand.getCleanitemSumprice());
	
	itemOrderService.itemInsert(itemCommand);
	itemOrderService.orderInsert(itemOrderCommand,model);
	return "redirect:/manager/main";
}


}
