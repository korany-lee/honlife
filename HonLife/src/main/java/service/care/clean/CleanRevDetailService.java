package service.care.clean;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.LoginDTO;
import Model.DTO.MemberDTO;
import Model.DTO.care.CleanRevDTO;
import repository.care.RegistRepository;
import repository.shop.MemberRepository;

@Service
public class CleanRevDetailService {
	@Autowired
	RegistRepository registRepository;
	@Autowired
	MemberRepository memberRepository;
	
	public void detail(HttpSession session,String userId,String userNo, String revNo,Model model) {
		CleanRevDTO cdto = new CleanRevDTO();	
		MemberDTO mdto =	new MemberDTO();
		cdto.setCleanrevNo(revNo);
		cdto.setUserNo(userNo);
		
		cdto = registRepository.revDetail(cdto);
		mdto = memberRepository.selectOneMem(userId);
			
			
	
		
		model.addAttribute("rev", cdto);
		model.addAttribute("member", mdto);
		
		
	}
	
}
