package service.stay.room;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.RoomDTO;
import repository.stay.RoomRepository;

@Service
public class RoomListService {
	@Autowired
	RoomRepository roomRepository;
	
	public void execute(String BigType,String SmallType,Model model) {
		if(BigType.equals("view")) {
			List<RoomDTO> list = roomRepository.viewSelect(SmallType);
			model.addAttribute("room",list );
		}else if(BigType.equals("floor")) {
			List<RoomDTO> list = roomRepository.floorSelect(SmallType);
			model.addAttribute("room",list );
		}else if(BigType.equals("size")) {
			List<RoomDTO> list = roomRepository.sizeSelect(SmallType);
			model.addAttribute("room",list );
		}
		
	}
}
