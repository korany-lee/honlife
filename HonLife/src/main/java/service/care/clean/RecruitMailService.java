package service.care.clean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Model.DTO.care.RecruitDTO;
import command.care.clean.RegistCommand;
import repository.care.RegistRepository;

@Service
public class RecruitMailService {
	@Autowired
	RegistRepository registRepository;
	@Autowired
	RecruitMailSand RecruitMailSand;
	
	public void mail(Integer recNum, String reciver, String name) {

		System.out.println("service recNum=" + recNum);
		 System.out.println("service reciver=" + reciver);
		 System.out.println("service name=" + name);
		RecruitMailSand.sendMail(recNum, reciver, name);
		
		
	}
	
	
	
}
