package service.stay.room;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.ReviewDTO;
import Model.DTO.RoomDTO;
import Model.DTO.RoomRevDTO;
import repository.stay.ReservationRepository;
import repository.stay.ReviewRepository;
import repository.stay.RoomRepository;

@Service
public class RoomListService {
	@Autowired
	RoomRepository roomRepository;
	
	@Autowired
	ReviewRepository reviewRepository;
	
	@Autowired
	ReservationRepository revr;
	
	public void execute(String BigType,String SmallType,Model model) {
		if(BigType.equals("view")) {
			List<RoomDTO> list = roomRepository.viewSelect(SmallType);
			model.addAttribute("room",list );
		}else if(BigType.equals("floor")) {
			List<RoomDTO> list = roomRepository.floorSelect(SmallType);
			model.addAttribute("room",list );
		}else if(BigType.equals("size")) {
			List<RoomDTO> list = roomRepository.sizeSelect(SmallType);
			model.addAttribute("room",list );
		}
		
	}
	
	public void sizeSelect(String size,Model model) {
		List<RoomDTO> list = roomRepository.sizeSelect(size);
		model.addAttribute("list",list );
	}
	
	public void viewSelect(String view,Model model) {
		List<RoomDTO> list = roomRepository.viewSelect(view);
		model.addAttribute("list",list );
	}
	
	
	
	
	
	
	
	
	public void floorSelect(String floor,Model model) {
		List<RoomDTO> list = roomRepository.floorSelect(floor);
		model.addAttribute("floor", floor);
		model.addAttribute("list",list );
	}
	
	public void oneSelect(String num,Model model) {
		RoomDTO one = roomRepository.oneSelect(num);
		List<ReviewDTO> list = reviewRepository.roomReview(num);
		
		List<Integer> totalScore = reviewRepository.sumScore(num);
		
		Integer total = 0;
		for(int i=0;i<totalScore.size();i++) {
			total = total + totalScore.get(i);
		}
		
		Integer totalReview = totalScore.size();  //총 리뷰 개수
		Integer five = reviewRepository.five(num);
		Integer four = reviewRepository.four(num);
		Integer three = reviewRepository.three(num);
		Integer two = reviewRepository.two(num);
		Integer low = reviewRepository.one(num);
		if(totalReview!=0) {
			Double average = (double) total /(double) totalReview;
			Double average1 = Math.round(average*10)/10.0;
			model.addAttribute("average", average1);
		}
		
		if(one.getRoomState().equals("사용중")) {
			RoomRevDTO dto = revr.roomsRev(num);
			model.addAttribute("rev", dto);
		}
		
		
		
		model.addAttribute("total", total);
		model.addAttribute("five", five);
		model.addAttribute("four", four);
		model.addAttribute("three", three);
		model.addAttribute("two", two);
		model.addAttribute("one", low);
		model.addAttribute("totalReview", totalReview);
		
		
		model.addAttribute("room",one); // 객실 하나 정보
		model.addAttribute("review", list);  // 리뷰 정보들
	}
	
	
	
}
