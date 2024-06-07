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
		// 파일업로드를 하기위한 변수설정
		// 1. request객체
		// 2. 파일을 저장할 경로(String)
		String savePath = request.getServletContext().getRealPath("./file");
		

		// 3. 파일 최대크기 지정(int)
		int maxSize = 1024 * 1024 * 10;

		// 4. 인코딩 방식(String)
		String encoding = "UTF-8";

		// 5.파일 이름 중복제거
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();

		// 6.파일 업로드 객체 -> multipart
		MultipartRequest multi;
		try {
			multi = new MultipartRequest(request, savePath, maxSize, encoding, rename);
			// 요청 데이터 받아오기
			String id = multi.getParameter("id");
			String title = multi.getParameter("title");
			String filename = multi.getFilesystemName("filename");
			String content = multi.getParameter("content");

			BoardVO vo = new BoardVO(id, title, filename, content);
			System.out.println(vo.toString());

			// DB에 넣어주기
			int cnt = new BoardDAO().writeBoard(vo);

			if (cnt > 0) {
				System.out.println("게시물 작성 성공");
			} else {
				System.out.println("게시물 작성 실패");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "BoardMain.jsp";
	}

}
