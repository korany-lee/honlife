package service.stay.furniture;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.LoginDTO;
import Model.DTO.RoomRevDTO;
import repository.stay.ReservationRepository;

@Service
public class RoomRevMatchService {
	@Autowired
	ReservationRepository reservationRepository;
	
	public void roomRevFind(HttpSession session,Model model) {
		LoginDTO login = (LoginDTO)session.getAttribute("memberInfo");
		List<RoomRevDTO> dto = reservationRepository.userRev(login.getUserNo());
	
		
		model.addAttribute("roomRev", dto);
		
	}
	
	public void roomRevFind1(HttpSession session,Model model) {
		LoginDTO login = (LoginDTO)session.getAttribute("memberInfo");
		List<RoomRevDTO> dto = reservationRepository.userRev1(login.getUserNo());
	
		
		model.addAttribute("roomRev", dto);
		
	}
}
