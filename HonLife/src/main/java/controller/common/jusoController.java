package controller.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class jusoController {
	@RequestMapping("manager/juso")
	public String juso() {
		
		
		return "common/manager/Sample";
	}
}
