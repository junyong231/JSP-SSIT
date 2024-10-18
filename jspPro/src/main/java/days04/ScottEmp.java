package days04;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.doit.domain.EmpVO;

import com.util.DBConn;

//여기 주석 박으면 서블릿 안됨
//@WebServlet("/scott/emp")
public class ScottEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public ScottEmp() {
		super();

	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ScottEmp.doGet() 호출 테스트..");

		String pDeptno = request.getParameter("deptno");
		int deptno;
		try{
			deptno = Integer.parseInt( pDeptno );
		} catch(Exception e) {
			deptno = 10;
		}


		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = " SELECT empno, ename, job, mgr, "
				+ " TO_CHAR(hiredate, 'yyyy-MM-dd' ) hiredate , sal, comm, deptno  "
				+ " FROM emp "
				+ " WHERE deptno = ? ";
		ResultSet rs = null;

		int empno, mgr;
		String ename, job;
		Date hiredate;
		double sal, comm;

		EmpVO vo = null;
		ArrayList<EmpVO> list = null;
		Iterator<EmpVO> ir = null;

		try{

			conn = DBConn.getConnection();

			pstmt = conn.prepareStatement(sql);

			// ?에 값을 주려면 ? 
			pstmt.setInt( 1, deptno );

			rs = pstmt.executeQuery();
			if( rs.next() ) {
				list = new ArrayList<>();
				do{

					empno = rs.getInt("empno");
					ename =rs.getString("ename");
					job= rs.getString("job");
					mgr= rs.getInt("mgr");
					hiredate = rs.getDate("hiredate");
					sal = rs.getDouble("sal");
					comm = rs.getDouble("comm");



					vo = new EmpVO().builder()
							.empno(empno).ename(ename).job(job).mgr(mgr).hiredate(hiredate).sal(sal).comm(comm)
							.build();	

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

		String path = "/days04/ex01_emp_jstl.jsp";  // 서버 안에서 이동 ( jspPro 경로 필요 X )  
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response); //이제 리퀘스트에 리스트도 있음 전달 ㄱㄱ




	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}