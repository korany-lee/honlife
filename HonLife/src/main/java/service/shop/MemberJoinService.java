package service.shop;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Model.DTO.MemberDTO;
import command.common.MemberCommand;
import repository.shop.MemberRepository;

@Service
public class MemberJoinService {	
	@Autowired
	private MemberRepository mr;
	
	public void joinMem(MemberCommand mc) {
		MemberDTO member = new MemberDTO();

		String year = mc.getYear();
		//String month = mc.getMonth();

		
		

		//System.out.println("합친 date출력"+birth);
		//SimpleDateFormat dt = new SimpleDateFormat("yyyyMMDD");

			//DateFormat df = new SimpleDateFormat("yyyyMMdd");

			/*try {
				Date date = df.parse(birth);
				member.setUserBirth(date);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			*/

		
		//System.out.println("dto에 넣은 birth출력: "+member.getUserBirth());
		
		member.setUserId(mc.getMemId());
		member.setUserAddr(mc.getRoadAddress()+" "+mc.getDetailAddress());
		System.out.println("dto에 넣은 합친 주소: "+member.getUserAddr());
		member.setUserZone(mc.getZonecode());
		
		member.setUserPw(mc.getPassword());
		member.setUserEmail(mc.getEmail());
		member.setUserGender(mc.getSex());
		member.setUserName(mc.getName());
		member.setUserPh(mc.getMobile());
		mr.insertMem(member);
		
	}
}
