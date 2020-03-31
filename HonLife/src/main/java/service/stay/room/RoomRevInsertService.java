package service.stay.room;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.RoomRevDTO;
import command.stay.room.ReservationCommand;
import repository.stay.ReservationRepository;

@Service
public class RoomRevInsertService {
	@Autowired
	ReservationRepository reservationRepository;
	
	
	public void revInsert(ReservationCommand cmd, Model model) {
		RoomRevDTO dto = new RoomRevDTO();
		
		//날짜값 변환	
		Calendar cal1;
		Calendar cal2;
		SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat sd2 = new SimpleDateFormat("yyyy-MM-dd");
		
		Timestamp date1 = null;
		Timestamp date2 = null;
		try {
			sd.parse(cmd.getStartDate());
			cal1 = sd.getCalendar();
			sd2.parse(cmd.getEndDate());
			cal2 = sd2.getCalendar();

			date1 = new Timestamp(cal1.getTime().getTime());
			date2 = new Timestamp(cal2.getTime().getTime());

			dto.setRoomRevStartDate(date1);
			dto.setRoomRevEndDate(date2);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		System.out.println("방번호 =" +cmd.getRoomNo());
		System.out.println("예약자이름 =" +cmd.getRevName());
		System.out.println("입주자명 =" +cmd.getLivingName());
		System.out.println("가격=" +cmd.getPrice());
		System.out.println("연락처 =" +cmd.getPh());
		System.out.println("이메일 =" +cmd.getEmail());
		System.out.println("시작날짜 =" +date1);
		System.out.println("종료날짜 =" +date2);
		
		
		//회원번호 session값에서 가져오기
		
		dto.setRoomNo(cmd.getRoomNo());
		dto.setRoomRevName(cmd.getRevName());
		dto.setRoomLiveName(cmd.getLivingName());
		dto.setRoomRevPrice(cmd.getPrice());
		dto.setRoomRevPh(cmd.getPh());
		dto.setRoomRevEmail(cmd.getEmail());
		
		reservationRepository.roomRevInsert(dto);
	}
}
