package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.LoginDTO;
import Model.DTO.care.EmpLogin;
import Model.DTO.care.EmployeeDTO;
import command.care.clean.ManagerLogin;
import repository.care.RegistRepository;
import repository.shop.MemberRepository;

@Service
public class LoginService {
	@Autowired
	MemberRepository mr;
	@Autowired
	RegistRepository rr;
	
	
	public Integer loginAction(String userId,String userPw, Model model,HttpSession session ,ManagerLogin ml) {
		LoginDTO dto = new LoginDTO();		
		
		/*
		 * String empId = mr.checkEmpId(userId);
		 * 
		 * if(ml.getManagerLogin()) { EmpLogin empIn = new EmpLogin(); EmployeeDTO
		 * empDTO = new EmployeeDTO(); empDTO.setEmployeeNo(userId); empDTO =
		 * rr.empDetail(userId); empDTO.setEmployeeJumin(empDTO.getEmployeeJumin());
		 * 
		 * String empDbPw = empDTO.getEmployeeJumin().toString();
		 * 
		 * 
		 * if(empId != null) {
		 * 
		 * empIn.setEmpNo(userId); empIn.setEmpJumin(empDbPw);
		 * 
		 * String empPw = mr.checkEmpPw(empIn);
		 * 
		 * 
		 * if( empPw != null && userPw.equals(empDbPw.substring(0,4)) ) {
		 * 
		 * empIn.setEmpNo(userId); empIn.setEmpJumin(empDbPw);
		 * 
		 * String empClass = mr.classSel(empIn); empIn.setEmpClass(empClass);
		 * 
		 * session.setAttribute("empInfo", empIn);
		 * 
		 * return 2; }else { model.addAttribute("noPw",
		 * "비밀번호가 일치하지 않습니다 \n관리부서에 확인해주세요"); return 1; }
		 * 
		 * 
		 * }else {
		 * 
		 * model.addAttribute("noId", "아이디가 존재하지 않습니다\n관리부서에 확인해주세요"); return 0; }
		 * 
		 * }
		 */
		 
		
		String writeId = mr.checkId(userId);		
	
		
		if(writeId!=null) { //아이디가 존재할 때
			dto.setUserId(userId);
			dto.setUserPw(userPw);
							
			String writePw =mr.checkPw(dto);
				
			if(writePw!=null ) { //비밀번호가 맞을때
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
