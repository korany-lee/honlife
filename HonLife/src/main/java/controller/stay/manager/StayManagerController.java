package controller.stay.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.stay.furniture.FurnitureListService;
import service.stay.manager.ManagerRevService;
import service.stay.member.MyReservationService;
import service.stay.room.RoomListService;

@Controller
public class StayManagerController {
	@Autowired
	ManagerRevService managerRevService;
	
	@Autowired
	MyReservationService myReservationService;
	
	@Autowired
	FurnitureListService furnitureListService;
	
	@Autowired
	RoomListService roomListService;
	
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
	
	@RequestMapping("/manager/roomregister")
	public String roomRegister() {
		return "common/manager/managerview/room_register";
	}
	
	@RequestMapping("/manager/roomlist")   //
	public String roomList() {
		return "stayView/room/room_list";
	}
	
	@RequestMapping("/manager/furniturelist")    //관리자에서 보는 리스트
	public String furnitureList(Model model) {
		furnitureListService.allSelect(model);
		
		return "stayView/funiture/funiture_list";
	}
	
	@RequestMapping("/manager/furnitureSetting")
	public String setting (@RequestParam(value="revNum")String a) {
		myReservationService.settingFinsish(a);
		return "redirect:/manager/main";
	}
	
	@RequestMapping("/manager/floorDetail")
	public String floorDetail(@RequestParam(value="floor")String num,Model model) {
		roomListService.floorSelect(num,model);
		return "stayView/room/room_floorDetail";
	}
	
	@RequestMapping("/manager/roomDetail")
	public String roomDetail(@RequestParam(value="roomNum")String no,Model model) {
		roomListService.oneSelect(no, model);
		return "stayView/room/roomDetail";
	}
	
	@RequestMapping("/manager/searchFurniture")
	public String search(@RequestParam(value="content")String content,Model model) {
		furnitureListService.searchList(content,model);
		return "stayView/funiture/searchFurniture";
	}
	
	@RequestMapping("/manager/realTime")
	public String real() {
		
		return "stayView/Reservation/real";
	}
	
	
}
