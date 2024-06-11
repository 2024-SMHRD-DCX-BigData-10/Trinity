package Conclass;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Command;
import model.CommentDAO;
import model.CommentVO;
import model.MemberDAO;

public class CommentDel implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("comment delete");
	
		String id=request.getParameter("com_id");
		String mem_id = request.getParameter("mem_id");
		CommentVO cvo = new CommentVO(id,mem_id);
		int row = new CommentDAO().comdelete(cvo);
	    if(row>0) {
	    	  System.out.println("댓글삭제 성공");
	    	 
	      }else {
	    	  System.out.println("댓글삭제 실패");
	      }
		
		return "BoardMain.jsp";
		
		
	}

}
