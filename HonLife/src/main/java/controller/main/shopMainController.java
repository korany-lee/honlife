package controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class shopMainController {
	@RequestMapping("/shopMain")
	public String shopMain() {
		return "shopView/shopMain";
	}
	

}
