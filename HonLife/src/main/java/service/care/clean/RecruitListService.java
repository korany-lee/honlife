package service.care.clean;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.care.RecruitDTO;
import repository.care.RegistRepository;

@Service
public class RecruitListService {
	@Autowired
	RegistRepository registRepository;


	public void recList(Model model) {
			RecruitDTO Rdto = registRepository.listDetail();
			List<RecruitDTO> list = 	registRepository.list();

			String[] oriFile = Rdto.getOriginalFileName().split("-");
		    String[] strFile = Rdto.getStoreFileName().split("-");
		    String[] fileSize = Rdto.getFileSize().split("-");
		    
		    
		      model.addAttribute("recruit" , list);
			  model.addAttribute("registCommand" ,Rdto);
		      model.addAttribute("originalFileName" ,oriFile);
		      model.addAttribute("storeFileName" ,strFile);
		      model.addAttribute("fileSize" ,fileSize);
			
			
			
			
			
			
			

	}


}
