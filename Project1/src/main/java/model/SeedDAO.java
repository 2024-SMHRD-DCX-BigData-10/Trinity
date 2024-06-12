package model;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionManager;

public class SeedDAO {
	static SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	public int Seed_cost(SeedDTO dto) {
		int Seed_price = 0;
		SqlSession session = sqlSessionFactory.openSession(true);
		Seed_price = (Integer)session.selectOne("Seed_price",dto);
		session.close();
		return Seed_price;
	}
}
