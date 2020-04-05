package service.stay.furniture;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.FurnitureRevDTO;
import Model.DTO.RoomRevDTO;
import repository.stay.FurnitureRepository;
import repository.stay.ReservationRepository;

@Service
public class FurnitureRevInsertService {
	@Autowired
	ReservationRepository revRepository;
	
	@Autowired
	FurnitureRepository furnitureRepository;
	
	public void furnitureRevInsert(String revNum,Model model) {
		RoomRevDTO dto = revRepository.oneRev(revNum);
		System.out.println("dto에서 가져온 예약한 회원번호 =" + dto.getUserNo());
		List<String> furnitureNo = furnitureRepository.getFurnitureNo(dto.getUserNo());
		System.out.println("회원이 예약한 장바구니의 상품 갯수 =" + furnitureNo.size());
		String fRevNum = revRepository.makeSeq(); //가구 예약번호
		System.out.println("가구 예약번호는 몇번?" + fRevNum);
		FurnitureRevDTO fdto = new FurnitureRevDTO();
		
		for(int i=0; i<furnitureNo.size(); i++) {
			fdto.setFurnitureRevNo(fRevNum);
			fdto.setRoomRevNo(dto.getRoomRevNo());
			fdto.setUserNo(dto.getUserNo());
			fdto.setRoomNo(dto.getRoomNo());
			fdto.setFurnitureRevStartDate(dto.getRoomRevStartDate());
			fdto.setFurnitureRevEndDate(dto.getRoomRevEndDate());
			fdto.setFurnitureNo(furnitureNo.get(i));
			revRepository.furnitureRevInsert(fdto);
		}
		
		
		
		model.addAttribute("roomrev", dto);
	}
}
