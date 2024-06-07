package controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Command;
import Conclass.BoardService;
import Conclass.JoinCon;
import Conclass.LoginCon;
import Conclass.LogoutCon;



@WebServlet("*.do") 
public class frontController extends HttpServlet {

	HashMap<String, Command> list;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[FrontController]");
		
		String ser = request.getServletPath();
		System.out.println(ser);
		
		request.setCharacterEncoding("UTF-8");
		Command con = list.get(ser);
		String moveURL = con.excute(request, response);
		
		response.sendRedirect(moveURL);
	
	}
	public void init() throws ServletException {
		list = new HashMap<String, Command>();
		list.put("/JoinCon.do", new JoinCon());
		list.put("/LoginCon.do", new LoginCon());
		list.put("/LogoutCon.do", new LogoutCon());
		list.put("/BoardService.do", new BoardService());
		/*
		 * list.put("/loginCon.do", new loginCon()); list.put("/BoardService.do", new
		 * BoardService()); list.put("/DeleteCon.do", new DeleteCon());
		 * list.put("/idCheckCon.do", new idCheckCon()); list.put("/JoinCon.do", new
		 * JoinCon()); list.put("/LogoutCon.do", new LogoutCon());
		 * list.put("/UpdateCon.do", new UpdateCon());
		 */

	}
}
