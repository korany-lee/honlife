


import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class asda {

   public String execute(HttpServletRequest request, HttpServletResponse response) {
   
         int result =0;
            Enumeration enums = request.getParameterNames();
            while(enums.hasMoreElements())
            {
               String name = (String)enums.nextElement();
                
               if(name.startsWith("no"))
               {
                  System.out.println(request.getParameter(name));
                  result += Integer.parseInt(request.getParameter(name));
               }
               
            }
      
      String path = null;
      if(result < 80) {
         response.setContentType("text/html;charset=UTF-8");
            PrintWriter out;
         try {
            out = response.getWriter();
            out.println("<script>");
               out.println("alert('80점 미만이므로 회원가입을 하실 수 없습니다.');");
               out.println("location.href='index.us';");
               out.println("</script>");
               out.close();
         } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
      }
      else {
         path = "member/join.jsp";
      }
      return path;
   }

}