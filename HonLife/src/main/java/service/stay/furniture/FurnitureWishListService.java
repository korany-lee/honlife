package service.stay.furniture;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.FurnitureDTO;
import Model.DTO.LoginDTO;
import repository.stay.FurnitureRepository;

@Service
public class FurnitureWishListService {
	@Autowired
	FurnitureRepository furnitureRepository;
	public void wishList(HttpSession session,Model model,Timestamp startDate,Timestamp endDate,String revNo) {
		LoginDTO login =(LoginDTO)session.getAttribute("memberInfo");
		String userNo = login.getUserNo();
		List<String> furnitureNo = furnitureRepository.getFurnitureNo(userNo);
		List<FurnitureDTO> dto = new ArrayList<>();
		Integer price = 0;
		
		for(int i=0; i<furnitureNo.size(); i++) {
			price = price + furnitureRepository.getPrice(furnitureNo.get(i));
			
			FurnitureDTO furniture = furnitureRepository.oneSelect(furnitureNo.get(i));
			dto.add(furniture);
		}
		//총 가격 출력
		long diffDay =(endDate.getTime()-startDate.getTime());
		long calDate = diffDay / (24*60*60*1000) +1 ;
		
		price = price * (int)calDate;
		model.addAttribute("start", startDate);
		model.addAttribute("end", endDate);
		model.addAttribute("revNo", revNo);
		model.addAttribute("totalprice",price);
		model.addAttribute("list", dto);
	}
}
