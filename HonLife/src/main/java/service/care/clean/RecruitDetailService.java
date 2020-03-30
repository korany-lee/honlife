package service.care.clean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.care.RecruitDTO;
import repository.care.RegistRepository;

@Service
public class RecruitDetailService {
	@Autowired
	RegistRepository registRepository;
	
	public void detail(Integer recNum, Model model) {
		RecruitDTO dto =  new RecruitDTO();
		
			dto.setRecruitNo(recNum);
		
			dto = registRepository.oneSelect(dto);
		
			model.addAttribute("one" , dto);

		
		
	}
}
