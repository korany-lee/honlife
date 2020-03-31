package controller.shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
}
