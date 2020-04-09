package service.stay.room;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;


import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;

public class MemberRegMailService {
	@Autowired
	private JavaMailSender mailSender;
	
	public void sendMail(String reciver,String roomRevNo,String name,Timestamp start) {
		MimeMessage msg = mailSender.createMimeMessage();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
		String date = sdf.format(start);
		
		
		
		String content="<html><body> + 안녕하세요 저희 HonLife에서는  " + name+"님의 예약을 진심으로 환영합니다.<br /> "+ name+"님의 예약번호는 " +roomRevNo+" 입니다. 입실시에 필요한 정보이니 숙지 바랍니다.<br/>"				
				+ "저희 HonLife는 "+ date+"에 "+name+" 님의 만남을 기다리겠습니다. 감사합니다 </body></html>" ; 
		String subject ="예약 확인서";
		try {
			msg.setHeader("content-type", "text/html; charset=UTF-8");
			msg.setContent(content,"text/html; charset=UTF-8" );
			msg.setSubject(subject);
			msg.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(reciver));
			mailSender.send(msg);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
