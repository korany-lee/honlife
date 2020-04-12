package service.stay.manager;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.FurnitureDTO;
import Model.DTO.FurnitureRevDTO;
import Model.DTO.RoomRevDTO;
import repository.stay.FurnitureRepository;
import repository.stay.ReservationRepository;
import repository.stay.RoomRepository;

@Service
public class ManagerRevService {
	@Autowired
	ReservationRepository reservationRepository;
	
	@Autowired
	RoomRepository roomRepository;
	
	@Autowired
	FurnitureRepository fr;
	
	
	
	public void revList(Model model) {
		List<RoomRevDTO> list= reservationRepository.allRoomRev();
		model.addAttribute("rev", list);
	}
	public void frevList(Model model) {
		List<FurnitureRevDTO> list = reservationRepository.allFurnitureRev();
		model.addAttribute("frev", list);
	}
	
	
	
	public void checkIn(String revNo,String roomNo) {
		List<String> furnitureNo = reservationRepository.selectFurnitureNo(revNo);
		if(furnitureNo.size()!=0) {
			for(int i=0;i<furnitureNo.size();i++) {
				fr.stateChange(furnitureNo.get(i));
			}
		}
		
		
		reservationRepository.checkIn(revNo);
		roomRepository.changeState(roomNo);
	}
	
	public void checkOut(String revNo,String roomNo) {
		List<String> furnitureNo = reservationRepository.selectFurnitureNo(revNo);
		if(furnitureNo.size()!=0) {
			for(int i=0;i<furnitureNo.size();i++) {
				fr.stateChange1(furnitureNo.get(i));
			}
		}
		
		reservationRepository.checkOut(revNo);
		roomRepository.changeState1(roomNo);
		
	}
	
	public void today(Model model) {
		List<RoomRevDTO> list = reservationRepository.today();
		model.addAttribute("rev", list);
	}
}
