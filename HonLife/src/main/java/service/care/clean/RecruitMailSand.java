package service.care.clean;


import java.text.SimpleDateFormat;
import java.util.Date;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;

public class RecruitMailSand {

	private JavaMailSender mailSender;
	
	public void sendMail( Integer recNum, String reciver, String name ){
		
		MimeMessage msg = mailSender.createMimeMessage();
		SimpleDateFormat dateForm = new SimpleDateFormat("yyyyMMddmmss");
		String chk = dateForm.format(new Date());
		String content = "<html><body>"
						+ "안녕하십니까 "+ name +"님  HonCare 입니다. "  						
						+ "귀하의 입사지원 서류를 확인하였고 자격이 충분하다 생각하여  "
						+ "다음 인성검사 페이지를 보내드립니다 "
						+ "지원해주셔서 감사합니다 . "
						+ "<a href = 'http://192.168.219.105:8888/project/care/"
						+ "persnality?recNum="+recNum+"&reciver="+reciver+"&chk="+chk+"&name="+name+" '>"						
						+ "인성검사 페이지로</a>"
						+ "</body></html>";
		
		String subject = "안녕하십니까 "+name+"님 HonCare 매니저 지원을 감사드립니다 ";
		
		try {
			msg.setHeader("context-type", "text/html; charset=UTF-8");
			msg.setContent(content, "text/html; charset=UTF-8");
			msg.setSubject(subject);
			msg.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(reciver));
			mailSender.send(msg);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		
	}
}
