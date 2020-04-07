package controller.stay.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.stay.furniture.ReviewCommand;
import service.stay.member.MyReservationService;
import service.stay.member.ReviewService;

@Controller
public class StayMemberController {
	@Autowired
	MyReservationService myReservationService;
	@Autowired
	ReviewService reviewService;
	
	
	@RequestMapping("/member/MyReservation")
	public String myRev(HttpSession session,Model model) {
		myReservationService.myRev(session,model);
		return "stayView/memberView/member/MyReservation";
	}
	
	@RequestMapping("/member/revDetail")
	public String detailRev(@RequestParam(value="revNum")String revNo,Model model) {
		myReservationService.detail(revNo,model);
		return "stayView/memberView/member/RevDetail";
	}
	
	@RequestMapping("/member/MyReview")
	public String review(HttpSession session,Model model) {
		myReservationService.myRev(session, model);
		return "stayView/memberView/member/MyReview";
	}
	
	@RequestMapping("/member/deleteRev")     //모든 예약 삭제
	public String delete(@RequestParam(value="no")String no) {
		myReservationService.allCancel(no);
		return "redirect:/member/MyReservation";
	}
	
	@RequestMapping("/member/oneFrevCancel")
	public void oneFrevDelete(@RequestParam(value="furnitureNo") String fNum,@RequestParam(value="revNo")String rNum) {
		myReservationService.oneFrevCancel(fNum,rNum);
 
	}
	@RequestMapping("/member/writeReview")
	public String writeReview(@RequestParam(value="no")String num,Model model) {
		System.out.println("write리뷰 들어옴");
		myReservationService.detail(num, model);
		return "stayView/memberView/member/ReviewWrite";
	}
	
	@RequestMapping("/member/reviewInsert")
	public String reviewInsert(ReviewCommand review) {
		reviewService.insert(review);
		return "redirect:/member/MyReview";
	}
	
}
