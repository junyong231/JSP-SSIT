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
    	페이지 모듈화 ! -> 게시판 추가 메뉴를 로그인 옆에 추가하려면 하나씩 해야하는데.. 이를 해결함
    	contextPath도 마찬가지로 해주면 편함
    	
    	days06.ex01.jsp
    	
    	p132 (pdf 134)
    	기본 객체와 영역
    	
    	1. 하나의 웹페이지에서 사용할 수 있는 영역(스코프)
    		:PAGE 영역 - 하나의 jsp 페이지 처리할 때 사용 - pagecontext 객체
    		:REQUEST 영역 - 하나의 http 요청			- request 객체
    		:SESSION 영역 - 하나의 브라우저				-session 객체
    		:APPLICATION 영역 -하나의 웹어플리케이션..	-application 객체 
    		
    		장바구니를 세션에 남길건지 파라미터로 보낼건지 쿠키 DB 등등.. 여러가지 선택지 있음
    		
    		게시판 만들 때 request 객체 사용했었음..
    		그래서 포워딩했던거고 만약 새로운 페이지 요청하는 리다이렉트였다면 안받아와짐
    		
    	2. 메서드 (pdf 137)
    		- setAttribute()	
    		- getAttribute()
    		- removeAttrlbute()
    		- getAttributeNames()
    	ex01_02.jsp
    	ex01_03.jsp
    	
    	
  </xmp>
  
</div>

<script type="text/javascript">



</script>


</body>
</html>