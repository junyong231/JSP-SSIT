<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/jspPro/images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" content="notranslate">
<link rel="stylesheet" href="http://localhost/jspPro/resources/cdn-main/example.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }
</style>
</head>
<body>
<header>
  <h1 class="main"><a href="#" style="position: absolute;top:30px;">JYP Ent</a></h1>
  <ul>
    <li><a href="#">로그인</a></li>
    <li><a href="#">회원가입</a></li>
  </ul>
</header>
<div>
  <xmp class="code">
    	ex06.jsp
    	( pdf 192 )
    	
    	자바 빈즈 jsp:useBean
    	( 자바 빈 == 자바 빈즈 )
    	
    	1. JSP 기반 웹 어플리케이션에서 정보 ( 게시글 , 회원 등등 )를 표현하는 객체
    		( 스프링에서는 스프링빈 이라고 함.. )
    	   - 원래 DTO, VO 에 담았었음 .. 이것도 자바 빈이라고 불러도 ..?
    	   - 자바 빈 규약을 따라야 함..
    	 
    	2. 자바 빈 규약 
    		1) private 필드 선언
    		2) getter, setter 선언
    		3) 직렬화가 가능한 클래스 선언
    	
    	3. 자바빈은 속성, 변경 이벤트, 객체 직렬화하기 위한 표준이다..
    	
    	
    	ex06_02.jsp
    		MemberInfo 자바빈..
    	
    	
    	
    	
    	
    	
    	
  </xmp>
</div>
</body>
</html>