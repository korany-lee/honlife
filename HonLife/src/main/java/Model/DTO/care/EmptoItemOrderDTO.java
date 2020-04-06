package Model.DTO.care;

import java.io.Serializable;
import java.util.List;
@SuppressWarnings("serial")
public class EmptoItemOrderDTO implements Serializable{




	public EmployeeDTO getEmpDTO() {
		return empDTO;
	}
	public void setEmpDTO(EmployeeDTO empDTO) {
		this.empDTO = empDTO;
	}
	public CleanOrderDTO getOrderDTO() {
		return orderDTO;
	}
	public void setOrderDTO(CleanOrderDTO orderDTO) {
		this.orderDTO = orderDTO;
	}
	EmployeeDTO empDTO;     //1
	CleanOrderDTO orderDTO;  //1

	
	

	
}
