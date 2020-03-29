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
	public String action(PersonalityPoint point, Integer recruitNo, Model model) {
		RecruitDTO dto = new RecruitDTO();
		System.out.println("Service point=" + point);
		System.out.println("Service num=" + recruitNo);
		Integer result = 0;
		System.out.println(point.getPersonResponse());
				
		for(String answer : point.getPersonResponse()) {
			
			result += Integer.parseInt(answer);
			System.out.println("answer= " +answer);
			System.out.println("result="+result);
		}
		System.out.println("ServiceResult="+result);
		dto.setRecruitNo(recruitNo);
		dto.setPoints(result);
		model.addAttribute("recNum",recruitNo);
		registRepository.updatePoint(dto);
		
		return 	"careView/care/personality/next";	
	
	}
	
	
	
}
