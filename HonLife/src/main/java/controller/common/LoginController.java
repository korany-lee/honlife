package controller.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	@RequestMapping("/common/memberLogin")
	public String login() {
		
		return "common/memberLogin";
	}
}
