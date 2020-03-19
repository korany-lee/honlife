package controller.care.manager;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class cleaningItemOrderController {
@RequestMapping ("/cleanorder")
public String Corder() {

	
	return "careView/caremanager/order_cleaningitem";
}
}
