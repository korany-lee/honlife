package service.stay.furniture;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.FurnitureDTO;
import repository.stay.FurnitureRepository;

@Service
public class FurnitureListService {
	@Autowired
	FurnitureRepository furnitureRepository;
	public void allSelect(Model model) {
		List<FurnitureDTO> lists = furnitureRepository.furnitureList();
		
		
		model.addAttribute("furniture", lists);
	}
}
