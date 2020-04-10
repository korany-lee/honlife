package service.care.clean;


import java.sql.Date;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
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
	
		
		
		System.out.println("pcDate======"+ pc.getRevdate());
		SimpleDateFormat A = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date D = A.parse(pc.getRevdate());
		
		
		Timestamp T = new Timestamp(D.getTime());
		
		crd.setCleanrevDate(T);
		
		System.out.println("insertDate====" + A.parse(pc.getRevdate()));
		 
		crd.setCleanrevDemand(pc.getDemand());
		crd.setCleanrevNo(pc.getRevNo());
		crd.setCleanrevTime(pc.getRevtime());
		crd.setEmployeeNo(pc.getEmpNo());
	
		crd.setRevPay(pc.getPay());
		crd.setUserNo(login.getUserNo());
		 
		registRepository.revChkUp(pc.getEmpNo());
		    
		System.out.println("chkempno==" + pc.getEmpNo());
		
	    registRepository.revIn(crd);
		CleanRevDTO crda = new CleanRevDTO();
		crda.setCleanrevNo(pc.getRevNo());
		crda.setUserNo(login.getUserNo());
	    crda = registRepository.revDetail(crda);
	   
	    model.addAttribute("pc",pc);
	    model.addAttribute("cr",crda);
	 
	 
	
	}
	
	
	public void revDetail(CleanRevCommand crc ,Model model, HttpSession ses) throws ParseException {
		

			LoginDTO login = (LoginDTO) ses.getAttribute("memberInfo");
			CleanRevDTO cr = new CleanRevDTO();

		    String userId = login.getUserId();
		    String userNo = login.getUserNo();
			  Integer pay = Integer.parseInt(crc.getRevPay().replace("원",""));
			 System.out.println("crcDate====="+crc.getCleanrevDate());  
			cr.setCleanfeeSize(crc.getCleanfeeSize());
			cr.setCleanrevAddr(crc.getCleanrevAddr());
			SimpleDateFormat A = new SimpleDateFormat("yyyy-MM-dd");
			
		java.util.Date D = A.parse(crc.getCleanrevDate());
		
			Timestamp T = new Timestamp(D.getTime());
			cr.setCleanrevDate(T);
			cr.setCleanrevDemand (crc.getCleanrevDemand());
			cr.setCleanrevNo(crc.getCleanrevNo());
			cr.setCleanrevTime(crc.getCleanrevTime());
			cr.setEmployeeNo(crc.getEmployeeNo());
			cr.setRevPay(pay);
			cr.setUserNo(login.getUserNo());
			
			
		MemberDTO md = memberRepository.selectOneMem(userId);
    
	
		EmployeeDTO ed = registRepository.empDetail(crc.getEmployeeNo());
			model.addAttribute("mem",md);
		    model.addAttribute("pay",pay);
		    model.addAttribute("emp", ed);
		    model.addAttribute("rev" , cr);
		    model.addAttribute("userId", userId);
		    model.addAttribute("userNo" , userNo);
		    
		    
		 
	}
	
	
	
}
