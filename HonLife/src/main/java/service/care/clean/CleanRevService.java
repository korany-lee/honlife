package service.care.clean;


import java.sql.Date;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.LoginDTO;
import Model.DTO.MemberDTO;
import Model.DTO.care.CleanRevDTO;
import Model.DTO.care.EmployeeDTO;
import Model.DTO.care.RevChkDTO;
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
		RevChkDTO rc = new RevChkDTO();
		
		System.out.println("pcDate======"+ pc.getRevdate());
		SimpleDateFormat A = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date D = A.parse(pc.getRevdate());				
		Timestamp T = new Timestamp(D.getTime());	
		
		
		    rc.setRevChk(1);
			rc.setCleanrevDate(T);
			rc.setCleanrevTime(pc.getRevtime());
			rc.setEmployeeNo(pc.getEmpNo());
			registRepository.chkIn(rc);
		    rc = registRepository.selchk(rc);

		  
		    System.out.println("rc.get/time" + rc.getCleanrevTime());
		    System.out.println("rc.get/empno" + rc.getEmployeeNo());
		    System.out.println("rc.getchk" + rc.getRevChk());
		    System.out.println("rc.getcount" + rc.getRevCount());
		    System.out.println("rc.getdate" + rc.getCleanrevDate());
		    
		    
		crd.setCleanrevDate(T);
		crd.setCleanfeeSize(pc.getSize());
		crd.setCleanrevAddr(pc.getRevaddr());	
		crd.setCleanrevDemand(pc.getDemand());
		crd.setCleanrevNo(pc.getRevNo());
		crd.setCleanrevTime(pc.getRevtime());
		crd.setEmployeeNo(pc.getEmpNo());	
		crd.setRevPay(pc.getPay());
		crd.setUserNo(login.getUserNo());
		crd.setRevChk(rc.getRevChk());
		crd.setRevCount(rc.getRevCount());
		
		
		/* registRepository.revChkUp(pc.getEmpNo()); */
		System.out.println("revchk=====" + rc.getRevChk());
		System.out.println("revcount=====" + rc.getRevCount());

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
	
	public void list(Model model) {
		
		List<CleanRevDTO> crList = registRepository.revList();
		
		
		model.addAttribute("cl",crList);
		
	}
	
	
	
}
