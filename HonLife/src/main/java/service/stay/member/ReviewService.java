package service.stay.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Model.DTO.ReviewDTO;
import command.stay.furniture.ReviewCommand;
import repository.stay.ReservationRepository;
import repository.stay.ReviewRepository;


@Service
public class ReviewService {
	@Autowired
	ReviewRepository reviewRepository;
	
	@Autowired
	ReservationRepository reservationRepository;
	public void insert (ReviewCommand rc) {
		ReviewDTO dto = new ReviewDTO();
		dto.setRoomRevNo(rc.getRevNo());
		dto.setUserNo(rc.getUserNo());
		dto.setRoomNo(rc.getRoomNo());
		dto.setReview(rc.getReview());
		dto.setWriter(rc.getWriter());
		dto.setScore(rc.getScore());
		
		reviewRepository.reviewInsert(dto);
		
		reservationRepository.updateReviewChk(rc.getRevNo());
		
	}
}
