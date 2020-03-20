package controller.care.manager;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class cleaningItemOrderController {
@RequestMapping ("/manager/cleanorder")
public String Corder() {

	
	return "common/manager/managerview/order_cleaningitem";
}
}
