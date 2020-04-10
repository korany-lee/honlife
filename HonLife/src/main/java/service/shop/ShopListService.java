package service.shop;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.CartDTO;
import Model.DTO.LoginDTO;
import Model.DTO.ProductDTO;
import command.shop.CartCmd;
import repository.shop.ShopListRepository;

@Service
public class ShopListService {
	@Autowired
	private ShopListRepository slr;
	
	public void list(Model model) {
		List<ProductDTO> pro = slr.listProducts();
		model.addAttribute("shopList", pro);
	}
	
	public void detailView(String productNo, Model model) {
		ProductDTO dto = slr.detail(productNo);
		model.addAttribute("product", dto);
	}
	
	public void cartGo(CartCmd cart, Model model, HttpSession session) {
		System.out.println("cart quantity: "+ cart.getCartQuantity());
		CartDTO dto = new CartDTO();
		
		
		LoginDTO login = (LoginDTO)session.getAttribute("memberInfo");
		dto.setUserNo(login.getUserNo());
		dto.setProductNo(cart.getProductNo());
		dto.setBasketAmount(cart.getCartQuantity());
		
		slr.cart(dto);
		model.addAttribute("cart", dto);
		System.out.println("가져온 dto값: "+ dto.getCartNo());
	}	
}
