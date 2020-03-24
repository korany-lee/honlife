package service.care.clean;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.care.RecruitDTO;
import repository.care.RegistRepository;

@Service
public class RecruitListService {
	@Autowired
	RegistRepository registRepository;


	public void recList(Model model) {
			List<RecruitDTO> list = 	registRepository.list();
			
			model.addAttribute("recruit" , list);
		

	}


}
