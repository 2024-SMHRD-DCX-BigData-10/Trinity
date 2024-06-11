package model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionManager;

public class LocalDAO {
	static SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	public int Lan_cost(LocalDTO dto) {
		int Lan_price = 0;
		SqlSession session = sqlSessionFactory.openSession(true);
		Lan_price = (Integer)session.selectOne("Lan_price",dto);
		session.close();
		return Lan_price;
	}

	
	
}
