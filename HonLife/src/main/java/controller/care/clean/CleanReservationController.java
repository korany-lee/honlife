package controller.care.clean;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CleanReservationController {
@RequestMapping("/care/cleanRev")
	public String cleanRev() {
		
		
		
		return "careView/care/clean_rev";
	}
}
