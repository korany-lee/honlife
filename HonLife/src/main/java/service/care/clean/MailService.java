package service.care.clean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Model.DTO.care.RecruitDTO;
import command.care.clean.RegistCommand;
import repository.care.RegistRepository;

@Service
public class MailService {
	@Autowired
	RegistRepository registRepository;
	@Autowired
	MailSand mailSand;
	
	public void recruitMail(Integer recNum, String reciver, String name) {

		System.out.println("service recNum=" + recNum);
		 System.out.println("service reciver=" + reciver);
		 System.out.println("service name=" + name);
		mailSand.sendRecruitMail(recNum, reciver, name);
		
		
	}
	
	public void interviewMail(Integer recNum, String reciver, String name) {
		
		
		mailSand.sendInterviewMail(recNum, reciver, name);
		
	}
	
	
}
