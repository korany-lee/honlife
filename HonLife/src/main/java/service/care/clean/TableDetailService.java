package service.care.clean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.care.CleanOrderDTO;
import repository.care.RegistRepository;

@Service
public class TableDetailService {
	@Autowired
	RegistRepository registRepository;
	
	public void detail(String orderNo, Model model) {
		CleanOrderDTO dto = new CleanOrderDTO() ;

			dto.setCleanorderNo(orderNo);
			dto  = registRepository.orderDetail(dto);
			
			model.addAttribute("table",dto);
		
		
	}
}
