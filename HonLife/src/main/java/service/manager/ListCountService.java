package service.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import repository.manager.CountRepository;

@Service
public class ListCountService {
@Autowired
 private CountRepository countRepository;
	
	public void count(Model model) {
		
		int count = countRepository.recruitCount();
		
		
		model.addAttribute("recruitcount" , count);
	
		
	}
	
	
}
