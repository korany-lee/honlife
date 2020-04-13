package controller.care.clean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import service.care.clean.EmployeeListService;
import service.care.clean.ItemOrderListService;
import service.care.clean.ItemReceivingService;

@Controller
public class ItemReceivingController {
@Autowired
ItemReceivingService  itemReceivingService;
@Autowired
ItemOrderListService  itemOrderListService;
@Autowired
EmployeeListService employeeListService;

	
@RequestMapping("/manager/itemreceiving")
	public String itemRe(Model model ) {
	itemOrderListService.list(model);
		
		return "common/manager/managerview/care/receiving_cleaningitem";
	}

@RequestMapping(value="/manager/receivingEmp")
public String emp(Model model,@RequestParam(value ="num" , required = false) String  num ) {
	System.out.println("컨트롤러 탔음");
	System.out.println("aaa=" +num);
	employeeListService.receivingemp(model, num);
	
return "common/manager/managerview/care/receivingsel";
}

@RequestMapping("/manager/receivingtable")
public String table(Model model , @RequestParam(value="orderNo") String orderNo ) {
 
	itemOrderListService.tableview(model,orderNo);
	
	return "common/manager/managerview/care/receivingTable";
}
	
}
