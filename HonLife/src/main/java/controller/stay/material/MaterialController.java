package controller.stay.material;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import command.stay.material.MaterialCommand;
import service.stay.material.MaterialInsertService;

@Controller
public class MaterialController {
	@Autowired
	MaterialInsertService materialInsertService;
	
	@RequestMapping("/material/register")
	public String materialRegister() {
		return "stayView/material/material_register";
	}
	
	@RequestMapping("/material/materialRegisterAction")
	public String materialRegisterAction(MaterialCommand materialCommand,HttpServletRequest request) {
		materialInsertService.materialInsert(materialCommand,request);
		return "common/manager/managerview/managermain";
	}
}
