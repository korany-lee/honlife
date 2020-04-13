package controller.shop;

import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Model.DTO.LoginDTO;
import command.shop.CartCmd;
import command.shop.OrderListVO;
import command.shop.OrdershopCMD;
import command.shop.OrdershopDetailsCMD;
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
	
	//장바구니 추가(insert)
	@RequestMapping(value="/shopView/cartGo", method=RequestMethod.POST)
	public String cart(CartCmd cart, Model model, HttpSession session) {
		sls.cartGo(cart, model, session);
		return "shopView/shop/cart";
	}
	
	//주문하기 버튼 누르면
	@RequestMapping(value = "/shopView/buyGo", method = RequestMethod.POST)
	public String order(HttpSession session, OrdershopCMD order, OrdershopDetailsCMD orderDetail) throws Exception {
	 
	 LoginDTO member = (LoginDTO)session.getAttribute("memberInfo");
	 String userNo = member.getUserNo();
	 Integer amount = order.getAmount();
	 session.setAttribute("amount", amount);
	 Calendar cal = Calendar.getInstance();
	 int year = cal.get(Calendar.YEAR);
	 String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
	 String ymd = ym +  new DecimalFormat("00").format(cal.get(Calendar.DATE));
	 String subNum = "";
	 
	 for(int i = 1; i <= 6; i ++) {
	  subNum += (int)(Math.random() * 10);
	 }
	 
	 String orderNo = ymd + "_" + subNum;
	 
	 order.setOrderNo(orderNo);
	 order.setUserNo(userNo);
	 System.out.println("buygo에서 저장한 amount: "+amount);
	  
	 sls.orderInfo(order);
	 
	 orderDetail.setOrderNo(orderNo);   
	 sls.orderInfoDetails(orderDetail);
	 
	 sls.cartAllDelete(userNo);
	 
	 String textMassage = "HONSHOP을 이용해주셔서 감사합니다 성공적으로 주문되었습니다.";
	 SmsSend sms = new SmsSend();
	 sms.smsSend(order.getUserPh(), textMassage);
	 
	 
	 return "redirect:/shopView/KakaoPay";
	}
	
	@RequestMapping(value = "/shopView/KakaoPay", method = RequestMethod.GET)
	public String getOrderList(HttpSession session, OrdershopCMD order, Model model) throws Exception {
				 
		LoginDTO member = (LoginDTO)session.getAttribute("memberInfo");
		 String userNo = member.getUserNo();
		 
		 Integer amount = (Integer)session.getAttribute("amount");
		
		 order.setUserNo(userNo);
		 
		 List<OrdershopCMD> orderList = sls.orderList(order);
		 
		 System.out.println("int amount: "+amount);
		 
		 model.addAttribute("totalPrice", amount);
		 //model.addAttribute("totalPrice",121212);
		 model.addAttribute("orderList", orderList);
		 //return "shopView/shop/orderList";
		 return "shopView/shop/KakaoPay";
	}
	
	@RequestMapping(value = "/shopView/orderList", method = RequestMethod.GET)
	public String OrderList(HttpSession session, OrdershopCMD order, Model model) throws Exception {
				
		LoginDTO member = (LoginDTO)session.getAttribute("memberInfo");
		 String userNo = member.getUserNo();
		 order.setUserNo(userNo);
		 
		 List<OrdershopCMD> orderList = sls.orderList(order);
		 
		 model.addAttribute("orderList", orderList);
		 return "shopView/shop/orderList";
		 
	}
	
	// 주문 상세 목록
	@RequestMapping(value = "/shopView/orderView", method = RequestMethod.GET)
	public String getOrderList(HttpSession session,
	      @RequestParam("n") String orderNo,
	      OrdershopCMD order, Model model) throws Exception {
	 	 
		LoginDTO member = (LoginDTO)session.getAttribute("memberInfo");
		 String userNo = member.getUserNo();
	 
	 order.setUserNo(userNo);
	 order.setOrderNo(orderNo);
	 
	 List<OrderListVO> orderView = sls.orderView(order);
	 
	 model.addAttribute("orderView", orderView);
	 return "shopView/shop/orderView";
	}
}
