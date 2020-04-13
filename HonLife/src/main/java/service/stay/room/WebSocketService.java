package service.stay.room;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import Model.DTO.RoomRevDTO;
import command.stay.room.ReservationCommand;
import repository.stay.socketRepository;

@ServerEndpoint(value = "/chat/{userId}")
public class WebSocketService {
	/*
	 * @Autowired RoomRevInsertService roomRevInsertService;
	 */
	/*
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
	public void onClose(Session session) {
		String val = session.getId(); // 종료한 sessionId 확인

		Set<String> keys = userList.keySet();

		for (String key : keys) {
			if (val.equals(userList.get(key).getId())) {
				userList.remove(key, session);
			}

		}
		/* return "javascript:location.href='../room/reservationFinish'"; */

	}

	// 해당 아이디에 전송

	private void broadCast() {
		socketRepository reservationRepository = new socketRepository();
		
		  List<RoomRevDTO> list= reservationRepository.allRoomRev(); 
		  String rev = revCall(list);
		 
		Set<String> keys = userList.keySet();
		System.out.println("broad Cast 입장");
		try {
			for (String key : keys) {
				// if(key.equals(storeId)) {
				System.out.println("key : " + key);
				Session session = userList.get(key);
				session.getBasicRemote().sendText(rev);
				// }
			}
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	@OnMessage
	public void onMessage(String message, Session session) {
		try {
			System.out.println("온 메세지에서 msg=" + message);
			String[] str = message.split("/");
			ReservationCommand revCommand = new ReservationCommand();
			String revName = str[0].split(":")[1];
			String livingName = str[1].split(":")[1];
			String ph = str[2].split(":")[1];
			String email = str[3].split(":")[1];
			String price = str[4].split(":")[1];
			String startDate = str[5].split(":")[1];
			String endDate = str[6].split(":")[1];
			String roomNo = str[7].split(":")[1];
			String userNo = str[8].split(":")[1];

			revCommand.setRevName(revName);
			revCommand.setLivingName(livingName);
			revCommand.setPh(ph);
			revCommand.setEmail(email);
			revCommand.setPrice(Integer.parseInt(price));
			revCommand.setStartDate(startDate);
			revCommand.setEndDate(endDate);
			revCommand.setRoomNo(roomNo);
			revCommand.setUserNo(userNo);

			RoomRevInsertService roomRevInsertService = new RoomRevInsertService();
			System.out.println("인서트 객체 만듬");
			roomRevInsertService.revInsert(revCommand);
		} catch (Exception e) {
			e.printStackTrace();
		}
		broadCast();
	}

	@OnError
	public void onError(Session session, Throwable e) {
		System.out.println(e.toString());
	}

	public String revCall(List<RoomRevDTO> lists) {
		String msg = "";
		for(RoomRevDTO list : lists) {
			String link ="";
			if(list.getRoomRevState().equals("사용대기")) {
				link = "<a href='#' class='minimal-btn close-tr2' onclick='javascript:checkin("
			    + list.getRoomRevNo()
			    + ","
			    + list.getRoomNo()
			    + ","
			    + list.getRoomRevFrevchk()
			    + ")' style='margin-right: 10px'>입실처리 </a>";
			}else if(list.getRoomRevState().equals("사용대기")) {
				link = "<a href='#' class='minimal-btn close-tr2' onclick='javascript:checkout("
			         +list.getRoomRevNo()
			         +","
			         +list.getRoomNo()
			         +") style='margin-right: 10px'>퇴실처리 </a>";
			}
			msg += "<div class='tr reserved'>" + "<div class='tr-content'>"
				+ "		<div class='tr-head'>" + "<div class='td'>"
				+ "				<span>"
				+ "					<input style='background-color: transparent; cursor:pointer;color: #9fa7a7 ' class='boardList'  id='name' type='text' value='"
				+ list.getRoomRevNo()
				+ "' readonly='readonly'></span></div><div class='td'><span>"
				+ list.getRoomRevName()
				+ "</span></div><div class='td'><span>"
				+ list.getRoomNo() 
				+ "</span></div><div class='td'><span ><fmt:formatDate value='"
				+ list.getRoomRevStartDate() 
				+ "' pattern='yyyy-MM-dd'/></span></div><div class='td'><span>"
				+ list.getRoomRevState()
				+ "</span></div></div><div class='tr-body'><div class='col-left'></div>"
				+ "			<div class='col-right' style='margin-right: 200px;'>"
				+ "     <table style='undefined;table-layout: fixed; width: 275px'>"
				+ "			<colgroup><col style='width: 155px'><col style='width: 120px'></colgroup>"
				+ "  				<tr><td>예약자명</td>  <td>"
				+ list.getRoomRevName()
				+ " </td></tr><tr><td>입주자명</td><td>"
				+ list.getRoomLiveName()
				+ "</td></tr><tr><td>입주자 연락처</td><td>"
				+ list.getRoomRevPh()
				+ "</td></tr><tr><td>입주자 이메일</td><td>"
				+ list.getRoomRevEmail()
				+ "</td></tr><tr><td>입주날짜</td><td><fmt:formatDate value='"
				+ list.getRoomRevStartDate()
				+ "' pattern='yyyy-MM-dd'/></td></tr><tr><td>퇴실날짜</td><td><fmt:formatDate value='"
				+ list.getRoomRevEndDate()
				+ "' pattern='yyyy-MM-dd'/></td></tr><tr><td>가구 예약상황</td><td>"
				+ list.getRoomRevFrevchk()
				+ "</td></tr></table><button class='minimal-btn close-tr elem-line-after'>상세 닫기</button>"
				+ "			<button class='minimal-btn close-tr2' style='margin-right: 10px'>| </button>"
				+ link
				+ "</div></div></div></div>";
				
		}
		System.out.println(msg);
		return msg;
	}

}
