package model;


import java.util.ArrayList;
import java.util.List;

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
	
	public ArrayList<CommentVO> allcoment(String num){
		ArrayList<CommentVO> cvo = null;
		SqlSession session = sqlSessionFactory.openSession(true);
		cvo  = (ArrayList)session.selectList("allcoment", num);
		session.close();
		return cvo;
	}

	public int comdelete(CommentVO cvo) {
SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("comdelete",cvo);
		 session.close();
			return row;
		
	}
	public ArrayList<CommentVO> myCommnet(String id){
		ArrayList<CommentVO> cvo =null;
		SqlSession session = sqlSessionFactory.openSession(true);
		cvo = (ArrayList)session.selectList("myComment", id);
		session.close();
		return cvo;
	}
	public ArrayList<CommentVO> adminViewC(){
		ArrayList<CommentVO> cvo =null;
		SqlSession session = sqlSessionFactory.openSession(true);
		cvo = (ArrayList)session.selectList("adminViewC");
		session.close();
		return cvo;
	}

	public int adminComDel(String num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("adminComDel",num);
		 session.close();
			return row;
		
		
	}
}
