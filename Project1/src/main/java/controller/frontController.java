package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Command;
import Conclass.BoardService;
import Conclass.CalCon;
import Conclass.CommentDel;
import Conclass.CommentWrite;
import Conclass.DelCon;
import Conclass.EditCon;
import Conclass.JoinCon;
import Conclass.LoginCon;
import Conclass.LogoutCon;
import Conclass.MemberDelCon;
import Conclass.adminBoardDel;
import Conclass.adminComDel;
import Conclass.idcheckCon;



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
		
		 if(moveURL.contains("rest:/" )) {
				PrintWriter out = response.getWriter();
				out.print(moveURL.substring("rest:/".length()));
			}else if(moveURL.contains("com" )) {
				moveURL=moveURL.substring(3);
				response.sendRedirect("BoardDetail.jsp?num="+moveURL+"");
			}else {
		response.sendRedirect(moveURL);}
	
	}
	public void init() throws ServletException {
		list = new HashMap<String, Command>();
		list.put("/JoinCon.do", new JoinCon());
		list.put("/LoginCon.do", new LoginCon());
		list.put("/LogoutCon.do", new LogoutCon());
		list.put("/idcheckCon.do", new idcheckCon());
		list.put("/BoardService.do", new BoardService());
		list.put("/EditCon.do", new EditCon());
		list.put("/MemberDelCon.do", new MemberDelCon());
		list.put("/DelCon.do", new DelCon());
		list.put("/CommentWrite.do", new CommentWrite());
		list.put("/CalCon.do", new CalCon());
		list.put("/CommentDel.do", new CommentDel());
		list.put("/adminBoardDel.do", new adminBoardDel());
		list.put("/adminComDel.do", new adminComDel());
		/*
		 * list.put("/loginCon.do", new loginCon()); list.put("/BoardService.do", new
		 * BoardService()); list.put("/DeleteCon.do", new DeleteCon());
		 * list.put("/idCheckCon.do", new idCheckCon()); list.put("/JoinCon.do", new
		 * JoinCon()); list.put("/LogoutCon.do", new LogoutCon());
		 * list.put("/UpdateCon.do", new UpdateCon());
		 */

	}
}
