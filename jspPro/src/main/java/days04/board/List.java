package days04.board;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DBConn;

import days04.board.domain.BoardDTO;
import days04.board.persistence.BoardDAOImpl;

@WebServlet("/cstvsboard/list.htm")
public class List extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public List() {
		super();

	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("List.doGet() 호출..");
		//1. 게시판 글 정보 모두 가져오기
		int currentPage = 1;

		Connection conn = DBConn.getConnection();
		BoardDAOImpl dao =new BoardDAOImpl(conn);
		ArrayList<BoardDTO> list =null;

		try {
			list = dao.select(); 


		} catch (Exception e) { //SQLException - DAOImpl에 달린 예외 처리
			System.out.println(" > List.doGet() Exception...");
			e.printStackTrace();
		} finally {
			DBConn.close();
		}


		// 2. 포워딩

		request.setAttribute("list", list);

		String path = "/days04/board/list.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);



	}//doget


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}//dopost

}