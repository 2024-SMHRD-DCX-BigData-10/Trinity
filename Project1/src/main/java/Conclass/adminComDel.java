package Conclass;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Command;
import model.CommentDAO;

public class adminComDel implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String num=	request.getParameter("num");
		int row = new CommentDAO().adminComDel(num);
	    if(row>0) {
	    	  System.out.println("댓글삭제 성공");
	    	 
	      }else {
	    	  System.out.println("댓글삭제 실패");
	      }
		
		return "adminViewC.jsp";
		
		
		
		
	}

}
