package Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import Model.DTO.LoginDTO;

import repository.care.RegistRepository;

public class AuthCheckInterceptor 
	extends HandlerInterceptorAdapter{
	@Autowired
	RegistRepository rr;
	
	
	@Override
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(false);
		if (session != null) {
			LoginDTO login = (LoginDTO)session.getAttribute("memberInfo");
			
			
	
			String id = login.getUserId();
			
			if(id.equals("stayManager") ||id.equals("shopManager") ||id.equals("careManager") ) {
				return true;
			}
		}
		response.sendRedirect(request.getContextPath()+"/main");
		return false;
	}
}
