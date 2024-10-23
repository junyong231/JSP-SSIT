<%@page import="java.net.URLEncoder"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page trimDirectiveWhitespaces="true" %>

<%
	//응답할 때 쿠키 생성
	String cookieName = request.getParameter("cookieName");
	String cookieValue = request.getParameter("cookieValue");
	
	// 주의) 한글, 콤마, 세미콜론, 공백 , () 사용XX
	Cookie c = new Cookie( cookieName , URLEncoder.encode(cookieValue, "UTF-8") );
	c.setMaxAge(-1); 
	c.setPath("/");
	// 음수 : 브라우저 닫을 때 쿠키 제거.     기본 시간 단위 = 초
	// c.setDomain();    c.setPath();
	response.addCookie(c);
	
	//
	String location = "ex01_03.jsp";
	response.sendRedirect(location);
	// 01_03 갈때는 이미 쿠키 완성 한 뒤임
	
	
	
%> 