package service.stay.room;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.LoginDTO;
import Model.DTO.RoomRevDTO;
import command.stay.room.ReservationCommand;
import net.nurigo.java_sdk.Coolsms;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;
import repository.stay.ReservationRepository;

@Service
public class RoomRevListService {
	@Autowired
	ReservationRepository reservationRepository;
	
	@Autowired
	MemberRegMailService memberRegMailService;
	
	public void revDate(String roomNo,Model model) {
		List<RoomRevDTO> list = reservationRepository.revState(roomNo);
		
		SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd");
		
				
		Date time = new Date();
				
		String today = format1.format(time);
		
		model.addAttribute("today", today);
		model.addAttribute("revState", list);
	}
	
	
	public void revChk(Model model,HttpSession session,String start) {
		System.out.println("체크 들어옴");
		LoginDTO login  = (LoginDTO)session.getAttribute("memberInfo");
		RoomRevDTO dto = reservationRepository.revChk(login.getUserNo());
		System.out.println("맨 위 예약 들어오는거");
		System.out.println("예약시간" + dto.getRoomRevStartDate() +"~" + dto.getRoomRevEndDate());
		memberRegMailService.sendMail(dto.getRoomRevEmail(), dto.getRoomRevNo(),dto.getRoomLiveName(),dto.getRoomRevStartDate());
		
		
		
		model.addAttribute("RevChk", dto);
	
	}
	
	public void sendSMS(ReservationCommand revCommand,HttpServletRequest request) throws Exception {
		System.out.println("메일 보내러 들어옴");
		String api_key = "NCSW6VCZXODXGPOX"; //사이트에서 발급 받은 API KEY 
		String api_secret = "UZMGJ9ADCK2LCTIEWQRITSVRXW3J0B3T"; //사이트에서 발급 받은 API SECRET KEY 
		Message coolsms = new Message(api_key, api_secret); 
		
		
		
		HashMap<String, String> params = new HashMap<String, String>(); 
		String content = revCommand.getLivingName() + "님 예약해주셔서 감사합니다. 고객님의 입실 날짜는 " +revCommand.getStartDate()+" 입니다.";
		params.put("to", revCommand.getPh()); 
		params.put("from", "01071461970"); //사전에 사이트에서 번호를 인증하고 등록하여야 함
		params.put("type", "SMS"); 
		params.put("text", content); //메시지 내용
		params.put("app_version", "test app 1.2"); 
		
		try { 
			JSONObject obj = (JSONObject) coolsms.send(params); 
			System.out.println(obj.toString()); //전송 결과 출력 
			} catch (CoolsmsException e) {
				System.out.println(e.getMessage()); 
				System.out.println(e.getCode()); 
		}
	}

		
}

