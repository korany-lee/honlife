package controller.care.laundry;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class laundryAmountInfoController {
	@RequestMapping("/care/laundryAmountInfo")
	public String amountInfo() {
		
		return "careView/care/laundry_amountinfo";
	}
}
