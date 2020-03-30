package controller.care.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.care.clean.InterviewListService;
import service.care.clean.RecruitListService;
import service.manager.ListCountService;

@Controller
public class RecruitListController {
	@Autowired
	private RecruitListService recruitListService;
	
	@Autowired
	private InterviewListService interviewListService;


	@RequestMapping("/manager/recruit")
	public String recList( Model model ) {

		recruitListService.recList(model);

		return "common/manager/managerview/care/list_recruit";
	}


	@RequestMapping("/manager/interview")
	public String interview(Model model) {


		interviewListService.interviewList(model);

		return "common/manager/managerview/care/list_interview";
	}
}
