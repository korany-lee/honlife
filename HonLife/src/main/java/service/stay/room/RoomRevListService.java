package service.stay.room;

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
		model.addAttribute("revState", list);
	}
}
