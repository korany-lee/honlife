package service.shop;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.MemberDTO;
import command.common.MemberCommand;
import repository.shop.MemberRepository;

@Service
public class MemberJoinService {	
	@Autowired
	private MemberRepository mr;
	
	public void joinMem(MemberCommand mc, HttpServletResponse response) {
		MemberDTO member = new MemberDTO();

		String year = mc.getYear();
		Integer month = mc.getMonth();

		String month1 = month.toString();
		System.out.println("string으로 바꾼 month값: "+month1);
		
		Integer day = mc.getDay();
		String day1 = day.toString();
		System.out.println("string으로 바꾼 day값: "+day1);
		
		String month2;
		String z = "0";
		if(month1.length()==1) {
			month2 = z.concat(month1);
		}else {
			month2 = month1;
		}
		String day2;
		String z1 = "0";
		if(day1.length()==1) {
			day2 = z1.concat(day1);
		}else {
			day2 = day1;
		}
		
		String birth = year + month2 + day2;
		System.out.println("합친 date출력"+birth);
		
		SimpleDateFormat dt = new SimpleDateFormat("yyyyMMDD");

		DateFormat df = new SimpleDateFormat("yyyyMMdd");
		
		try {
				Date date = df.parse(birth);
				member.setUserBirth(date);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		System.out.println("dto에 넣은 birth출력: " + member.getUserBirth());
		
		member.setUserId(mc.getMemId());
		member.setUserAddr(mc.getRoadAddress()+" "+mc.getDetailAddress());
		System.out.println("dto에 넣은 합친 주소: "+member.getUserAddr());
		member.setUserZone(mc.getZonecode());
		
		member.setUserPw(mc.getPassword());
		member.setUserEmail(mc.getEmail());
		member.setUserGender(mc.getSex());
		member.setUserName(mc.getName());
		member.setUserPh(mc.getMobile());
		mr.insertMem(member, response);
		
	}
	
	
	
	
	
	
	public void idCheck(String id,Model model) {
		String check = mr.checkId(id);
		System.out.println("아이디 검사결과 = " + check);
		if(check != null) {
			model.addAttribute("msg", "이미 사용중인 아이디 입니다");
			model.addAttribute("num", "2");
		}else {
			model.addAttribute("msg", "사용 가능한 아이디 입니다");
			model.addAttribute("num", "1");
			model.addAttribute("memId", id);
		}
	}
	
	
	
	
	
	
	
	
	
	
}
