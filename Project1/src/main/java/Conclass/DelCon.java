package Conclass;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Command;
import model.MemberDAO;

public class DelCon implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("[deleteCon]");
		String id = request.getParameter("id");
		System.out.println(id);
		int row = new MemberDAO().delete(id);
	    if(row>0) {
	    	  System.out.println("회원정보삭제 성공");
	    	 
	      }else {
	    	  System.out.println("회원정보삭제 실패");
	      }
		
		return "adminpage.jsp";
	}

}
