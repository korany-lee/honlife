package controller.shop.manager;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.shop.productCommand;
import service.shop.productInsertService;

@Controller
public class mainController {
	@Autowired
	productInsertService pis;
	
	@RequestMapping("/shop/register")
	public String regist() {
		return "common/manager/managerview/shop_register";
	}
	
	@RequestMapping(value="/shop/shopRegister", method=RequestMethod.POST)
	public String productRegist(productCommand pc, HttpServletRequest request) {
		System.out.println("실행1--ㅡcontroller");
		pis.productInsert(pc, request);
		return "common/manager/managerview/managermain";
	}
	
}
