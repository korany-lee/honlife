package service.stay.room;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.RoomDTO;
import Model.DTO.TimeCheckDTO;
import repository.stay.RoomRepository;

@Service
public class DateCheckService {
	@Autowired
	RoomRepository roomRepository;

	public String check(String start, String end, String roomNo,Model model) {
		RoomDTO roomDTO = roomRepository.oneSelect(roomNo);
		
		TimeCheckDTO dto = new TimeCheckDTO();
		dto.setRoomNo(roomNo);
		Calendar cal1;
		Calendar cal2;
		SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat sd2 = new SimpleDateFormat("yyyy-MM-dd");
		
		Timestamp date1 = null;
		Timestamp date2 = null;
		try {
			sd.parse(start);
			cal1 = sd.getCalendar();
			sd2.parse(end);
			cal2 = sd2.getCalendar();

			date1 = new Timestamp(cal1.getTime().getTime());
			date2 = new Timestamp(cal2.getTime().getTime());

			dto.setStart(date1);
			dto.setEnd(date2);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		//결제를 위한 날짜 차이값
		long diffDay =(date2.getTime()- date1.getTime());
		long calDate = diffDay / (24*60*60*1000);
		calDate = Math.abs(calDate);
		Integer i = (int) (long)calDate +1;
		
		Integer manageFee = (roomDTO.getRoomManageFee())*i;
		Integer roomFee = (roomDTO.getRoomFee())*i;
		Integer total = manageFee + roomFee;
		
		String abc = roomRepository.dateCheck(dto);
		model.addAttribute("total", total);
		model .addAttribute("manage", manageFee);
		model.addAttribute("rev", dto);
		model.addAttribute("liveDay", i);
		model.addAttribute("rental",roomFee);
		return abc;
		
	}
}
