package days02;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Response;

//서블릿 규약을 따르는 서블릿 클래스 선언
public class Now extends HttpServlet{


	

	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doGet(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doPost(request, response);
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"  얘도 이게 필요함 (한글 안깨지게)
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		// out.write();
		
		Date now = new Date();
		
		String pattern = "yyyy-MM-dd hh:mm:ss";
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		String strNow = sdf.format(now); 
		

		
		out.write(" <!DOCTYPE html> ");
		out.write(" <html> ");
		out.write(" <head> ");
		out.write(" <meta charset='UTF-8'> ");
		out.write(" <title>Insert title here</title> ");
		out.write(" <link rel='shortcut icon' type='image/x-icon' href='http://localhost/jspPro/images/SiSt.ico'> ");
		out.write(" <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js'></script> ");
		out.write(" <meta name='viewport' content='width=device-width, initial-scale=1.0'> ");
		out.write(" <meta name='google' content='notranslate'> ");
		out.write(" <link rel='stylesheet' href='http://localhost/jspPro/resources/cdn-main/example.css'> ");
		out.write(" <script src='http://localhost/jspPro/resources/cdn-main/example.js'></script> ");
		out.write(" <style> ");
		out.write("  span.material-symbols-outlined{ ");
		out.write("     vertical-align: text-bottom; ");
		out.write("  } ");
		out.write(" </style> ");
		out.write(" </head> ");
		out.write(" <body> ");
		out.write(" <header> ");
		out.write("   <h1 class='main'><a href='#' style='position: absolute;top:30px;'>JYP Ent</a></h1> ");
		out.write("   <ul> ");
		out.write("     <li><a href='#'>로그인</a></li> ");
		out.write("     <li><a href='#'>회원가입</a></li> ");
		out.write("   </ul> ");
		out.write(" </header> ");
		out.write(" <div> ");
		out.write("   <xmp class='code'> ");
		out.write("   </xmp> ");
		out.write("   <h3> 현재 날짜 시간 : " + strNow +  "</h3>"  );
		out.write(" </div> ");
		out.write(" </body> ");
		out.write(" </html> ");

	}//service
	
	

	
	
}
