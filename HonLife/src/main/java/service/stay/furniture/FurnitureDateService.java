package service.stay.furniture;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.FurnitureDTO;
import Model.DTO.RoomRevDTO;
import Model.DTO.TimeCheckDTO;
import repository.stay.FurnitureRepository;
import repository.stay.ReservationRepository;


@Service
public class FurnitureDateService {
	@Autowired
	FurnitureRepository furnitureRepository;
	
	@Autowired
	ReservationRepository reservationRepository;
	
	public void fRevChk(String revNum,Model model) {
		RoomRevDTO room = reservationRepository.oneRev(revNum);
		
		TimeCheckDTO dto = new TimeCheckDTO();
		
		dto.setStart(room.getRoomRevStartDate());
		dto.setEnd(room.getRoomRevEndDate());
		List<FurnitureDTO> list = furnitureRepository.fDateChk(dto);
		
		model.addAttribute("revNum", revNum);
		model.addAttribute("start", room.getRoomRevStartDate());
		model.addAttribute("end", room.getRoomRevEndDate());
		model.addAttribute("list", list);
	}
}
