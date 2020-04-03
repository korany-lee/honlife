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
		System.out.println("예약 몇개? =" + dto.size());
		
		model.addAttribute("roomRev", dto);
		
	}
}
