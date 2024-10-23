<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true" %>


<%
	
//http://localhost/jspPro/days07/ex01_05_ok.jsp?name2=홍길동&name=일지매
	Enumeration<String> en = request.getParameterNames();
	while( en.hasMoreElements() ) {
		String cookieName = en.nextElement();
		String cookieValue = request.getParameter(cookieName);
		Cookie c = new Cookie( cookieName , URLEncoder.encode(cookieValue, "UTF-8") );
		c.setMaxAge(-1); 
		c.setPath("/");
		response.addCookie(c);
	}

	

%>
<script type="text/javascript">
alert("수정 끝")
location.href=`ex01_03.jsp`;
</script>