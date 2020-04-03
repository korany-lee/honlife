package service.care.clean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.care.CleanOrderDTO;
import Model.DTO.care.EmployeeDTO;
import repository.care.RegistRepository;

@Service
public class EmployeeDetailService {
@Autowired
RegistRepository registRepository;
	
		public void chk(String empNo,String orderNo,Model model) {
			
			CleanOrderDTO orderDTO = new CleanOrderDTO();
			orderDTO.setCleanorderNo(orderNo);
			registRepository.orderChk(orderDTO);
			
			
			
			EmployeeDTO dto  = new EmployeeDTO();
			dto.setEmployeeNo(empNo);
		
			registRepository.empDetail(dto);
			model.addAttribute("chk" ,dto);
		}
		

}
