package Conclass;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import controller.Command;
import model.LikeDAO;
import model.LikeDTO;


public class LikeCon implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String b_idx= request.getParameter("b_idx");
		String mem_id= request.getParameter("mem_id");
		LikeDTO dto = new LikeDTO(b_idx,mem_id);
		
		
			int row = new LikeDAO().b_like(dto);
			String move_url;
			if (row > 0) {
				System.out.println("좋아요 추가 성공");
			} else {
				System.out.println("좋아요 추가 실패");
			}
			move_url ="com"+b_idx;
			return move_url;
		}
		
	}


