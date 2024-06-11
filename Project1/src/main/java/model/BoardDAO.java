package model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import model.BoardVO;
import mybatis.SqlSessionManager;

public class BoardDAO {
static SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	
	//게시글 작성
	public int writeBoard(BoardVO vo) {
		int cnt = 0;
		SqlSession session = sqlSessionFactory.openSession(true);
		cnt = session.insert("writeBoard", vo);
		session.close();
		return cnt;
	}
	//게시물 조회
	public ArrayList<BoardVO> allBoard() {
		ArrayList<BoardVO>boards = null;
		
		SqlSession session = sqlSessionFactory.openSession(true);
		boards = (ArrayList)session.selectList("allBoard");
		session.close();
		return boards;
	}
	public ArrayList<BoardVO> myBoard(String id) {
		ArrayList<BoardVO>boards = null;
		
		SqlSession session = sqlSessionFactory.openSession(true);
		boards = (ArrayList)session.selectList("myBoard", id);
		session.close();
		return boards;
	}
	// 게시물 상세 조회
	
	public BoardVO detailBoard(int num) {
		BoardVO board= null;
		SqlSession session = sqlSessionFactory.openSession(true);
		board = session.selectOne("detailBoard",num);
		session.close();
		return board;
	}
}
