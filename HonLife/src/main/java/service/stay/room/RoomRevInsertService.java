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
