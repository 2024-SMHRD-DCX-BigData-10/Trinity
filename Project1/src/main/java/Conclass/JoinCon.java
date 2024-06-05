package Conclass;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;

import controller.Command;
import lombok.NonNull;
import model.MemberDTO;

public class JoinCon implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("[join]");
		
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String gender  = request.getParameter("gender");
		String birthday  = request.getParameter("birthday");
		
		System.out.println("id :" + id);
		System.out.println("pw :" + pw);
		System.out.println("name" + name);
		System.out.println("email :" + email);
		System.out.println("gender :" + gender);
		System.out.println("birthday :" + birthday);

		MemberDTO dto = new MemberDTO(id,pw,name,email,gender,birthday);
		
		int row = new MemberDAO().join(dto);
		// 실행 결과에 따른 페이지 이동
		String move_url;
		if (row > 0) {
			System.out.println("회원가입 성공");
		} else {
			System.out.println("회원가입 실패");
		}
		move_url ="Main.jsp";
		return move_url;
		
	}

}
