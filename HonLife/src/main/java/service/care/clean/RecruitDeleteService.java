package service.care.clean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.care.RecruitDTO;
import repository.care.RegistRepository;
import repository.manager.CountRepository;

@Service
public class RecruitDeleteService {
	@Autowired
	RegistRepository registRepository;
	CountRepository countRepository;
	public void recDel(Integer recNum, Model model) {
		RecruitDTO dto = new RecruitDTO();
		dto.setRecruitNo(recNum);

		registRepository.recDel(dto);
	
	
	}
	
	
}
