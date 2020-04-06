package service.care.clean;

import java.text.SimpleDateFormat;
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
		
		cr.setUserNo(crc.getUserNo());
		cr.setEmployeeNo(crc.getEmployeeNo());
	    cr.setCleanfeeSize(crc.getCleanfeeSize());
	    
	    Date revDate = new Date(crc.getCleanrevDate().getTime());
	    cr.setCleanrevDate(revDate);
	
	    cr.setCleanrevAddr(crc.getCleanrevAddr());
	    cr.setCleanrevDemand(crc.getCleanrevDemand());
	    
	    Date revtime = new Date(crc.getCleanrevTime().getTime());
	    SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
	    
	   
	    
	
	    registRepository.revIn(cr);
	    
	}
}
