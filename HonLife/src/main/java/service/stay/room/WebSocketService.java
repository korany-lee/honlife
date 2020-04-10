package service.stay.room;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.DTO.RoomRevDTO;
import repository.stay.ReservationRepository;

@ServerEndpoint(value="/chat/{userId}")
public class WebSocketService {

	static HashMap<String, Session> userList = new HashMap<String, Session>();
	String storeId = null;
	@OnOpen
	public void onOpen(Session session, @PathParam("userId") String id) {
		System.out.println("aaaaaaaaaaaa");
		storeId = id;
		userList.put(id, session);
		
	}
	
	@OnClose
	public void onClose(Session session) {
		String val = session.getId(); // 종료한 sessionId 확인

		Set<String> keys = userList.keySet();

		for (String key : keys) {
			if (val.equals(userList.get(key).getId())) {
				userList.remove(key, session);
			}

		}

	}

	//해당 아이디에 전송
	private void broadCast() {
		/*
		 * List<RoomRevDTO> list= reservationRepository.allRoomRev(); String rev =
		 * revCall(list); Set<String> keys = userList.keySet(); try { for (String key :
		 * keys) { if(key.equals(storeId)) { Session session = userList.get(key);
		 * session.getBasicRemote().sendText(rev); } } } catch (IOException e) {
		 * e.printStackTrace(); }
		 */
	}
	
	

	  public void onMessage(String msg, Session session , Model model, HttpServletRequest request, HttpSession sess) throws Exception {
		  System.out.println("msg=" + msg); 
		/*
		 * ReservationCommand revCommand = new ReservationCommand();
		 * roomRevInsertService.revInsert(revCommand,model,sess);
		 * roomRevListService.revChk(model,sess,revCommand.getStartDate());
		 * roomRevListService.sendSMS(revCommand,request); broadCast();
		 */
	  }
	 
	@OnError
	public void onError(Session session,Throwable e) {
		System.out.println(e.toString());
	}
	
	public String revCall(List<RoomRevDTO> lists) {
		String msg="";
		for (RoomRevDTO list : lists) {
			msg += "<div class='tr reserved'> <div class='tr-content'><div class='tr-head'><div class='td'><span>" ;
			msg += "<input style=\'background-color: transparent; cursor:pointer;color: #9fa7a7 \' class=\'boardList\'  id=\'name\' type=\'text\' value=\'"+list.getRoomRevNo()+"\' readonly=\'readonly\'>";
			msg +="	</span>\r\n</div>\r\n\r\n<div class=\'td\'><span>"+list.getRoomRevName()+"</span></div><div class=\'td\'><span>"+list.getRoomNo()+"</span></div><div class=\'td\'>\r\n" ;
		
		}
		
	
		return msg;
	}
	

}
