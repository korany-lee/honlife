package controller.care.manager;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Model.DTO.care.CleanOrderDTO;
import command.care.clean.ItemCommand;
import command.care.clean.ItemOrderCommand;
import service.care.clean.EmployeeListService;
import service.care.clean.ItemOrderService;



@Controller

public class CleaningItemOrderController {
	@Autowired
	ItemOrderService itemOrderService;
	@Autowired
	EmployeeListService  employeeListService;
	
	
	@RequestMapping ("/manager/cleanorder")
	public String Corder(Model model,HttpSession ses) {
		String orderNo = UUID.randomUUID().toString();
		model.addAttribute("orderNo" , orderNo);
		employeeListService.empList(model, ses);

		return "common/manager/managerview/care/order_cleaningitem";
	}


	@RequestMapping(value="/manager/orderAct", method = RequestMethod.POST)
	public String CorderAct(ItemOrderCommand itemOrderCommand ,ItemCommand itemCommand,Model model) {

		itemOrderService.itemInsert(itemCommand,itemOrderCommand);
		itemOrderService.orderInsert(itemOrderCommand,model);
		return "redirect:/manager/main";
	}


}
