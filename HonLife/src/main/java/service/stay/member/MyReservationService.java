package service.stay.member;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.FurnitureDTO;
import Model.DTO.LoginDTO;
import Model.DTO.RoomRevDTO;
import repository.stay.FurnitureRepository;
import repository.stay.ReservationRepository;

@Service
public class MyReservationService {
	@Autowired
	ReservationRepository rev;
	@Autowired
	FurnitureRepository fRev;
	
	
	public void myRev(HttpSession session,Model model) {
		LoginDTO login = (LoginDTO)session.getAttribute("memberInfo");
		
		List<RoomRevDTO> roomrev = rev.userRev(login.getUserNo());
		
		model.addAttribute("rev", roomrev);
	}
	
	
	public void detail(String revNum,Model model) {
		RoomRevDTO dto = rev.oneRev(revNum);
		List<String> furnitureNo = rev.selectFurnitureNo(revNum);
		List<FurnitureDTO> list = new ArrayList<>();
		
		for(int i=0;i<furnitureNo.size(); i++) {
			FurnitureDTO furniture = fRev.oneSelect(furnitureNo.get(i));
			list.add(furniture);	
		}

		model.addAttribute("furniture", list);
		model.addAttribute("rev", dto);
	}
	
	public void allCancel(String no) {
		/*
		 * rev.roomrevCancel(no); rev.frevCancel(no);
		 */
	}
}
