package controller.stay.room;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Command.Stay.Room.RoomCommand;
import Service.Stay.Room.RoomInsertService;
import Validator.roomCommandValidator;

@Controller
public class RoomController {
	@Autowired
	RoomInsertService roomInsertService;
	
	
	//회원용
	@RequestMapping("/room/size")
	public String roomSize() {
		return "stayView/room/room_sizeType";
	}
	@RequestMapping("/room/floor")
	public String roomFloor() {
		return "stayView/room/room_floorType";
	}
	@RequestMapping("/room/view")
	public String roomView() {
		return "stayView/room/room_ViewType";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//관리자용
	@RequestMapping("/room/list")
	public String roomList() {
		return "common/manager/managerview/room_list";
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
