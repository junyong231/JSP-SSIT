<%@page import="com.util.Cookies"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	//인증(로그인) 받았는지
	// [ 세션 사용 인증 처리 ] auth 세션이름 = 로그인ID 만 저장 (약속)
	
	String sname = "auth";
	String logonId = null;
	logonId = (String)session.getAttribute(sname);

%>

<%
/* //세션 자동종료 메소드 invalidate() 타임아웃..*/
	
/* //세션 강제종료 메소드 invalidate() 은행사이트에서 라운드트립 중에도 시간연장 안눌러주면 강제 로그아웃될 때*/
	session.invalidate(); 
// 세션 통으로 버림 (내용만 말고)

%>

<script type="text/javascript">
alert("<%=logonId%>님 로그아웃되었습니다")
location.href=`ex05_default.jsp`;
</script>









