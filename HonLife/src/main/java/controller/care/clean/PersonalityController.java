package controller.care.clean;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.care.clean.PersonalityPoint;
import service.care.clean.PersonalityService;

@Controller
@RequestMapping("/care/personality")
public class PersonalityController {
	@Autowired
	private PersonalityService personalityService; 

@RequestMapping(method = RequestMethod.GET)
	public String person() {
		return "careView/care/personality";

	}

	@RequestMapping(method = RequestMethod.POST)
										
	public String personAct(@ModelAttribute("personPoint") PersonalityPoint point,
									@RequestParam(value="recNum") Integer recNum , 
									@RequestParam(value="reciver") String reciver,
																									
			
			Model model) {
		
	
		System.out.println( "Controller point=" + point);
		System.out.println("Controller list point="+ point.getPersonResponse());
		System.out.println("Controller recNum=" + recNum);
		
		
			return personalityService.action(point, recNum,reciver , model);
		
	
		
	}
	
	
}
