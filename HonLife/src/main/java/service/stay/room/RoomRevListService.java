package service.stay.room;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.RoomRevDTO;
import repository.stay.ReservationRepository;

@Service
public class RoomRevListService {
	@Autowired
	ReservationRepository reservationRepository;
	
	public void revDate(String roomNo,Model model) {
		List<RoomRevDTO> list = reservationRepository.revState(roomNo);
		
		SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd");
		
				
		Date time = new Date();
				
		String today = format1.format(time);
		
		model.addAttribute("today", today);
		model.addAttribute("revState", list);
	}
	
	
	public void revChk(Model model) {
		RoomRevDTO dto = reservationRepository.revChk();
		model.addAttribute("RevChk", dto);
	
	}
}
