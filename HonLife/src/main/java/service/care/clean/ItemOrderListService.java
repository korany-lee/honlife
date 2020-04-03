package service.care.clean;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.care.CleanOrderDTO;
import Model.DTO.care.EmptoItemOrderDTO;
import repository.care.RegistRepository;

@Service
public class ItemOrderListService {
	@Autowired
	RegistRepository registRepository;
	
	public void list(Model model) {
		
		List<EmptoItemOrderDTO> list = registRepository.orderList();
		
		model.addAttribute("orderList" , list);
	}
	

}
