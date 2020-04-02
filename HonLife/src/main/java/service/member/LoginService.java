package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.LoginDTO;
import repository.shop.MemberRepository;

@Service
public class LoginService {
	@Autowired
	MemberRepository mr;
	
	
	public Integer loginAction(String userId,String userPw, Model model,HttpSession session) {
		LoginDTO dto = new LoginDTO();
		String writeId = mr.checkId(userId);
		
		if(writeId!=null) { //아이디가 존재할 때
			dto.setUserId(userId);
			dto.setUserPw(userPw);
			String writePw =mr.checkPw(dto);
			if(writePw!=null) { //비밀번호가 맞을때
				dto.setUserId(userId);
				dto.setUserPw(userPw);
				String userNo = mr.selectNum(dto);
				dto.setUserNo(userNo);
				session.setAttribute("memberInfo", dto);
				return 2;
			}else { //비밀번호가 틀릴 때
				model.addAttribute("noPw", "비밀번호가 일치하지 않습니다");
				return 1;
			}
			
		}else {//아이디가 없을때
			model.addAttribute("noId", "아이디가 존재하지 않습니다");
			return 0;
		}
	}
}
