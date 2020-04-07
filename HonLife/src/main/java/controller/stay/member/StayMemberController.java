package controller.stay.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.stay.member.MyReservationService;

@Controller
public class StayMemberController {
	@Autowired
	MyReservationService myReservationService;
	
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
	public String review() {
		return "stayView/memberView/member/MyReview";
	}
	
	@RequestMapping("/member/deleteRev")
	public String delete(@RequestParam(value="revNo")String no) {
		myReservationService.allCancel(no);
		return "redirect:/member/MyReservation";
	}
}
