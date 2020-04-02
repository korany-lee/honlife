package controller.care.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import service.care.clean.TableDetailService;

@Controller
public class OrderTableDetailController {
	
	@Autowired
	TableDetailService tableDetailService;
	
	@RequestMapping(value="/manager/tableDetail" ,method = RequestMethod.POST )
	public String table(@RequestParam(value="orderNo") String orderNo, Model model) {
		System.out.println("orderNo: "+orderNo);
		tableDetailService.detail(orderNo,model);
		
		return "common/manager/managerview/care/orderTable";
	}
	
	
}
