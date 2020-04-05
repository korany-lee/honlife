package controller.stay.funiture;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.stay.furniture.FurnitureCommand;
import service.stay.furniture.FurnitureDateService;
import service.stay.furniture.FurnitureInsertService;
import service.stay.furniture.FurnitureListService;
import service.stay.furniture.FurnitureRevInsertService;
import service.stay.furniture.FurnitureRevListService;
import service.stay.furniture.FurnitureWishListService;
import service.stay.furniture.RoomRevMatchService;

@Controller
public class FunitureController {
	@Autowired
	FurnitureInsertService furnitureInsertService;
	
	@Autowired
	FurnitureListService furnitureListService;
	
	@Autowired
	RoomRevMatchService roomRevMatchService;
	
	@Autowired
	FurnitureRevListService furnitureRevListService;
	
	@Autowired
	FurnitureDateService furnitureDateService;
	
	@Autowired
	FurnitureWishListService furnitureWishListService;
	
	@Autowired
	FurnitureRevInsertService furnitureRevInsertService;
	//회원용
	
	
	
	@RequestMapping("/funiture/select")
	public String furnitureSelect(@RequestParam("type")String furnitureType,Model model) {
		if(furnitureType.equals("거실용품")) {
			furnitureListService.selectType(furnitureType, model);
			return "stayView/memberView/furniture_living";
		}else if(furnitureType.equals("주방용품")) {
			furnitureListService.selectType(furnitureType, model);
			return "stayView/memberView/furniture_kitchen";
		}else if(furnitureType.equals("침실용품")) {
			furnitureListService.selectType(furnitureType, model);
			return "stayView/memberView/furniture_bedroom";
		}else {
			furnitureListService.selectType(furnitureType, model);
			return "stayView/memberView/furniture_etc";
		}
		
		
	}
	
	@RequestMapping("/funiture/choice")
	public String furnitureChoice(@RequestParam("type")String furnitureType,Model model) {
		furnitureListService.selectType(furnitureType, model);
		return "stayView/memberView/furniture_List";
	}
	
	@RequestMapping("funiture/oneSelect")
	public String oneSelect(@RequestParam("content")String content, @RequestParam("type")String type,Model model) {
		furnitureListService.searchSelect(content,type,model);
		return "stayView/memberView/furniture_List";
	}
	
	@RequestMapping("/funiture/furnitureDetail")
	public String furnitureDetail(@RequestParam("furnitureNo")String num,Model model) {
		furnitureListService.oneSelect(num, model);
		furnitureRevListService.revDate(num,model);
		return "stayView/memberView/furniture_detail";
	}
	
	@RequestMapping("/funiture/furnitureWishInsert")    //장바구니에 담기
	public String furnitureWish(@RequestParam(value="furnitureNo") String furnitureNo,HttpSession session) {
		System.out.println("장바구니 넣기 컨트롤러 들어옴");
		furnitureInsertService.wishInsert(furnitureNo,session);
		return "redirect:/funiture/furnitureRev";
		
	}
	@RequestMapping("/funiture/furnitureWishList") //장바구니로 이동
	public String wishList(@RequestParam(value="start")Timestamp startDate,@RequestParam(value="end")Timestamp endDate,
			@RequestParam(value="revNum") String revNo,HttpSession session,Model model) {
		furnitureWishListService.wishList(session,model,startDate,endDate,revNo);
		return "stayView/memberView/furniture_wishList";
	}
	
	@RequestMapping("/funiture/furnitureRev")  //방 예약선택
	public String furnitureRev(HttpSession session,Model model) {
		roomRevMatchService.roomRevFind(session, model);
		return "stayView/memberView/furniture_roomRevSelect";
	}
	
	@RequestMapping("/funiture/furnitureList")  //방 예약 선택 후 예약가능 가구 리스트
	public String furnitureList(@RequestParam(value="revNo")String revNum,Model model) {
		furnitureDateService.fRevChk(revNum,model);	
		return "stayView/memberView/furnitureList";
	}
	
	@RequestMapping("/funiture/payment")  //카카오 페이지로 이동
	public String payment(@RequestParam(value="price")Integer Fee,@RequestParam(value="rev")String revNum,Model model) {
		model.addAttribute("price", Fee);	
		model.addAttribute("revNo", revNum);
		return "stayView/memberView/furniturePay";
	}
	
	@RequestMapping("/funiture/furnitureRevFinish")//결제 완료되면 insert
	public String payFinish(@RequestParam(value="revNo")String revNum,Model model) {
		System.out.println("컨트롤러는 들어왔음");
		furnitureRevInsertService.furnitureRevInsert(revNum,model);
		return "redirect:/stayMain";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	//관리자용
	@RequestMapping("/funiture/register")
	public String funitureRegister() {
		return "stayView/funiture/funiture_register";
	}

	@RequestMapping(value="/funiture/furnitureRegisterAction" ,method=RequestMethod.POST)
	public String registerAction(FurnitureCommand furnitureCommand,Errors errors,HttpServletRequest request) {
		
		/*
		 * new furnitureCommandValidator().validate(furnitureCommand,errors);
		 * if(errors.hasErrors()) { return "stayView/funiture/funiture_register"; }
		 */
		 
		furnitureInsertService.furnitureInsert(furnitureCommand,request);
		return "common/manager/managerview/managermain";
	}
	
	@RequestMapping("/funiture/list")    //관리자에서 보는 리스트
	public String furnitureList(Model model) {
		furnitureListService.allSelect(model);
		
		return "stayView/funiture/funiture_list";
	}
	
	@RequestMapping("/funiture/selectFurniture")   //선택된 가구 타입만 출력
	public String selectFurniture(@RequestParam(value="type")String type,Model model) {
		if(type.equals("전체보기")) {
			System.out.println("type=" + type);
			furnitureListService.allSelect(model);
			return "stayView/funiture/furniture_selectedType";
		}else {
			System.out.println("type=" + type);
			furnitureListService.selectType(type,model);
			return "stayView/funiture/furniture_selectedType";
		}
	
		
	}
	@RequestMapping("/funiture/detail") //가구 상세보기
	public String detail(@RequestParam(value="no")String no, Model model) {	
		
		furnitureListService.oneSelect(no,model);
		return "stayView/funiture/furniture_detail";
	}
	
}
