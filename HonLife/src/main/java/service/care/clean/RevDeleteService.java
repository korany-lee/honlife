package service.care.clean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Model.DTO.care.CleanRevDTO;
import repository.care.RegistRepository;

@Service
public class RevDeleteService {
	@Autowired
	RegistRepository registrepository;
	public void revDel(String revNo) {
		CleanRevDTO cr = new CleanRevDTO();
		
		cr.setCleanrevNo(revNo);
		
		
		registrepository.revDel(cr);
		
		
	}
	
}
