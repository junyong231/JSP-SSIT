<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true" %>

<%
	//http://localhost/jspPro/days07/ex01_04.jsp?ckbCookie=name
	// 이렇게 쿠키 이름 날아옴
	
	String[] delCookieNames = request.getParameterValues("ckbCookie");
	// JSP 쿠키 삭제법 : 쿠키를 setMaxAge(0) 을 주면서 다시 생성 (= 생성하자마자 삭제)
	
	for( int i = 0 ; i < delCookieNames.length ; i++ ) {
		
		//응답할 때 쿠키 생성
		String cookieName = delCookieNames[i]; 
		String cookieValue = "";
		
	
		Cookie c = new Cookie( cookieName , cookieValue );
		c.setMaxAge( 0 ); // 돌아가자마자 쿠키 삭제 
		c.setPath("/");
		
		response.addCookie(c);
		
	}//for

	//이것도 가능은 하지만 ? 달고 경고창 뿌릴 껀덕지 만들어줘야함 == 페이지 이동 후 경고창 띄움..
/* 	String location = "/jspPro/days07/ex01_03.jsp";
	response.sendRedirect(location); */
%>

<script type="text/javascript">
alert("삭제 끝")
location.href=`ex01_03.jsp`;
</script>




