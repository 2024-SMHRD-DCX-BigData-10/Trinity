package model;

import java.util.ArrayList;

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
		
		MemberDTO user = session.selectOne("login", dto);
		session.close();
		return user;
	}
	public static ArrayList<MemberDTO> selectMember(){
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<MemberDTO>memList = (ArrayList)session.selectList("selectMember");
		session.close();
		return memList;
	}
	public boolean idCheck(String id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		String name = session.selectOne("idCheck", id);
		if (name != null)
			return true;
		else
			return false;
	}
	public int update(MemberDTO dto) {
		 SqlSession session = sqlSessionFactory.openSession(true);
		 int row = session.update("update",dto);
		 session.close();
			return row;
	}
	public int delete(String id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("delete",id);
		 session.close();
			return row;
	}
}
