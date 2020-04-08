package service.stay.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.FurnitureRevDTO;
import Model.DTO.RoomRevDTO;
import repository.stay.ReservationRepository;
import repository.stay.RoomRepository;

@Service
public class ManagerRevService {
	@Autowired
	ReservationRepository reservationRepository;
	
	@Autowired
	RoomRepository roomRepository;
	
	public void revList(Model model) {
		List<RoomRevDTO> list= reservationRepository.allRoomRev();
		model.addAttribute("rev", list);
	}
	public void frevList(Model model) {
		List<FurnitureRevDTO> list = reservationRepository.allFurnitureRev();
		model.addAttribute("frev", list);
	}
	
	
	
	public void checkIn(String revNo,String roomNo) {
		reservationRepository.checkIn(revNo);
		roomRepository.changeState(roomNo);
	}
	
	public void checkOut(String revNo,String roomNo) {
		reservationRepository.checkOut(revNo);
		roomRepository.changeState1(roomNo);
	}
	
	public void today(Model model) {
		List<RoomRevDTO> list = reservationRepository.today();
		model.addAttribute("rev", list);
	}
}
