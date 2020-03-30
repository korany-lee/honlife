package service.care.clean;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.DTO.care.RecruitDTO;
import repository.care.RegistRepository;

public class InterviewListService {
	
	@Autowired
	RegistRepository registRepository;


	public void interviewList(Model model) {
			
			List<RecruitDTO> list = 	registRepository.interviewList();

			
		      model.addAttribute("interview" , list);
		

	}

}
