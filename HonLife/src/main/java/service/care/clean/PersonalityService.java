package service.care.clean;



import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import command.care.clean.PersonalityPoint;

@Service
public class PersonalityService {
	public String action(PersonalityPoint point) {
		String path= "";
		System.out.println("Service point=" + point);
		Integer result = 0;
		System.out.println(point.getPersonResponse());
				
		for(String answer : point.getPersonResponse()) {
			
			result += Integer.parseInt(answer);
			System.out.println("answer= " +answer);
			System.out.println("result="+result);
		}
		System.out.println("ServiceResult="+result);
		
		if(result > 80) {
			path = "careView/care/personality/pass";			
		}else {
			path="careView/care/personality/fail";		
		}
		
		return path;
		
	}
	
	
	
}
