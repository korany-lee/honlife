package Model.DTO.care;

import java.io.Serializable;
import java.util.List;
@SuppressWarnings("serial")
public class EmptoItemOrderDTO implements Serializable{


	public List<CleanOrderDTO> getOrderDTO() {
		return orderDTO;
	}
	public void setOrderDTO(List<CleanOrderDTO> orderDTO) {
		this.orderDTO = orderDTO;
	}
	EmployeeDTO empDTO;                        //1
	List<CleanOrderDTO> orderDTO;  //n
	
	
	public EmployeeDTO getEmpDTO() {
		return empDTO;
	}
	public void setEmpDTO(EmployeeDTO empDTO) {
		this.empDTO = empDTO;
	}

	
}
