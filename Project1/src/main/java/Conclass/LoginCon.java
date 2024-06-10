package Conclass;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberDTO;

import controller.Command;

public class LoginCon implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("[LoginCon]");
	      String url=null;
		   // 데이터 꺼내오기
		      String id = request.getParameter("id");
		      String pw = request.getParameter("pw");
		      System.out.println("id ="+id);
		      System.out.println("pw ="+pw);
		      // DTO로 묶기
		      MemberDTO dto = new MemberDTO(id,pw);
		      // 로그인 기능이 있는 login메소드 호출
		      MemberDTO user_info = new MemberDAO().login(dto);
		     System.out.println(user_info);
		      // 실행결과 확인
		      if (user_info != null) {
		         System.out.println("로그인 성공");
		         HttpSession session = request.getSession();
		        session.setAttribute("user_info", user_info);
		        url="LoginSu.jsp";
		      } else {
		         System.out.println("로그인 실패");
			        url="LoginFa.jsp";

		      }
			return url;
	}

}
