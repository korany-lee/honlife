package controller.care.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.care.clean.RegistCommand;
import service.care.clean.RecruitMailService;

@Controller
public class RecruitMailController {
@Autowired
RecruitMailService recruitMailService;
	

	 @RequestMapping("/manager/mail") 
	  public String mail(
			  			 @RequestParam(value="recNum") Integer recNum ,
			  			 @RequestParam(value="reciver") String reciver,			  	
			  			 @RequestParam(value="name" ,required=false) String name ){
		 
		 
		 recruitMailService.mail(recNum,reciver,name);
		 
		 
	  return "redirect:/manager/recruit"; 
	 

}

}
