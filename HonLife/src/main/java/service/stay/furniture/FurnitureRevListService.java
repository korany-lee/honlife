package service.stay.furniture;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.FurnitureRevDTO;
import repository.stay.ReservationRepository;

@Service
public class FurnitureRevListService {
	@Autowired
	ReservationRepository reservationRepository;
	
	
	public void revDate(String furnitureNo,Model model) {
		
		List<FurnitureRevDTO> list = reservationRepository.frevState(furnitureNo);
		
		SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd");
		
				
		Date time = new Date();
				
		String today = format1.format(time);
		
		model.addAttribute("today", today);
		model.addAttribute("revState", list);
	}
}
