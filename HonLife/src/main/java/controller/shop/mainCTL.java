package controller.shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import service.shop.ShopListService;

@Controller
public class mainCTL {
	@Autowired
	ShopListService sls;
	
	@RequestMapping(value="/shopView/HOT", method=RequestMethod.GET)
	public String menu(Model model) {
		sls.list(model);
		return "shopView/shop/menu/HOT";
	}
	
	//상품 상세보기
	@RequestMapping(value="/shopView/HOT/{no}")
	public String detail(@PathVariable(value = "no") String productNo, Model model) {
		sls.detailView(productNo, model);
		return "shopView/shop/menu/shop_detail";
	}
	
	//장바구니 보기
	@RequestMapping(value="/shopView/cart", method=RequestMethod.GET)
	public String cart() {
		return "shopView/shop/cart";
	}
	
}
