package Conclass;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Command;
import model.CalDTO;
import model.MachineDAO;
import model.MachineDTO;

public class CalCon implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String local = request.getParameter("local");
		int size =Integer.parseInt(request.getParameter("size"));
		String seed = request.getParameter("seed");
		String pesticide = request.getParameter("pesticide");
		String machine = request.getParameter("machine");
		int people = Integer.parseInt(request.getParameter("people"));
		
		
		MachineDTO dto = new MachineDTO(seed);
		ArrayList<Integer>mac = new MachineDAO().Mc_cost(dto);
		int result_mc=0;
		for(int i=0;i<mac.size();i++) {
			result_mc+= mac.get(i);
		}
		
		
		
		return "CalResult.jsp";
	}

}
