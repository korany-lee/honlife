package controller.stay.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.stay.manager.ManagerRevService;
import service.stay.member.MyReservationService;

@Controller
public class StayManagerController {
	@Autowired
	ManagerRevService managerRevService;
	
	@Autowired
	MyReservationService myReservationService;
	
	@RequestMapping("/manager/roomRevList")
	public String roomRevList(Model model) {
		managerRevService.revList(model);
		return "stayView/Reservation/ReservationList";
	}
	
	@RequestMapping("/manager/checkin")
	public void roomCheckIn(@RequestParam(value="revNo")String revNo,@RequestParam(value="roomNo")String roomNum) {
		managerRevService.checkIn(revNo,roomNum);	
	}
	@RequestMapping("/manager/checkout")
	public void roomCheckOut(@RequestParam(value="revNo")String revNo,@RequestParam(value="roomNo")String roomNum) {
		managerRevService.checkOut(revNo,roomNum);	
	}
	
	@RequestMapping("/manager/oneRev")
	public String oneRev(@RequestParam(value="revNo")String revNo,Model model) {
		if(revNo.equals("")) {
			managerRevService.revList(model);
		}else {
			myReservationService.managerRevDetail(revNo, model);
		}
		return "stayView/Reservation/SearchRev";
	}
	
	@RequestMapping("/manager/furnitureRevList")
	public String furnitureRev(Model model) {
		managerRevService.revList(model);
		managerRevService.frevList(model);
		return "stayView/Reservation/FurnitureReservationList";
	}
	@RequestMapping("/manager/todayRevRev")
	public String today(Model model) {
		managerRevService.today(model);
		return "stayView/Reservation/SearchRev";
	}
	@RequestMapping("/manager/furnitureRevDetail")
	public String frevdetail(@RequestParam(value="revNum")String a,Model model) {
		myReservationService.detail(a,model);
		return "stayView/Reservation/frevDetail";
	}
	
}
