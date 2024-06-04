package Conclass;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Command;

public class JoinCon implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("[join]");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		String email  = request.getParameter("email");
		
		
		
		
		
		
		
		return null;
	}

}
