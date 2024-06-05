package model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import model.MemberDTO;
import mybatis.SqlSessionManager;

public class MemberDAO {
	static SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	public int join(MemberDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("join", dto);
		session.close();
		return row;
	}

	public MemberDTO login(MemberDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		MemberDTO user_info = session.selectOne("login", dto);
		session.close();
		return user_info;
	}
}
