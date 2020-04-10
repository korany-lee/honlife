package service.care.clean;




import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
@Service
public class MailSend {
	@Autowired
	private JavaMailSender mailSender;
	
	public void sendRecruitMail( Integer recNum, String reciver, String name ){
	// 	http://192.168.219.105:8888
    //  http://192.168.4.111:8080
		MimeMessage msg = mailSender.createMimeMessage();

		String content = "<html><body>"
						+ "안녕하십니까 "+ name +"님  HonCare 입니다. <br> "  						
						+ "귀하의 입사지원 서류를 확인하였고 자격이 충분하다 생각하여 <br>  "
						+ "다음 인성검사 페이지를 보내드립니다 <br> "
						+ "지원해주셔서 감사합니다 . <br> "    
						+ "<a href = 'http://192.168.4.111:8080/project/care/personality?recNum="+recNum+"&reciver="+reciver+"'> 인성검사 페이지로</a>"
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
	
	public void sendInterviewMail(Integer recNum, String reciver, String name) {
		MimeMessage msg = mailSender.createMimeMessage();
		
		String content = "<html><body>" 
				+ "안녕하십니까"+ name +"님  HonCare 입니다. <br>" 
			    + "인성 검사 에서 합격점을 받았네요 ㅊㅋㅊㅋㅊㅋ <br>" 
				+ "면접 일정을 알려드리겠습니다. <br> "
			    + "2020년 04월 20일에 일괄 면접을 실시합니다 <br>"
			    + "아래 메일 확인을 진행해주세요 안하면 면접 안됩니다. <br>"
			    + "<a href = ' http://192.168.4.111:8080/project/care/intChk?recNum="+recNum+"'> 메일 확인</a>"
			    + "</body></html>"; 
		
		
		String subject = "축하드립니다!"+name+"님 인성검사에 합격하셨습니다. ";
		
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
	
	public void fail(Integer recNum, String reciver) {
		MimeMessage msg = mailSender.createMimeMessage();
		
		String content = "<html><body>" 
				+ "안녕하십니까 HonCare 입니다. <br>" 
			    + "아쉽게도 탈락하셧네요 .. <br>" 
				+ "더 좋은 회사를 찾아서 포기하지 마시고 계속   <br> "
			    + "나아 가시길 바랍니다. 그럼 20000 "; 
		
		
		String subject = "인성검사에 탈락하셧습니다 ㅠㅠ";
		
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
	
	public void empReg(Integer recNum, String reciver,String name) {
		MimeMessage msg = mailSender.createMimeMessage();
		
		String content = "<html><body>" 
				+ "안녕하십니까" + name+"님 HonCare 입니다. "
				+ "먼저 면접에 합격하신걸  진심으로 축하드립니다.<br>" 
			    + "저희 회사에서 열심히 일하기에 앞서 매니저 등록을 진행하기위해 <br>" 
				+ "아래 링크로 들어오셔서 매니저 등록을 마쳐주시기 바랍니다! <br> "
			    + "그럼 20000" 
				+ "<a href = 'http://192.168.4.111:8080/project/care/empRegist?recNum="+recNum+" '>매니저 등록하기</a>"  ; 
		
		
		String subject = name+ "님 ㅊㅋㅊㅋ 사원등록하셈";
		
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
