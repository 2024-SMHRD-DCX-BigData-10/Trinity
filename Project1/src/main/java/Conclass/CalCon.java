package Conclass;

import java.io.IOException;

import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Command;
import model.LocalDAO;
import model.LocalDTO;
import model.MachineDAO;
import model.MachineDTO;
import model.MaterialDAO;
import model.MaterialDTO;
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
		String kind=null;
		int result_mc=0;
		int result_Pes=0;
		
		
		MachineDTO dto1 = new MachineDTO(seed);
		LocalDTO dto2 = new LocalDTO(local);
		SeedDTO dto3 = new SeedDTO(seed);
		MaterialDTO dto4= new MaterialDTO(seed,kind);
		MaterialDTO dto5= new MaterialDTO(seed);
		
		if(pesticide.equals("yes"))kind="농약"; 
		
		if(machine.equals("yes")) {
			//농기계가격
			ArrayList<Integer>mac = new MachineDAO().Mc_cost(dto1);
			for(int i=0;i<mac.size();i++) {			
				result_mc+= mac.get(i);
			}
		}else{
			result_mc=0;
		}
		
		//농지 가격
		int LanPrice = new LocalDAO().Lan_cost(dto2)*size;
		//종자 가격
		int SeedPrice = new SeedDAO().Seed_cost(dto3);
		if(seed.equals("고추")) {
			SeedPrice = SeedPrice*size*2;	
		}else if(seed.equals("배추")) {
			SeedPrice = SeedPrice*size*4;
		}
		
		
		if(pesticide.equals("yes")) {
			//농약(포함)농자재 가격
			ArrayList<Integer>Pest_y = new MaterialDAO().Pest_y(dto5);		
			for(int i=0;i<Pest_y.size();i++) {
				result_Pes+= Pest_y.get(i);
			}
		}else {
			//농약(미포함)농자재 가격
			ArrayList<Integer>Pest_n = new MaterialDAO().Pest_n(dto4);
			for(int i=0;i<Pest_n.size();i++) {
				result_Pes+= Pest_n.get(i);
			}		
		}
		
		int sum =  result_mc+LanPrice+SeedPrice+result_Pes;
		HttpSession session = request.getSession();
		session.setAttribute("sum", sum);
		
		return "CalResult.jsp";
	}

}
