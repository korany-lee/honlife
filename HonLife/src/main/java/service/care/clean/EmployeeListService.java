package service.care.clean;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.care.EmployeeDTO;
import repository.care.RegistRepository;

@Service
public class EmployeeListService {
	
	@Autowired
	RegistRepository registRepository;
	public void empList(Model model) {
		List<EmployeeDTO> empList = registRepository.empList();
		
		
		model.addAttribute("empList",empList);
		
	}
	
	
}
