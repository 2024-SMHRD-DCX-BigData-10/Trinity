package model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionManager;

public class CommentDAO {
	static SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	public int writeComment(CommentVO cvo) {
		int cnt = 0;
		SqlSession session = sqlSessionFactory.openSession(true);
		cnt = session.insert("writeComment", cvo);
		session.close();
		return cnt;
	}
}
