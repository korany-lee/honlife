package controller.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/common/memberJoin")
public class MemberController {

	
	@RequestMapping(method =RequestMethod.GET)     
	public String Join() {
		return "common/memberJoin";	
	}
	
	@RequestMapping(method =RequestMethod.POST) 
	public String memberJoinAction() {
		return "main";
	}
}
