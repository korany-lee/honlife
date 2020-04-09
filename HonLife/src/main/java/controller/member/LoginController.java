package controller.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import service.member.LoginService;

@Controller
public class LoginController {
	@Autowired
	LoginService loginService;

	// shop에서 로그인 창으로 이동
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String shopLog() {
		return "shopView/shop/shop_login";
	}

	// stay 에서 로그인 창으로 이동
	@RequestMapping(value = "/member/staylogin", method = RequestMethod.GET)
	public String stayLog() {
		return "stayView/memberView/stayLogin";
	}

	// care에서 로그인 창으로 이동
	@RequestMapping(value = "/carelogin", method = RequestMethod.GET)
	public String careLog() {
		return "careView/care/care_login";
	}

	// stay에서 로그인 검사
	@RequestMapping("/member/stayLoginAction")
	public String stayLoginChk(@RequestParam(value = "id") String userId,
			@RequestParam(value = "password") String userPw, Model model, HttpSession session) {
		Integer result = loginService.loginAction(userId, userPw, model, session);
		if (result == 2) { // 로그인 성공 했을 때
			return "redirect:/stayMain";
		} else {// 로그인 실패 했을때
			return "stayView/memberView/stayLogin";
		}
	}

	// shop에서 로그인 검사
	@RequestMapping("/shopLoginAction")
	public String shopLoginChk(@RequestParam(value = "id") String userId,
			@RequestParam(value = "password") String userPw, Model model, HttpSession session) {
		Integer result = loginService.loginAction(userId, userPw, model, session);
		if (result == 2) { // 로그인 성공 했을 때
			return "redirect:/shopMain";
		} else {// 로그인 실패 했을때
			return "shopView/shop/shop_login";
		}
	}

	// care에서 로그인 검사
	@RequestMapping("/careLoginAction")
	public String careLoginChk(@RequestParam(value = "id") String userId,
			@RequestParam(value = "password") String userPw, Model model, HttpSession session) {
		Integer result = loginService.loginAction(userId, userPw, model, session);
		if (result == 2) { // 로그인 성공 했을 때
			return "redirect:/careMain";
		} else {// 로그인 실패 했을때
			return "careView/care/care_login";
		}
	}
	
	//stay에서 로그아웃
	@RequestMapping("/member/stayLogout")
	public String stayLogout(HttpSession session,HttpServletResponse response) throws IOException {
		response.setContentType("text/html; charset=UTF-8");
		 
		PrintWriter out = response.getWriter();
		out.println("<script>alert('정상적으로 로그아웃 되었습니다.'); location.href='../stayMain'; </script>");
		out.close();
		session.invalidate();
		return "redirect:/stayMain";
	}
	
	//care에서 로그아웃
	@RequestMapping("/care/logout")
	public String careLogout(HttpSession session, HttpServletResponse res) {
		res.setContentType("text/html; charset=UTF-8");
		try {
			PrintWriter out = res.getWriter();
			out.println("<script>alert('로그아웃 되었습니다.'); location.href='../careMain'; </script>  ");
			out.close();
			session.invalidate();	
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/careMain";
	}
	
	
	//shop 에서 로그아웃
		@RequestMapping("/logout")
		public String shopLogout(HttpSession session, HttpServletResponse res) {
			res.setContentType("text/html; charset=UTF-8");
			try {
				PrintWriter out = res.getWriter();
				out.println("<script>alert('로그아웃 되었습니다.'); location.href='./shopMain'; </script>  ");
				out.close();
				session.invalidate();	
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return "redirect:shopView/shopMain";
		}
		
	
	

}
