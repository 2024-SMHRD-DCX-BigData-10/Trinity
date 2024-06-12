package Conclass;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Command;
import model.CalDTO;
import model.LocalDAO;
import model.LocalDTO;
import model.MachineDAO;
import model.MachineDTO;
import model.SeedDAO;
import model.SeedDTO;

public class CalCon implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String local = request.getParameter("local");
		int size =Integer.parseInt(request.getParameter("size"));
		String seed = request.getParameter("seed");
		String pesticide = request.getParameter("pesticide");
		String machine = request.getParameter("machine");

		
		
		MachineDTO dto1 = new MachineDTO(seed);
		LocalDTO dto2 = new LocalDTO(local);
		SeedDTO dto3 = new SeedDTO(seed);
		
		
		
		//농기계가격
		ArrayList<Integer>mac = new MachineDAO().Mc_cost(dto1);
		//농지 가격
		int LanPrice = new LocalDAO().Lan_cost(dto2)*size;
		//종자 가격
		int SeedPrice = new SeedDAO().Seed_cost(dto3);
		
		
		int result_mc=0;
		
		
		for(int i=0;i<mac.size();i++) {
			result_mc+= mac.get(i);
		}
		
		System.out.println(SeedPrice);
		
		
		return "CalResult.jsp";
	}

}
