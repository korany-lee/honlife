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
	MailSend mailSend;
	
	
	public void recruitMail(Integer recNum, String reciver, String name) {

		System.out.println("service recNum=" + recNum);
		 System.out.println("service reciver=" + reciver);
		 System.out.println("service name=" + name);
		mailSend.sendRecruitMail(recNum, reciver, name);
		
		
	}
	
	public void interviewMail(Integer recNum, String reciver, String name) {
		
		
		mailSend.sendInterviewMail(recNum, reciver, name);
		
	}
	
	public void intChk(Integer recNum){
		RecruitDTO dto = new RecruitDTO();
		dto.setRecruitNo(recNum);

		
		registRepository.intChkUp(dto);
		
	}
	
	public void failMail(Integer recNum, String reciver) {

		mailSend.fail(recNum, reciver);	
	
	}
	
	
}
