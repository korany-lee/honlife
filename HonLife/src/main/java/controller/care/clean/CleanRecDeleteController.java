package controller.care.clean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.care.clean.RecruitDeleteService;
import service.care.clean.RecruitDetailService;
import service.care.clean.RecruitListService;


@Controller
public class CleanRecDeleteController {
@Autowired
	private RecruitDeleteService recruitDeleteService;
	
	@RequestMapping("/care/recruitDel")	
	public String recDelete(@RequestParam(value="recNum") Integer recNum, Model model) {

		recruitDeleteService.recDel(recNum);

		return "redirect:/manager/main";
	}
	
	
}
