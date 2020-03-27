package service.stay.furniture;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.FurnitureDTO;
import Model.DTO.SearchDTO;
import repository.stay.FurnitureRepository;

@Service
public class FurnitureListService {
	@Autowired
	FurnitureRepository furnitureRepository;
	public void allSelect(Model model) {
		List<FurnitureDTO> lists = furnitureRepository.furnitureList();
		System.out.println("레퍼지토리 들감");
		
		model.addAttribute("furniture", lists);
	}
	

	public void selectType(String type,Model model) {
		
		List<FurnitureDTO> list = furnitureRepository.selectType(type);
		model.addAttribute("furniture",list);
	}
	
	public void oneSelect(String no, Model model) {
		FurnitureDTO dto = furnitureRepository.oneSelect(no);
		model.addAttribute("furniture", dto);
	}
	
	public void searchSelect(String content,String type,Model model) {
		SearchDTO sdto = new SearchDTO();
		sdto.setContent(content);
		sdto.setType(type);
		List<FurnitureDTO> dto = furnitureRepository.searchSelect(sdto);
		model.addAttribute("furniture", dto);
	} 
	
	
}
