package controller.stay.introduce;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IntroduceController {
	@RequestMapping("/introduce/honStay")
	public String room() {
		
		return "stayView/memberView/introduce";
	}
	
	
}
