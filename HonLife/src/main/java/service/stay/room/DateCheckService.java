package service.stay.room;


import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Model.DTO.TimeCheckDTO;
import repository.stay.RoomRepository;

@Service
public class DateCheckService {
	@Autowired
	RoomRepository roomRepository;
	
	public String check(String start, String end, String roomNo) {
		TimeCheckDTO dto = new TimeCheckDTO();
		dto.setRoomNo(roomNo);
		Calendar cal1;
		Calendar cal2;
		SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat sd2 = new SimpleDateFormat("yyyy-MM-dd");
		try {
			sd.parse(start);
			cal1 = sd.getCalendar();
			sd2.parse(end);
			cal2 = sd2.getCalendar();

			Timestamp date1 = new Timestamp(cal1.getTime().getTime());
			Timestamp date2 = new Timestamp(cal2.getTime().getTime());
		
			dto.setStart(date1);
			dto.setEnd(date2);
		}catch(ParseException e) {
			e.printStackTrace();
		}
		
		String abc = roomRepository.dateCheck(dto);
		System.out.println("쿼리돌려서 나온값 =" + abc);
		
		return null;
	}
}
