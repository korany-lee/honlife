package service.care.clean;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.LoginDTO;
import Model.DTO.MemberDTO;
import Model.DTO.care.CleanOrderDTO;
import Model.DTO.care.CleanRevDTO;
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
		

		String userId = login.getUserId();
        MemberDTO mdto =  memberRepository.selectOneMem(userId);
       	model.addAttribute("empList",empList);
        model.addAttribute("member" ,mdto);
        model.addAttribute("userId",userId);
		model.addAttribute("userNo",login.getUserNo());

		
	}
	
	public void empsel(String time, String date, Model model) {
		CleanRevDTO cr = new CleanRevDTO();
		cr.setCleanrevTime(time);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd");
		Date newdate;
		try {
			newdate = sdf.parse(date);
			Timestamp T = new Timestamp(newdate.getTime());
			 cr.setCleanrevDate(T);
				System.out.println("empservice=" + time);
				System.out.println("empservice date=" + date);
				
				
				List<EmployeeDTO> empList = registRepository.empsel(cr);
				
				
				model.addAttribute("empList", empList);
				
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		 
	
	}
	
	public void receivingemp(Model model, String orderNo) {
	System.out.println("serviceEmp =====" + orderNo);
	 String emp = 	registRepository.reOrder(orderNo);
		
	  model.addAttribute("emp" ,emp);
	}
	
	
	
	
}
