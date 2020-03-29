package controller.care.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.care.clean.RegistCommand;
import service.care.clean.MailService;

@Controller
public class MailController {
	@Autowired
	MailService mailService;
	

	@RequestMapping("/manager/mail") 
	public String mail(
			@RequestParam(value="recNum") Integer recNum ,
			@RequestParam(value="reciver") String reciver,			  	
			@RequestParam(value="name" ,required=false) String name ){


		mailService.recruitMail(recNum,reciver,name);


		return "redirect:/manager/recruit"; 


	}
	
	@RequestMapping("/manager/interviewMail")
	public String interviewMail(@RequestParam(value="recNum") Integer recNum, 
								@RequestParam(value="reciver") String reciver,
								@RequestParam(value="name") String name) {
		
		mailService.interviewMail(recNum,reciver,name);
		
		
		return "redirect:/manager/interview";
	}

	


}
