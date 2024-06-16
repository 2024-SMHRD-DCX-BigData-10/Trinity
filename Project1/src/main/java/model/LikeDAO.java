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
	public boolean like_check(LikeDTO dto) {
		
		SqlSession session = sqlSessionFactory.openSession(true);
		String cnt= session.selectOne("like_check", dto);
		session.close();
		if(cnt ==null) {
			return true;//좋아요 가능
		}else {
			return false;//불가
		}
		
	}
	
}
