package service.care.clean;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
import command.care.clean.PayCommand;
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
						
	public void detail(HttpSession session,String revNo,String uname,Integer uph,String uemail,String revaddr,
									     String revdate,String revtime,String empname, Integer empph, String empNo,
										 Integer size,String demand,String pay,Model model) throws ParseException  {
	
		CleanRevDTO cr = new CleanRevDTO();
		MemberDTO mdto = new MemberDTO();
		LoginDTO login = (LoginDTO)session.getAttribute("memberInfo");		
		mdto = memberRepository.selectOneMem(login.getUserId());
		String Apay = pay.replace("원", "");
		Integer Bpay = Integer.parseInt(Apay);
		cr.setRevPay(Bpay);
		System.out.println("detaildate=" +revdate);
	
		
		cr.setCleanfeeSize(size);
		cr.setCleanrevAddr(revaddr);
		SimpleDateFormat A = new SimpleDateFormat("yyyy-MM-dd");
		    Date D =  A.parse(revdate);
		    Timestamp T = new Timestamp(D.getTime());
		    
		    
		  

		cr.setCleanrevDate(T);
		cr.setCleanrevDemand(demand);
		cr.setCleanrevNo(revNo);
		cr.setCleanrevTime(revtime);
		cr.setEmployeeNo(empNo);
		cr.setUserNo(login.getUserNo());
	

	    model.addAttribute("empname",empname);
	    model.addAttribute("empph",empph);
	    model.addAttribute("rev",cr);
		model.addAttribute("pay", pay);
		model.addAttribute("revNo" , revNo);
		model.addAttribute("member", mdto);
	}

	
}
