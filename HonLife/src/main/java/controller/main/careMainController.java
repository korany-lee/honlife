package controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class careMainController {
	@RequestMapping(value="/careMain")
	public String careMain() {
		
		return "careView/careMain";
	}
	
}
