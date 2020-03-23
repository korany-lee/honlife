package controller.care.clean;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class cleanRecController {
@RequestMapping("/care/recruitment")
public String rec() {
	
		return "careView/care/recruitment";
}

@RequestMapping("/care/register_rec")
public String regist_rec() {
	
	
	return"careView/care/reg_recruitment";
}
}
