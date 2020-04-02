package controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	//로그인 눌렀을때
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String shopLog() {
		return "shopView/shop/shop_login";
	}
}
