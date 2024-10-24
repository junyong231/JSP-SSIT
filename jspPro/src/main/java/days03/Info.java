package days03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/method/info.htm")
// /Info 그대로 두면 오류 404
public class Info extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Info() {
        super();
 
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		// 응답 인코딩 바꿔줌
		response.setContentType("text/html; charset=UTF-8");

			
		System.out.println("> Info.doGet()..");
		PrintWriter out = response.getWriter();
	
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age")) ;
		
		System.out.printf("G: name = %s , age = %d", name, age); // 파라미터 받아올 때는 한글 안깨짐, 보낼 때 깨짐.
		
		out.print(">이름 : " + name + "<br>");
		out.print(">나이 : " + age + "<br>");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//요청, 응답 모두 인코딩 바꿔줌
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		System.out.println("> Info.doPost()..");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age")) ;
		
		System.out.printf("P: name = %s , age = %d", name, age); // 파라미터 받아올 때부터 한글 깨짐, 보낼 때도 깨짐
		
		out.print(">이름 : " + name + "<br>");
		out.print(">나이 : " + age + "<br>");
	}

	//get이든 post든 상관없이 받으려면 service임 ( 다 만들면 service에 걸림 )
	
	
}
