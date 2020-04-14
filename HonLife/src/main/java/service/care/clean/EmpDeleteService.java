package service.care.clean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import repository.care.RegistRepository;

@Service
public class EmpDeleteService {
	@Autowired
	RegistRepository registRepository;
	
	public void  delete(String empNo) {
		
		registRepository.empdel(empNo);
		
		
	}
}
