package model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionManager;

public class MaterialDAO {
	static SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public ArrayList<Integer> Pest_y(MaterialDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<Integer>Pest_y = null;
		Pest_y = (ArrayList)session.selectList("Pest_y",dto);
		session.close();
		return Pest_y;
	}
	public ArrayList<Integer> Pest_n(MaterialDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<Integer>Pest_n = null;
		Pest_n = (ArrayList)session.selectList("Pest_y",dto);
		session.close();
		return Pest_n;
	}
}
