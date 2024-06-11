package Conclass;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Command;
import model.CommentDAO;
import model.CommentVO;
import oracle.net.ns.SessionAtts;

public class CommentWrite implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 HttpSession session = request.getSession();
		if(session.getAttribute("user_info")==null) {
			response.sendRedirect("login.jsp");
		}
		
		String b_idx = request.getParameter("b_idx");
		String mem_id = request.getParameter("mem_id");
		String content = request.getParameter("content");
		CommentVO cvo =new CommentVO(b_idx, content, mem_id);
		System.out.println("b_idx="+b_idx);
		System.out.println("mem_id="+mem_id);
		System.out.println("content="+content);
		
		int cnt =new CommentDAO().writeComment(cvo);
		if (cnt > 0) {
			System.out.println("댓글 작성 성공");
		} else {
			System.out.println("댓글 작성 실패");
		}
	String result= "com"+b_idx;
	System.out.println(result);
		
	return result;
		
		
		
		
		
		
	}

}
