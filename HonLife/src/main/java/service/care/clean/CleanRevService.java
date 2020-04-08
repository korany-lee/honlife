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
	public void revIn(CleanRevCommand crc, Model model, HttpSession session) {
		CleanRevDTO cr = new CleanRevDTO();

		LoginDTO login = (LoginDTO) session.getAttribute("memberInfo");
        System.out.println("RevService/empNo=" + crc.getEmployeeNo());
        System.out.println("RevService/userNo=" + crc.getUserNo());
        System.out.println("RevService/userId=" + crc.getUserName());
        System.out.println("RevService/revNo=" + crc.getCleanrevNo());	
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
	    registRepository.revIn(cr);
	    model.addAttribute("userId", userId);
	    model.addAttribute("userNo" , userNo);
	    model.addAttribute("rev" , crc);
	 
		EmployeeDTO ed = registRepository.empDetail(crc.getEmployeeNo());
	    model.addAttribute("emp", ed);
	}
}
