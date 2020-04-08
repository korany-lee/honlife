package service.stay.furniture;

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

@Service
public class FurnitureRevInsertService {
	@Autowired
	ReservationRepository revRepository;
	
	@Autowired
	FurnitureRepository furnitureRepository;
	
	public void furnitureRevInsert(String revNum,Model model) {
		RoomRevDTO dto = revRepository.oneRev(revNum);
		
		revRepository.frevTrue(revNum);
		
		List<String> furnitureNo = furnitureRepository.getFurnitureNo(dto.getUserNo()); //장바구니에서 내 가구번호를 가져옴
		
		/*
		 * String fRevNum = revRepository.makeSeq(); //가구 예약번호 생성
		 */		
		 //가구예약 DTO
		
		for(int i=0; i<furnitureNo.size(); i++) {
			FurnitureRevDTO fdto = new FurnitureRevDTO();
			
			fdto.setRoomRevNo(dto.getRoomRevNo());
			fdto.setUserNo(dto.getUserNo());
			fdto.setRoomNo(dto.getRoomNo());
			fdto.setFurnitureRevStartDate(dto.getRoomRevStartDate());
			fdto.setFurnitureRevEndDate(dto.getRoomRevEndDate());
			fdto.setFurnitureNo(furnitureNo.get(i));
			revRepository.furnitureRevInsert(fdto);
		}
		revRepository.wishDelete(dto.getUserNo());
		
		//방 예약번호에 따른 가구 예약 번호 받아오기
		List<String> fRevNo = revRepository.selectFrevNo(dto.getRoomRevNo());
		//가구번호에 따른 가구 정보 담기
		List<FurnitureDTO> furniture = new ArrayList<>();
		for(int i=0;i<fRevNo.size();i++) {
			furniture.add(furnitureRepository.oneSelect(fRevNo.get(i)));
		}
		model.addAttribute("fInfo",furniture );
		model.addAttribute("fRevNo",fRevNo );
		model.addAttribute("RevChk", dto);
	}
}
