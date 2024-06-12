package Conclass;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Command;
import model.BoardDAO;

public class adminBoardDel implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String num =request.getParameter("num");
		System.out.println(num);
		int row = new BoardDAO().adminBoardDel(num);
		
		
		
		return "adminViewB.jsp";
	}

}
