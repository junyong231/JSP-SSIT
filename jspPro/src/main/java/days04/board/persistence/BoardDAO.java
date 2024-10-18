package days04.board.persistence;

import java.sql.SQLException;
import java.util.ArrayList;

import days04.board.domain.BoardDTO;

public interface BoardDAO {

	//페이징 처리X + 게시글 목록
	ArrayList<BoardDTO> select() throws SQLException; //sql 에러 발생시 부모 클래스(매니저)에 보냄

	// 2. 게시글 쓰기
	int insert(BoardDTO dto) throws SQLException;
}