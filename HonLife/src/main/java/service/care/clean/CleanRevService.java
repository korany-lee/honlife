package service.care.clean;


import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Model.DTO.care.CleanRevDTO;
import command.care.clean.CleanRevCommand;
import repository.care.RegistRepository;

@Service
public class CleanRevService {
 @Autowired
 RegistRepository registRepository;
	public void revIn(CleanRevCommand crc) {
		CleanRevDTO cr = new CleanRevDTO();
		
		cr.setCleanrevNo(crc.getCleanrevNo());
		cr.setUserNo(crc.getUserNo());
		cr.setEmployeeNo(crc.getEmployeeNo());
	    cr.setCleanfeeSize(crc.getCleanfeeSize());
	    String pay= crc.getRevPay().replace("원","");
	    cr.setRevPay(Integer.parseInt(pay));
	    
	    System.out.println(pay);
	    Date revDate = new Date(crc.getCleanrevDate().getTime());
	    cr.setCleanrevDate(revDate);
	
	    cr.setCleanrevAddr(crc.getCleanrevAddr());
	    cr.setCleanrevDemand(crc.getCleanrevDemand());
	    
	   
	    cr.setCleanrevTime(crc.getCleanrevTime());
	    System.out.println("Pay" + Integer.parseInt(pay) );
	    registRepository.revIn(cr);
	    
	}
}
