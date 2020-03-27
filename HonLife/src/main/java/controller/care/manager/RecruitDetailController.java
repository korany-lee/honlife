package controller.care.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.care.clean.RecruitDetailService;

@Controller
public class RecruitDetailController {
	@Autowired
	RecruitDetailService recruitDetailService;
	
	@RequestMapping("/manager/detail")
	public String oneSel(@RequestParam("recNum") Integer recNum, Model model) {
		
		recruitDetailService.detail(recNum, model);
		
		return "common/manager/managerview/care/recDetail";
	}
	
}
