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
	      
		   // 데이터 꺼내오기
		      String email = request.getParameter("email");
		      String pw = request.getParameter("pw");
		      
		      // DTO로 묶기
		      MemberDTO dto = new MemberDTO(email, pw);
		      
		      // 로그인 기능이 있는 login메소드 호출
		      MemberDTO user_info = new MemberDAO().login(dto);
		      
		      // 실행결과 확인
		      if (user_info != null) {
		         System.out.println("로그인 성공");
		         HttpSession session = request.getSession();
		        session.setAttribute("user_info", user_info);
		      } else {
		         System.out.println("로그인 실패");
		      }
			return "Main.jsp";
	}

}
