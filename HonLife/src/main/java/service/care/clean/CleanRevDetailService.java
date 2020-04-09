package service.care.clean;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.LoginDTO;
import Model.DTO.MemberDTO;
import Model.DTO.care.CleanRevDTO;
import Model.DTO.care.EmployeeDTO;
import repository.care.RegistRepository;
import repository.shop.MemberRepository;

@Service
public class CleanRevDetailService {
	@Autowired
	RegistRepository registRepository;
	@Autowired
	MemberRepository memberRepository;
	@Autowired 
	EmployeeDetailService employeeDetailService;
	
	public void detail(HttpSession session,String userId,String userNo, String revNo,Model model) {
		CleanRevDTO cdto = new CleanRevDTO();	
		MemberDTO mdto =	new MemberDTO();
		
		
		cdto.setUserNo(userNo);
		cdto.setCleanrevNo(revNo);
		
	
		cdto = registRepository.revDetail(cdto);
		
		mdto = memberRepository.selectOneMem(userId);
			
			
	
		
		model.addAttribute("rev", cdto);
		model.addAttribute("member", mdto);
	}
	
	public void sucDetail(String revNo ,Model model, HttpSession ses ) {
		
		LoginDTO login = (LoginDTO)ses.getAttribute("memberInfo");
		
		
		
		CleanRevDTO cd = new CleanRevDTO();
		cd.setCleanrevNo(revNo);
		  cd.setUserNo(login.getUserNo());
		  cd = registRepository.successDetail(cd);
		  
		 
		
		  String empNo = cd.getEmployeeNo(); 
		  registRepository.revChkUp(empNo);
		  model.addAttribute("suc",cd);
		 
	}
	
}
