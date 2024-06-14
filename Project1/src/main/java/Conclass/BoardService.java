package Conclass;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import model.BoardDAO;
import model.BoardVO;

import controller.Command;

public class BoardService implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
			String id = request.getParameter("id");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			System.out.println(id);
			System.out.println(title);
			System.out.println(content);
			BoardVO vo = new BoardVO(id, title, content);
			System.out.println(vo.toString());

			// DB에 넣어주기
			int cnt = new BoardDAO().writeBoard(vo);

			if (cnt > 0) {
				System.out.println("게시물 작성 성공");
			} else {
				System.out.println("게시물 작성 실패");
			}
		
		return "BoardMain.jsp";
	}

}
