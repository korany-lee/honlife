package controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class stayMainController {
	@RequestMapping("/stayMain")
	public String headerTest() {
		return "stayView/view/stayMain";
	}
}
