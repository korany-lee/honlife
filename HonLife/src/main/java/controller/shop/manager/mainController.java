package controller.shop.manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	
	
	
	//혼샵 제품 등록
	@RequestMapping("/shop/register")
	public String regist() {
		return "common/manager/managerview/shop_register";
	}
	
	//혼샵 제품 등록 폼 보내기
	@RequestMapping(value="/manager/shopRegister", method=RequestMethod.POST)
	public String productRegist(ProductCommand pc, HttpServletRequest request) {
		System.out.println("실행1---------");
		try {
			pis.productInsert(pc, request);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "common/manager/managerview/managermain";
	}
	
	
	
}
