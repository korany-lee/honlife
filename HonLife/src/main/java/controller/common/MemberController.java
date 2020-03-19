package controller.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	
	@RequestMapping("/memberJoin")
	public String Join() {
		
		
		
		return "common/memberJoin";
		
	}
}
