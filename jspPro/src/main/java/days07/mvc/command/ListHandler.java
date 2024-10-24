package days07.mvc.command;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;
import com.util.DBConn;

import days04.board.domain.BoardDTO;
import days04.board.persistence.BoardDAO;
import days04.board.persistence.BoardDAOImpl;
import days04.board.vo.PagingVO;

public class ListHandler implements CommandHandler {

	
	int currentPage = 1;         // 현재 페이지 번호
	int numberPerPage = 10;      // 한 페이지에 출력할 게시글 수	
	int numberOfPageBlock = 10;  // [1] 2 3 4 5 6 7 8 9 10 >
	int totalRecords = 0;        // 총레코드수
	int totalPages = 0;          // 총 페이지 수
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		
		try {
			this.currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}catch(Exception e) {
			this.currentPage = 1;
		}

		try {
			this.numberPerPage = Integer.parseInt(request.getParameter("numberPerPage"));
		}catch(Exception e) {
			this.numberPerPage = 10;
		}

		// list.htm?searchCondition=t&searchWord=ukhjggkj&numberPerPage=20
		String searchCondition = null;
		try {
			searchCondition = request.getParameter("searchCondition");
		}catch(Exception e) {
			// searchCondition = "title"; //이걸론 안됨 (당연)
		}		
		// 검색어가 없는 경우 null
		String searchWord  = request.getParameter("searchWord");  // 

		Connection conn = ConnectionProvider.getConnection();//커넥션풀로 바꿈
		BoardDAO dao = new BoardDAOImpl(conn);
		ArrayList<BoardDTO> list = null;

		PagingVO pvo = null;


		try {
			if ( searchWord == null || searchWord.equals("") ) {
				pvo = new PagingVO(currentPage, numberPerPage, numberOfPageBlock);
				// 페이징처리 X
				//list = dao.select();
				// 페이징처리 O + 검색 X
				list = dao.select(this.currentPage, this.numberPerPage);
			}else {
				pvo = new PagingVO(currentPage, numberPerPage, numberOfPageBlock
						, searchCondition, searchWord);
				list = dao.search(searchCondition, searchWord, currentPage, numberPerPage);
			}

		} catch (Exception e) {
			System.out.println("> List.doGet() Exception...");
			e.printStackTrace();
		} finally {
			conn.close(); // 커넥션 풀 반환..
		}// try

		// 2. 포워딩
		request.setAttribute("list", list);
		request.setAttribute("pvo", pvo);
		request.setAttribute("searchWord", searchWord);
		request.setAttribute("searchCondition", searchCondition);
		
		
		System.out.println("> ListHandler.process() 호출...");
		return "/days07/board/list.jsp";  // 출력 담당 View
		

		
	
	} //로직 담당 Model
	
	

}
