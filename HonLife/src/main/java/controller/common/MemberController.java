package controller.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/common/memberJoin")
public class MemberController {

	
	@RequestMapping(method =RequestMethod.GET)     //회원가입 폼 들어가기
	public String Join() {
		return "common/memberJoin";	
	}
	
	@RequestMapping(method =RequestMethod.POST) //회원가입 완료
	public String memberJoinAction() {
		return "main";
	}
}
