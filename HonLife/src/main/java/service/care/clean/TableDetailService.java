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
		/*
		 * CleanOrderDTO dto = new CleanOrderDTO() ;
		 * 
		 * dto.setCleanorderNo(orderNo); CleanOrderDTO orderDTO =
		 * registRepository.orderDetail(dto);
		 * 
		 * String [] name = orderDTO.getCleanitemName().split(","); String [] price =
		 * orderDTO.getCleanitemPrice().split(","); String [] qty =
		 * orderDTO.getCleanitemQty().split(","); String [] sumPrice =
		 * orderDTO.getCleanitemSumprice().split(",");
		 * 
		 * model.addAttribute("table",orderDTO); model.addAttribute("name",name);
		 * model.addAttribute("price",price); model.addAttribute("qty",qty);
		 * model.addAttribute("sumPrice",sumPrice);
		 */
	}
	
	
}
