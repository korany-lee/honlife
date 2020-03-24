package controller.care.clean;

import javax.servlet.ServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.care.clean.RegistCommand;
import service.care.clean.RegistService;



@Controller
public class cleanRecController {
	@Autowired
	private RegistService registService;
	
@RequestMapping("/care/recruitment")
public String rec() {	
		return "careView/care/recruitment";
}

@RequestMapping("/care/register_rec")
public String regist_rec() {
	return"careView/care/reg_recruitment";
}

@RequestMapping(value="/care/regRecruitmentAction", method = RequestMethod.POST )
public String regist(RegistCommand registCommand , ServletRequest request) {
		System.out.println("registCommand=" + registCommand.getRecruitAddr());
		System.out.println("registCommand=" + registCommand.getRecruitName());
		System.out.println("registCommand=" + registCommand.getRecruitJumin());
		System.out.println("registCommand=" + registCommand.getRecruitResume());
		System.out.println("registCommand=" + registCommand.getRecruitEmail1());
		System.out.println("registCommand=" + registCommand.getRecruitEmail2());
	
			 registService.regist(registCommand, request);

	return "redirect:/care/success"; 
			
}

@RequestMapping(value="/care/success")
 public String success() {
	
	
	return "careView/care/success";
}
}
