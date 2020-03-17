package controller.care;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CareMainController {
	@RequestMapping(value="/careMain")
	public String careMain() {
		
		return "careView/careMain";
	}
	
}
