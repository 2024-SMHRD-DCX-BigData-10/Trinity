package Conclass;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;

import controller.Command;

public class idcheckCon implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("[idcheck]");
		String id = (String) request.getParameter("id");
		System.out.println("id : " + id);

		boolean idCheck = new MemberDAO().idCheck(id);
		String result;
		if (idCheck == true) {
			result = "rest:/아이디가 중복 됩니다";
		} else {
			result = "rest:/사용가능한 아이디 입니다";

		}
		response.setContentType("application/text; charset=utf-8");
		
		
		
		return result;
	}

}
