package service.stay.room;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Model.DTO.RoomRevDTO;
import command.stay.room.ReservationCommand;
import repository.stay.ReservationRepository;

@ServerEndpoint(value="/chat/{userId}")
public class WebSocketService {
	/*
	 * @Autowired RoomRevInsertService roomRevInsertService;
	 * 
	 * @Autowired RoomRevListService roomRevListService;
	 * 
	 * @Autowired ReservationRepository reservationRepository;
	 */
	
	static HashMap<String, Session> userList = new HashMap<String, Session>();
	String storeId = null;
	
	
	@OnOpen
	public void onOpen(Session session, @PathParam("userId") String id) {
		System.out.println("aaaaaaaaaaaa");
		storeId = id;
		userList.put(id, session);
		
	}
	
	@OnClose
	public String onClose(Session session) {
		String val = session.getId(); // 종료한 sessionId 확인

		Set<String> keys = userList.keySet();

		for (String key : keys) {
			if (val.equals(userList.get(key).getId())) {
				userList.remove(key, session);
			}

		}
		return "javascript:location.href='../room/reservationFinish'";

	}

	//해당 아이디에 전송
	
	private void broadCast() {
		  ReservationRepository reservationRepository  = new ReservationRepository();
		
		  List<RoomRevDTO> list= reservationRepository.allRoomRev(); 
		  String rev =revCall(list);
		  Set<String> keys = userList.keySet(); 
		  System.out.println("broad Cast 입장");
		  try { 
			  for (String key :keys) { 
				  if(key.equals(storeId)) {
					  Session session = userList.get(key);
					  session.getBasicRemote().sendText(rev);
				  } 
			   } 
		  } catch (IOException e) {
		  e.printStackTrace(); }
		 
		  }
	
	
	/*
	 * @OnMessage public void onMessage(String message, Session session , Model
	 * model, HttpServletRequest request, HttpSession sess) throws Exception {
	 * System.out.println("온 메세지에서 msg=" + message); RoomRevInsertService
	 * roomRevInsertService = new RoomRevInsertService(); RoomRevListService
	 * roomRevListService = new RoomRevListService();
	 * 
	 * ReservationCommand revCommand = new ReservationCommand();
	 * roomRevInsertService.revInsert(revCommand,model,sess);
	 * roomRevListService.revChk(model,sess,revCommand.getStartDate());
	 * roomRevListService.sendSMS(revCommand,request); broadCast();
	 * 
	 * 
	 * }
	 */
	@OnError
	public void onError(Session session,Throwable e) {
		System.out.println(e.toString());
	}
	
	
	public String revCall(List<RoomRevDTO> lists) {
		String msg="";
		for (RoomRevDTO list : lists) {
			msg = "aaaaa" ;
		}
		System.out.println("revCall 함수 실행");
	
		return msg;
	}
	

}
