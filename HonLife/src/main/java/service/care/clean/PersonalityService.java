package service.care.clean;



import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.care.RecruitDTO;
import command.care.clean.PersonalityPoint;
import repository.care.RegistRepository;

@Service
public class PersonalityService {
	
	@Autowired
	RegistRepository registRepository;
	
	@Autowired 
	MailService mailService;
	
	
	public String action(PersonalityPoint point, Integer recruitNo, String reciver, Model model) {
		RecruitDTO dto = new RecruitDTO();
		System.out.println("Service point=" + point);
		System.out.println("Service num=" + recruitNo);
		Integer result = 0;
		System.out.println(point.getPersonResponse());
		dto.setRecruitNo(recruitNo);
		for(String answer : point.getPersonResponse()) {
			
			result += Integer.parseInt(answer);
			System.out.println("answer= " +answer);
			System.out.println("result="+result);
		}
		
		if(result < 60) {
		registRepository.recDel(dto);	
		return "redirect:/care/person?recNum="+recruitNo+"&reciver="+reciver;
		}else {

		dto.setPoints(result);
		model.addAttribute("recNum",recruitNo);
		registRepository.updatePoint(dto);
		}
		
		
		return 	"careView/care/personality/next";	
	
	}
	
	
	
}
