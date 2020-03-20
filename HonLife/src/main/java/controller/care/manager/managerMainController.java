package controller.care.manager;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class managerMainController {
	@RequestMapping("/manager/main")
	public String main() {

		return "common/manager/managerview/managermain";
	}

}
