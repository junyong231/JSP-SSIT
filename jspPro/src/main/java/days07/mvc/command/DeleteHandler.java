package days07.mvc.command;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//Get, Post 방식 if문으로 나눠야함
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;
import com.util.DBConn;

import days04.board.domain.BoardDTO;
import days04.board.persistence.BoardDAOImpl;

public class DeleteHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String method = request.getMethod(); // GET , POST 대문자임
		if (method.equals ("GET") ) {

/*			String writer = request.getParameter("writer");
			HttpSession deleteCk = request.getSession();
			if (deleteCk.getAttribute("auth") == null ||  deleteCk.getAttribute("auth") != writer ) {

				String referer = request.getHeader("referer");
				referer += "&delAuth=no";

				response.sendRedirect(referer);

			} else {*/

				// 2. 포워딩
				return "/days07/board/delete.jsp";
				
			//}
			//return null;
			
		} else { //POST 

			request.setCharacterEncoding("UTF-8");

			System.out.println("> DeleteHandler.doPost()...");


			/*
			 * String writer = request.getParameter("writer"); HttpSession deleteCk =
			 * request.getSession();
			 */
		/*	if (deleteCk.getAttribute("auth") == null ||  deleteCk.getAttribute("auth") != writer ) {

				String referer = request.getHeader("referer");
				referer += "&delAuth=no";

				response.sendRedirect(referer);

			} else {*/

				long pseq = Long.parseLong(request.getParameter("seq"));
				String ppwd = request.getParameter("pwd");

				Connection conn = ConnectionProvider.getConnection();
				BoardDAOImpl dao = new BoardDAOImpl(conn);
				int rowCount = 0;
				String originalPwd ; 
				String location = "/jspPro/board/";

				try {
					originalPwd = dao.getOriginalPwd(pseq);
					if(originalPwd.equals(ppwd)) {
						rowCount = dao.delete(pseq);
						location +="list.do";
					}else {
						// location +="delete.htm?seq="+pseq+"&delete=fail";
						// 모달창 삭제
						location +="view.do?seq="+pseq+"&delete=fail";
					}
				} catch (SQLException e) { 
					System.out.println("> DeleteHandler.doPost() Exception...");
					e.printStackTrace();
				}

				conn.close();

				// 포워딩, [ 리다이렉트 ]
				response.sendRedirect(location);
			
			
		}
		
		
		return null; // POST면 여기까지 안옴 (리다이렉트됨)
	}

	}
//}
