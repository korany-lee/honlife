package service.care.laundry;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;

import Model.DTO.LoginDTO;
import command.care.clean.LaundryRevCommand;
import command.care.clean.PayCommand;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;
import repository.shop.MemberRepository;

public class SendSMSService {
	@Autowired
	MemberRepository mr;
	
	public void strSend(LaundryRevCommand lc,HttpServletRequest req ) {
		String api_key = "NCSW6VCZXODXGPOX"; //사이트에서 발급 받은 API KEY 
		String api_secret = "UZMGJ9ADCK2LCTIEWQRITSVRXW3J0B3T"; //사이트에서 발급 받은 API SECRET KEY 
		Message coolsms = new Message(api_key, api_secret); 
			
		HashMap<String, String> params = new HashMap<String, String>(); 
		String content = "안녕하세요 "+ lc.getUserName() +" 님 \n"
							  + " HonCare 세탁 서비스입니다\n "
							  + "고객님이 신청하신 예약이 접수되었습니다.\n"			              
							  + "예약 번호: " + lc.getLaundryrevNo() +"\n"	
							  + "희망 수거 날짜: " + lc.getLaundryrevDate() +"\n"					
							  + "희망 배송 날짜: " + lc.getLaundryrevRecdate()+"\n"							
							  + "수거 장소: " + lc.getLaundryrevAddr()+"\n"			
							  + "담당 기사분께 연락드려 수거하겠습니다\n"
							  + "좋은 하루 되세요~";
	
		
		params.put("to", lc.getUserPh()); 
		params.put("from", "01071461970"); //사전에 사이트에서 번호를 인증하고 등록하여야 함
		params.put("type", "LMS"); 
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

		
	public void cleanSvs(PayCommand pc) {
		
		String api_key = "NCSW6VCZXODXGPOX"; //사이트에서 발급 받은 API KEY 
		String api_secret = "UZMGJ9ADCK2LCTIEWQRITSVRXW3J0B3T"; //사이트에서 발급 받은 API SECRET KEY 
		Message coolsms = new Message(api_key, api_secret); 
		
		HashMap<String, String> params = new HashMap<String, String>(); 
		String content = " HonCare 세탁 서비스입니다 \n"
				         + "[예약 접수]"
				         + "예약 번호: " + pc.getRevNo()+"\n"	
				         + "예약일시: " + pc.getRevdate()+" / "+pc.getRevtime()+"시\n"									         				         							
				         + "장소: " + pc.getRevaddr()+"\n"			
				         + "요청사항: " + pc.getDemand()+"\n" 
				         + "아래 주소로 예약 확인을 해주세요! "
				         + "http://192.168.4.104:8080/project/care/ok?revNo="+pc.getRevNo()+"empNo="+pc.getEmpNo();
	
		
		params.put("to",pc.getEmpph().toString()); 
		params.put("from", "01071461970"); //사전에 사이트에서 번호를 인증하고 등록하여야 함
		params.put("type", "LMS"); 
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
