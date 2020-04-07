package service.care.clean;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.LoginDTO;
import Model.DTO.MemberDTO;
import Model.DTO.care.EmployeeDTO;
import repository.care.RegistRepository;
import repository.shop.MemberRepository;

@Service
public class EmployeeListService {
	
	@Autowired
	RegistRepository registRepository;
	@Autowired
	MemberRepository memberRepository;

	
	public void empList(Model model,HttpSession session) {
		
		
		List<EmployeeDTO> empList = registRepository.empList();
		LoginDTO login = (LoginDTO)session.getAttribute("memberInfo");
		
	
	
	
		model.addAttribute("userNo",login.getUserNo());
		model.addAttribute("empList",empList);
		
	}
	
	
	
	
}
