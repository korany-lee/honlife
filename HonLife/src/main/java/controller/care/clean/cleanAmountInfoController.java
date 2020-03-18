package controller.care.clean;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class cleanAmountInfoController {
@RequestMapping("/cleanAmountInfo")
public String amount() {
	
	return "careView/care/clean_amountinfo";
}
}
