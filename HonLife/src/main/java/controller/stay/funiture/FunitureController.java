package controller.stay.funiture;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Validator.furnitureCommandValidator;
import command.stay.furniture.FurnitureCommand;
import service.stay.furniture.FurnitureInsertService;

@Controller
public class FunitureController {
	@Autowired
	FurnitureInsertService furnitureInsertService;
	
	
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
	
}
