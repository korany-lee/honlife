package controller.care.clean;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import service.care.clean.CleanRevDetailService;
import service.care.clean.CleanRevService;

@Controller
public class CleanPaymentController {
	@Autowired
	CleanRevDetailService  cleanRevDetailService;
	@RequestMapping(value="/care/paymentKG",method = RequestMethod.GET)
	public String pay(HttpSession session,@RequestParam("userId") String userId,
															@RequestParam("userNo") String userNo,
															@RequestParam("revNo") String revNo ,Model model) {
		cleanRevDetailService.detail(session,userId,userNo,revNo,model);
		return "careView/care/payment/paymentKG";
	}
	@RequestMapping(value="/care/paymentKakao")
	public String payKakao(HttpSession session,@RequestParam("userId") String userId,
																	@RequestParam("userNo") String userNo,
																	@RequestParam("revNo") String revNo ,Model model) {
		
		cleanRevDetailService.detail(session,userId,userNo,revNo,model);
		return "careView/care/payment/paymentKakao";
		
	}
	@RequestMapping(value="/care/paymentDanal")
	public String payDanal(HttpSession session,@RequestParam("userId") String userId,
																	@RequestParam("userNo") String userNo,
																	@RequestParam("revNo") String revNo ,Model model) {
		
		cleanRevDetailService.detail(session,userId,userNo,revNo,model);
		return "careView/care/payment/paymentDanal";
	}
	
}
