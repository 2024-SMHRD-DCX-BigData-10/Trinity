package model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionManager;

public class MachineDAO {
	static SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	public ArrayList<Integer> Mc_cost(MachineDTO dto) {
		ArrayList<Integer>Mc_price = null;
		
		SqlSession session = sqlSessionFactory.openSession(true);
		Mc_price = (ArrayList)session.selectList("Mc_cost",dto);
		session.close();
		return Mc_price;
	}

	
}
