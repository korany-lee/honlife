package controller.stay.room;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RoomController {
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
}
