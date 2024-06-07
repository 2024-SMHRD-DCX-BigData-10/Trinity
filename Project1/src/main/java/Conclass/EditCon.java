package Conclass;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberDTO;
import controller.Command;

public class EditCon implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session= request.getSession();
		String id = (String)session.getAttribute("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		System.out.println(pw);
		System.out.println(name);
		System.out.println(email);
		
		
		 MemberDTO dto = new MemberDTO(id,pw,name,email);
		 int row = new MemberDAO().update(dto);
		 
		 if(row>0) {
	    	  System.out.println("회원정보수정 성공");
	    	  
	    	  // session에 저장된 user_info 업데이트 
	    	  request.getSession().setAttribute("user_info", dto);
	      }else {
	    	  System.out.println("회원정보수정 실패");
	      } 
		return "Main.jsp";
	}

}
