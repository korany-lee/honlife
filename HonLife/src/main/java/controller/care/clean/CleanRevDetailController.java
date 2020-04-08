package controller.care.clean;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.care.clean.CleanRevDetailService;

@Controller
public class CleanRevDetailController {
	@Autowired
	CleanRevDetailService cleanRevDetailService;
	@RequestMapping("/care/revDetail")
	public String revDetail() {
		
		
		/*
		 * HttpSession session, @RequestParam("userId") String userId ,
		 * 
		 * @RequestParam("userNo") String userNo,
		 * 
		 * @RequestParam("revNo") String revNo, Model model
		 */
		
		/* cleanRevDetailService.detail(session, userId, userNo, revNo, model); */
		
		
		return "careView/care/clean_rev_detail";
	}
			
	
}
