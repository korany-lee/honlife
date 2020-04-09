package service.care.clean;


import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.LoginDTO;
import Model.DTO.MemberDTO;
import Model.DTO.care.CleanRevDTO;
import Model.DTO.care.EmployeeDTO;
import command.care.clean.CleanRevCommand;
import repository.care.RegistRepository;
import repository.shop.MemberRepository;

@Service
public class CleanRevService {
 @Autowired
 RegistRepository registRepository;
 @Autowired
 MemberRepository memberRepository;
	public void revIn(String revNo, Model model, HttpSession ses) {
		LoginDTO login = (LoginDTO) ses.getAttribute("memberInfo");
		CleanRevDTO crd = new CleanRevDTO();
		crd.setUserNo(login.getUserNo());
		crd.setCleanrevNo(revNo);
		crd = registRepository.revDetail(crd);

	    registRepository.revIn(crd);
	    
	    model.addAttribute("suc",crd);
	 
	 
	
	}
	public void revDetail(CleanRevCommand crc ,Model model, HttpSession ses) {
			
			CleanRevDTO cr = new CleanRevDTO();

			LoginDTO login = (LoginDTO) ses.getAttribute("memberInfo");
			cr.setCleanrevNo(crc.getCleanrevNo());
			cr.setUserNo(crc.getUserNo());
			cr.setEmployeeNo(crc.getEmployeeNo());
		    cr.setCleanfeeSize(crc.getCleanfeeSize());
		    String pay= crc.getRevPay().replace("원","");
		    cr.setRevPay(Integer.parseInt(pay));
		    
		    System.out.println(pay);
		    Date revDate = new Date(crc.getCleanrevDate().getTime());
		    cr.setCleanrevDate(revDate);
		
		    cr.setCleanrevAddr(crc.getCleanrevAddr());
		    cr.setCleanrevDemand(crc.getCleanrevDemand());
		    
		   
		    cr.setCleanrevTime(crc.getCleanrevTime());
		    System.out.println("Pay" + Integer.parseInt(pay) );
		    
		    
		    String userId = login.getUserId();
		    String userNo = login.getUserNo();
	
		EmployeeDTO ed = registRepository.empDetail(crc.getEmployeeNo());
		    model.addAttribute("emp", ed);
		    model.addAttribute("rev" , crc);
		    model.addAttribute("userId", userId);
		    model.addAttribute("userNo" , userNo);
		    
		    
		 
	}
	
	
	
}
