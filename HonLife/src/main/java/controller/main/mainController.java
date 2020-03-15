package controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class mainController {
	@RequestMapping("/header")
	public String headerTest() {
		return "includer/header";
	}
}
