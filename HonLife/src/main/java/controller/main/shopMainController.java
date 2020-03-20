package controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class shopMainController {
	@RequestMapping("/shopView/shopMain")
	public String shopMain() {
		return "shopView/shopMain";
	}
	@RequestMapping("/shopView/shopJoin")
	public String shopJoin() {
		return "shopView/shop/shop_join";
	}

}
