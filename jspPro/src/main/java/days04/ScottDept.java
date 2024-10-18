package days04;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.doit.domain.DeptVO;

import com.util.DBConn;


//여기 주석 박으면 서블릿 안됨
//@WebServlet("/scott/dept")  // url pattern에 /scott/dept 준것과 같다
public class ScottDept extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ScottDept() {
		super();

	}

	//post , get 요청
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ScottDept.doGet() 호출 테스트..");

		//여기서 로직 처리한 후에  ex01_dept.jsp로 결과물 담아서 포워딩


		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = " SELECT * "
				+ " FROM dept ";
		ResultSet rs = null;

		int deptno;
		String dname, loc;

		DeptVO vo = null;
		ArrayList<DeptVO> list = null;
		Iterator<DeptVO> ir = null;

		try{

			conn = DBConn.getConnection();

			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if( rs.next() ) {
				list = new ArrayList<>();
				do{

					deptno = rs.getInt("deptno");
					dname = rs.getString("dname");
					loc = rs.getString("loc");	

					vo = new DeptVO().builder()
							.deptno(deptno).dname(dname).loc(loc).build();	

					list.add(vo);


				}while( rs.next() );
			} 

			/* System.out.println("> conn = " + conn);
			System.out.println(">isClosed = " + conn.isClosed() ); //true이면 닫힌거임 false떠야 연결완료 */

		}catch(Exception e){

		}finally{
			try{
				pstmt.close();
				DBConn.close();

			} catch(Exception e) {
				e.printStackTrace();
			}

		}


		// 포워딩 
		// 1) jsp 페이지에 전달 + request 객체 저장
		
		request.setAttribute("list", list); // 가능하면 이름 똑같이 줌.. 
		
		String path = "/days04/ex01_dept_jstl.jsp";  // 서버 안에서 이동 ( jspPro 경로 필요 X )  
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response); //이제 리퀘스트에 리스트도 있음 전달 ㄱㄱ

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}