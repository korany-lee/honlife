package controller.stay.funiture;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.stay.furniture.FurnitureCommand;
import service.stay.furniture.FurnitureInsertService;
import service.stay.furniture.FurnitureListService;

@Controller
public class FunitureController {
	@Autowired
	FurnitureInsertService furnitureInsertService;
	
	@Autowired
	FurnitureListService furnitureListService;
	
	
	//회원용
	@RequestMapping("/funiture/select")
	public String furnitureSelect() {
		return "stayView/memberView/furniture_select";
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
