package controller.care.clean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.care.clean.RevDeleteService;

@Controller
public class CleanRevDeleteController {
	@Autowired
	RevDeleteService revDeleteService;
	@RequestMapping("care/revDel")
	public String revDelete( 	@RequestParam(value="revNo") String revNo) {
		
		/* revDeleteService.revDel(revNo); */
	
		
		return "redirect:/careMain";
	}
}
