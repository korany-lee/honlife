package controller.member;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.common.MemberCommand;
import service.shop.MemberJoinService;

@Controller
public class MemberJoinController {
	
	@Autowired
	private MemberJoinService mjs;
	
	 //stay 페이지에서 회원가입 눌렸을 때
	@RequestMapping("/member/stayJoin")        
	public String stayJoin() {
		System.out.println("aaaa");
		return "stayView/memberView/memberForm";
	}
	//care 페이지에서 회원가입 눌렀을 때
	@RequestMapping("/careJoin")
	public String careJoin() {
		return "careView/care/reg_member";   //영찬님 jsp 페이지 위치
	}
	//shop 페이지에서 회원가입 눌렀을 때
	@RequestMapping("/shopJoin")    
	public String shopJoin() {
		return "shopView/shop/shop_join";
	}
	
	//stay에서 회원가입 완료 눌렀을때
	@RequestMapping(value="/member/stayJoinAccess", method=RequestMethod.POST)
	public String memberJoin(MemberCommand mc, HttpServletResponse response) {
		mjs.joinMem(mc, response);
		return "redirect:/stayMain";
	}
	//care에서 회원가입 완료 눌렀을때
	@RequestMapping(value="/careJoinAccess", method=RequestMethod.POST)
	public String carememberJoin(MemberCommand mc, HttpServletResponse response) {
		mjs.joinMem(mc, response);
		return "redirect:/careMain";
	}
	//shop에서 회원가입 완료 눌렀을때
	@RequestMapping(value="/shopJoinAccess", method=RequestMethod.POST)
	public String shopmemberJoin(MemberCommand mc, HttpServletResponse response) {
		mjs.joinMem(mc, response);
		return "redirect:/shopMain";
	}
	
	
	//아이디 중복체크 창으로 이동
	@RequestMapping("/userConfirm")
	public String idChk(@RequestParam(value="userId")String id,Model model) {
		model.addAttribute("memId", id);
		return "common/member/userCheck";
	}
	//아이디 중복확인 액션
	@RequestMapping("/idCheckAction")
	public String idChkAction(@RequestParam(value="userId")String id,Model model) {
		mjs.idCheck(id,model);
		return "common/member/userCheck";
	}
	
	
}
