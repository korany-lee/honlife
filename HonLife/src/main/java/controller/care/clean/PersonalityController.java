package controller.care.clean;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


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
										
	public String personAct(@ModelAttribute("personPoint") PersonalityPoint point) {
		
	
		System.out.println( "point=" + point);
		System.out.println("ControllerPoint="+ point.getPersonResponse());
			
		
			return personalityService.action(point);
		
	
		
	}
	
	
}
