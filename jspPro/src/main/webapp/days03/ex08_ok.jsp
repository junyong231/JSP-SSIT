<%@page import="javax.tools.DocumentationTool.Location"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
// html 다 지웠음 == 응답 안한다는 뜻

String id = request.getParameter("id");
String pw = request.getParameter("pw");
// SELECT ~ DB 연동처리 해야하지만 이번엔 X 
String location;

if ( id.equals("admin") && pw.equals("1234") ) {
	//관리자 로그인 성공
	
	location = "ex08_main.jsp";
	
} else if( id.equals("hong") && pw.equals("2345") ) {
	//일반 로그인 성공
	
	location = "ex08_main.jsp";
	
} else {
	//로그인 실패
	
	//System.out.print("땡");
	
	location = "ex08.jsp?error";

}
// [1] 리다이렉트 (redirect)
//response.sendRedirect(location);

// 서버 (스크립트릿)에서 실행할 코드이므로 location.href = "ex08.jsp" 안됨 !! (js라서)


//[2] 포워딩
RequestDispatcher dispatcher =  request.getRequestDispatcher(location);
dispatcher.forward(request, response);

%>

