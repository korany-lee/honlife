package controller.stay.room;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Validator.roomCommandValidator;
import command.stay.room.ReservationCommand;
import command.stay.room.RoomCommand;
import service.stay.room.DateCheckService;
import service.stay.room.RoomInsertService;
import service.stay.room.RoomListService;
import service.stay.room.RoomRevInsertService;
import service.stay.room.RoomRevListService;

@Controller
public class RoomController {
	@Autowired
	RoomInsertService roomInsertService;
	
	@Autowired
	RoomListService roomListService;
	
	@Autowired
	DateCheckService dateCheckService;
	
	@Autowired
	RoomRevInsertService roomRevInsertService;
	
	@Autowired
	RoomRevListService roomRevListService;
	
	
	//회원용
	@RequestMapping("/room/size")   //면적별 안내 페이지 이동
	public String roomSize(String SmallType,Model model) {
		return "stayView/memberView/room_size";
	}
	@RequestMapping("/room/sizeSelect")   //면적별 안내 페이지에서 면적 선택
	public String sizeSelect(@RequestParam(value="size")String size,Model model) {
		roomListService.sizeSelect(size, model);
		return "stayView/memberView/roomList"; 
	}

	@RequestMapping("/room/view")
	public String roomView() {
		return "stayView/memberView/room_view";
	}
	@RequestMapping("/room/viewSelect")
	public String viewSelect(@RequestParam(value="view")String view,Model model) {      //뷰별 안내 페이지에서 뷰 선택
		roomListService.viewSelect(view,model);
		return "stayView/memberView/roomList"; 
	}
	
	@RequestMapping("/room/floor")
	public String roomFloor() {
		return "stayView/memberView/room_floor";
	}
	
	@RequestMapping("/room/floorSelect")
	public String floorSelect(@RequestParam(value="floor")String floor,Model model) {      //뷰별 안내 페이지에서 뷰 선택
		roomListService.floorSelect(floor,model);
		return "stayView/memberView/roomList"; 
	}
	
	@RequestMapping("/room/detail")
	public String roomDetail(@RequestParam(value="roomNo")String num,Model model) {
		roomListService.oneSelect(num,model);
		roomRevListService.revDate(num,model);
		return "stayView/memberView/room_detail";
	}
	
	@RequestMapping("/room/dateCheck")     //예약날짜 설정
	public String dateSelect(@RequestParam(value="room") String roomNo,HttpServletRequest request) {
		request.setAttribute("roomNo", roomNo);
		return "stayView/memberView/TimeCheck";
	}
	
	@RequestMapping("/room/ReservationTimeCheck")  //방 예약 여부 확인
	public String dateCheck(@RequestParam(value="startdate")String start,@RequestParam(value="enddate")String end,
			@RequestParam(value="roomNo")String room, Model model) {
			String abc = dateCheckService.check(start,end,room,model);
			if(abc==null) {
				return "stayView/memberView/room_reservation";		
			}else {
				model.addAttribute("roomNo", room);
				return "stayView/memberView/room_fail";
			}		
	}
	
	@RequestMapping("/room/payment")    //카카오페이 결제창으로
	public String pay(ReservationCommand revCommand,Model model) {
		model.addAttribute("rev", revCommand);
		System.out.println("날짜값=" +revCommand.getStartDate());
		return "stayView/memberView/kakaoPay";
	}
	
	@RequestMapping("/room/reservationFinish")   //예약정보 저장
	public String paySuccess(ReservationCommand revCommand,Model model) {
		roomRevInsertService.revInsert(revCommand,model);
		return null;
	}
	
	@RequestMapping("/room/reservationFail")   //예약정보 저장
	public String payFail(@RequestParam(value="roomNo")String roomNo) {
		
		return "stayView/memberView/room_fail";
	}
	
	
	
	

	
	
	
	
	
	//관리자용
	@RequestMapping("/room/list")   //객실 리스트 이동
	public String roomList() {
		return "stayView/room/room_list";
	}
	@RequestMapping("/room/selectBigType")
	public String bigType(@RequestParam(value="BigType")String BigType,Model model) {
		if(BigType.equals("floor")) {
			return "stayView/room/floor_room";
		}else if(BigType.equals("size")) {
			return "stayView/room/size_room";
		}else if(BigType.equals("view")) {
			return "stayView/room/view_room";
		}
		
		return null;
	}
	
	@RequestMapping("/room/selectSmallType")
	public String smallType(@RequestParam(value="BigType")String BigType, @RequestParam(value="SmallType") String SmallType,Model model) {
		roomListService.execute(BigType,SmallType,model);
		return "stayView/room/smallType_room";
	}
	
	
	@RequestMapping("/room/register")
	public String roomRegister() {
		return "common/manager/managerview/room_register";
	}
	
	@RequestMapping(value="/room/roomRegisterAction" ,method=RequestMethod.POST)
	public String roomRegisterAction(RoomCommand roomCommand,Errors errors,HttpServletRequest request) {
		
		  new roomCommandValidator().validate(roomCommand,errors);
		  if(errors.hasErrors()) { 
			  return "common/manager/managerview/room_register"; 
		  }
		 
		roomInsertService.roomInsert(roomCommand,request);
		return "common/manager/managerview/managermain";
	}
	
	
	
}
