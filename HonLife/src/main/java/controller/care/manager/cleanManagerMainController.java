package controller.care.manager;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class cleanManagerMainController {
@RequestMapping("/careManager")
public String main() {
	
	return "careView/caremanager/care_managermain";
}

}
