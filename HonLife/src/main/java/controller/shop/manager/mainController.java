package controller.shop.manager;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.common.MemberCommand;
import command.shop.ProductCommand;
import service.shop.MemberJoinService;
import service.shop.ProductInsertService;

@Controller
public class mainController {
	@Autowired
	private ProductInsertService pis;
	
	@Autowired
	private MemberJoinService mjs;
	
	//혼샵 제품 등록
	@RequestMapping("/shop/register")
	public String regist() {
		return "common/manager/managerview/shop_register";
	}
	
	//혼샵 제품 등록 폼 보내기
	@RequestMapping(value="/shop/shopRegister", method=RequestMethod.POST)
	public String productRegist(ProductCommand pc, HttpServletRequest request) {
		pis.productInsert(pc, request);
		return "common/manager/managerview/managermain";
	}
	
	//혼샵에서 멤버 가입
	@RequestMapping(value="/JoinAccess", method=RequestMethod.POST)
	public String memberJoin(MemberCommand mc) {
		mjs.joinMem(mc);
		return "shopView/shopMain";
	}
	
}
