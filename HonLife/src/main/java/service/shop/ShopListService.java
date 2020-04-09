package service.shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.ProductDTO;
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
}
