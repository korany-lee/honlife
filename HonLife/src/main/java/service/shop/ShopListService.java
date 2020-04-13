package service.shop;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.CartDTO;
import Model.DTO.LoginDTO;
import Model.DTO.ProductDTO;
import command.shop.CartCmd;
import command.shop.OrderListVO;
import command.shop.OrdershopCMD;
import command.shop.OrdershopDetailsCMD;
import repository.shop.MemberRepository;
import repository.shop.ProductRepository;
import repository.shop.ShopListRepository;

@Service
public class ShopListService {
	@Autowired
	private ShopListRepository slr;
	
	@Autowired
	MemberRepository mr;
	
	@Autowired
	ProductRepository pr;
	
	@Autowired
	ShopListRepository sr;
	
	public void list(Model model) {
		List<ProductDTO> pro = slr.listProducts();
		model.addAttribute("shopList", pro);
	}
	
	public void detailView(String productNo, Model model) {
		ProductDTO dto = slr.detail(productNo);
		model.addAttribute("product", dto);
	}
	//장바구니
	public void cartGo(CartCmd cart, Model model, HttpSession session) {
		System.out.println("cart quantity: "+ cart.getCartQuantity());
		CartDTO dto = new CartDTO();
		LoginDTO login = (LoginDTO)session.getAttribute("memberInfo");
		dto.setProductNo(cart.getProductNo());
		System.out.println("productNo: "+dto.getProductNo());
		dto.setBasketAmount(cart.getCartQuantity());
		System.out.println("cartQuantity: "+dto.getBasketAmount());
		dto.setProductPhoto(cart.getProductPhoto());
		dto.setUserNo(login.getUserNo());
		dto.setProductName(cart.getProductName());
		dto.setProductPrice(cart.getProductPrice());
		
		slr.cart(dto);
		
		List<CartDTO> dto2 = slr.cartSelect(dto.getUserNo());
		
		List<String> pNo = pr.selectNo(login.getUserNo()); // 장바구니에서 상품 번호 다 가져옴
		
		List<ProductDTO> product = new ArrayList<>();
		
		for(int i=0;i<pNo.size();i++) {
			product.add(sr.detail(pNo.get(i)));
		}
		System.out.println("내가 가져온 상품 정보 갯수는?" + product.size());
		
		model.addAttribute("cart", dto2);
		model.addAttribute("product", product);
	}
	//주문 정보
	public void orderInfo(OrdershopCMD order) {
		pr.orderInfo(order);
	}
	
	//주문 상세정보
	public void orderInfoDetails(OrdershopDetailsCMD orderDetail) {
		pr.orderInfoDetail(orderDetail);
	}
	
	//장바구니 삭제(주문시)
	public void cartAllDelete(String userNo) {
		pr.cartAllDelete(userNo);
	}
	
	//특정 id 주문 목록
	public List<OrdershopCMD> orderList(OrdershopCMD order) {
		return pr.orderList(order);
	}
	
	//특정 주문 목록
	public List<OrderListVO> orderView(OrdershopCMD order){
		return pr.orderView(order);
	}
	
}
