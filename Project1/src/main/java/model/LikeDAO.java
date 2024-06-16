package model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionManager;

public class LikeDAO {
	static SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int b_like(LikeDTO dto) {
		int row=0;
		SqlSession session = sqlSessionFactory.openSession(true);
		row= session.insert("b_like", dto);
		session.close();
		return row;
	}
	public int like_count(LikeDTO dto) {
		int cnt=0;
		SqlSession session = sqlSessionFactory.openSession(true);
		cnt= session.selectOne("like_count", dto);
		session.close();
		return cnt;
	}
	public int like_check(LikeDTO dto) {
		int cnt=0;
		SqlSession session = sqlSessionFactory.openSession(true);
		cnt= session.selectOne("like_count", dto);
		session.close();
		return cnt;
	}
	
}
