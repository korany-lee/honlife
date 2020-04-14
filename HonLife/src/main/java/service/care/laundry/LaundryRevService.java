package service.care.laundry;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.LoginDTO;
import Model.DTO.MemberDTO;
import Model.DTO.laundry.LaundryRevDTO;
import command.care.clean.LaundryRevCommand;

import repository.care.RegistRepository;
import repository.shop.MemberRepository;

@Service
public class LaundryRevService {
	@Autowired
	RegistRepository registrepository;
	@Autowired
	MemberRepository memberRepository;

	public Integer revInsert(LaundryRevCommand lc, HttpSession ses,Model model ) {
		LaundryRevDTO ld = new LaundryRevDTO();
		LoginDTO login = (LoginDTO)ses.getAttribute("memberInfo");

		MemberDTO md = memberRepository.selectOneMem(login.getUserId());

		ld.setLaundryrevAddr(lc.getLaundryrevAddr());
		SimpleDateFormat F = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat FF = new SimpleDateFormat("yyyy-MM-dd");

		Date D = null;
		Date DD = null;
		try {					

			DD = FF.parse(lc.getLaundryrevRecdate());
			D = F.parse(lc.getLaundryrevDate());


			Timestamp TT = new Timestamp(DD.getTime());
			Timestamp T = new Timestamp(D.getTime());
			ld.setLaundryrevRecdate(TT);
			ld.setLaundryrevDate(T);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}



		ld.setLaundryrevNo(lc.getLaundryrevNo());





		ld.setUserNo(login.getUserNo());


		Integer i = registrepository.laundryRevIn(ld);

		ld = registrepository.laundryDetail(lc.getLaundryrevNo());
		model.addAttribute("mem",md);
		model.addAttribute("ld",ld);

		return i;
	}

	public void list(Model model, HttpSession ses) {

	
		List<LaundryRevDTO> raundryDTO = registrepository.laundryList();

		
	
		model.addAttribute("laundryList",raundryDTO);
	}


}
