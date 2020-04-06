package service.care.clean;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.care.CleanOrderDTO;
import Model.DTO.care.CleanitemInsert;
import repository.care.RegistRepository;

@Service
public class TableDetailService {
	@Autowired
	RegistRepository registRepository;

	public void detail(String orderNo, Model model) {
	
		 List<CleanitemInsert> itemDTO = 
				 registRepository.orderList(orderNo);
		 
		    
	
		 

		  
		  model.addAttribute("table",itemDTO);
		
	}

}
