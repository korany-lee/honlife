package controller.care.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.care.clean.RegistCommand;
import service.care.clean.MailService;
import service.care.clean.RecruitDetailService;

@Controller
public class MailController {
	@Autowired
	MailService mailService;
	
	

	@RequestMapping("/manager/recMail") 
	public String mail(
			@RequestParam(value="recNum") Integer recNum ,
			@RequestParam(value="reciver") String reciver,			  	
			@RequestParam(value="name" ,required=false) String name ){


		mailService.recruitMail(recNum,reciver,name);


		return "redirect:/manager/recruit"; 


	}
	
	@RequestMapping("/manager/intMail")
	public String interviewMail(@RequestParam(value="recNum") Integer recNum, 
								@RequestParam(value="reciver") String reciver,
								@RequestParam(value="name") String name) {
		
		
		mailService.interviewMail(recNum,reciver,name);
		
		
		return "redirect:/manager/interview";
	}
	
	@RequestMapping("/manager/intChk")
	
	public String intChk(@RequestParam(value="recNum") Integer recNum) {
		
		mailService.intChk(recNum);
		
		
		return  "careView/care/chk";
	}
	
	@RequestMapping("/care/person")
	public String fail(@RequestParam(value="recNum") Integer recNum, 
							@RequestParam(value="reciver") String reciver ) {
		
		
		mailService.failMail(recNum, reciver);
		
		

		
		return "careView/care/personality/next";
	}
	
	
	
	


}
