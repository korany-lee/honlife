package service.care.clean;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.care.CleanFeeDTO;
import repository.care.RegistRepository;

@Service
public class CleanFeeService {
	@Autowired
     RegistRepository registRepository;
	public void fee(Model model) {
		
			List<CleanFeeDTO> fee = registRepository.fee();
		
		
		model.addAttribute("fee", fee);
		
	}
}
