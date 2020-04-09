package service.care.clean;


import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.LoginDTO;
import Model.DTO.MemberDTO;
import Model.DTO.care.CleanRevDTO;
import Model.DTO.care.EmployeeDTO;
import command.care.clean.CleanRevCommand;
import command.care.clean.PayCommand;
import repository.care.RegistRepository;
import repository.shop.MemberRepository;

@Service
public class CleanRevService {
 @Autowired
 RegistRepository registRepository;
 @Autowired
 MemberRepository memberRepository;
	public void revIn(PayCommand pc, Model model, HttpSession ses) throws ParseException {
		LoginDTO login = (LoginDTO) ses.getAttribute("memberInfo");
		CleanRevDTO crd = new CleanRevDTO();
		crd.setCleanfeeSize(pc.getSize());
		crd.setCleanrevAddr(pc.getRevaddr());
		System.out.println(pc.getRevdate());
		
		
		SimpleDateFormat F = new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy", Locale.US);
		SimpleDateFormat FF = new SimpleDateFormat("yyyy-MM-dd", Locale.KOREA);
		Date D = F.parse(pc.getRevdate());
		
		String DD = FF.format(D);
		
		
		crd.setCleanrevDate(FF.parse(DD));
		crd.setCleanrevDemand(pc.getDemand());
		crd.setCleanrevNo(pc.getRevNo());
		crd.setCleanrevTime(pc.getRevtime());
		crd.setEmployeeNo(pc.getEmpNo());
		
		crd.setRevPay(pc.getPay());
		crd.setUserNo(login.getUserNo());
		 
		registRepository.revChkUp(pc.getEmpNo());
		    
		System.out.println("chkempno==" + pc.getEmpNo());
	
	    registRepository.revIn(crd);
	   
	    model.addAttribute("pc",pc);
	 
	 
	
	}
	
	
	public void revDetail(CleanRevCommand crc ,Model model, HttpSession ses) throws ParseException {
		

			LoginDTO login = (LoginDTO) ses.getAttribute("memberInfo");
		
	    
		   String pay = crc.getRevPay().replace("원","");
    
		    String userId = login.getUserId();
		    String userNo = login.getUserNo();
	
		EmployeeDTO ed = registRepository.empDetail(crc.getEmployeeNo());
		    model.addAttribute("pay",pay);
		    model.addAttribute("emp", ed);
		    model.addAttribute("rev" , crc);
		    model.addAttribute("userId", userId);
		    model.addAttribute("userNo" , userNo);
		    
		    
		 
	}
	
	
	
}
