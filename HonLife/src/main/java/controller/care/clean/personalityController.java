package controller.care.clean;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class personalityController {
@RequestMapping("/care/personality")
public String person() {
	
	return "careView/care/personality";
	
}
}
