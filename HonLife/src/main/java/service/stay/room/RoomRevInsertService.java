package service.stay.room;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Model.DTO.RoomRevDTO;
import command.stay.room.ReservationCommand;
import repository.stay.ReservationRepository;
import repository.stay.socketRepository;

@Service
public class RoomRevInsertService {
	
	  @Autowired 
	  ReservationRepository reservationRepository;
	 

	public void revInsert(ReservationCommand cmd) {
		System.out.println("인서트 들어옴");
		RoomRevDTO dto = new RoomRevDTO();

		// 날짜값 변환
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

		/* LoginDTO login = (LoginDTO)session.getAttribute("memberInfo"); */
		System.out.println("커맨드에서 넘어간 값");
		System.out.println(date1);
		System.out.println(date2);
		System.out.println(cmd.getUserNo());
		System.out.println(cmd.getRoomNo());
		System.out.println(cmd.getRevName());
		System.out.println(cmd.getLivingName());
		System.out.println(cmd.getPrice());
		System.out.println(cmd.getPh());
		System.out.println(cmd.getEmail());
		
		
		
		dto.setUserNo(cmd.getUserNo());
		dto.setRoomNo(cmd.getRoomNo());
		dto.setRoomRevName(cmd.getRevName());
		dto.setRoomLiveName(cmd.getLivingName());
		dto.setRoomRevPrice(cmd.getPrice());
		dto.setRoomRevPh(cmd.getPh());
		dto.setRoomRevEmail(cmd.getEmail());
		
		
		

		/*
		 * ReservationRepository reservationRepository = new ReservationRepository();
		 * System.out.println("객체야 생성 좀 되어라.");
		 * reservationRepository.roomRevInsert(dto);
		 */
		 reservationRepository.roomRevInsert(dto); 
		
		/*
		 * socketRepository aa = new socketRepository(); aa.insert(dto);
		 */
		 
		 
	}
}
