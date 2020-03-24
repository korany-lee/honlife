package controller.care.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.care.clean.RecruitListService;

@Controller
public class RecruitListController {
@Autowired
RecruitListService recruitListService;

	
@RequestMapping("/manager/recruit")
public String recList( Model model ) {
	
	recruitListService.recList(model);
	
	return "common/manager/managerview/list_recruit";
}
}
