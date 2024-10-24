package days07;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import days06.MemberInfo;

@WebServlet("/days-7/session.htm")
public class ServletSession extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ServletSession() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ServletSession..doGet() 호출..");
		
		
		/* 똑같은 이름의 두가지 메서드가 존재 .. *하나는 불리언..
		HttpSession session request.getSession() == 얘는 밑에거에 true 준거와 같음
		: 세션이 존재하면 존재하는 세션 객체 반환. 존재하지 않으면 세션 객체를 새로 생성하여 반환한다.
		
		HttpSession session request.getSession(false);
		: 세션이 존재하면 존재하는 세션 객체 반환. 존재하지 않으면 null을 반환한다.
		
		주의) 
			HttpSession session = request.getSession();
			if(session == null) {
				// 없으면 생성하는 메서드이므로 여기 코딩은 절대 작동하지 않음.. (false를 주던가)
			}
		*/
		
		// 인증받은 사용자 정보를 세션에 저장..
		MemberInfo mi = new MemberInfo();
		mi.setId("admin");
		mi.setName("홍길동");
		mi.setEmail("admin@naver.com");
		mi.setPasswd("1234");
		
		HttpSession session = request.getSession();
		session.setAttribute("auth", mi);
		
		MemberInfo auth_mi = (MemberInfo)session.getAttribute("auth");
		if ( auth_mi != null ) {
			//
		}
		
		session.removeAttribute("auth");
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ServletSession..doPost() 호출..");
	}

}
