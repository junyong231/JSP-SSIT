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
    에러 처리..
    (pdf 142)
    - 500번 오류 : 자바 오류 (서버)
    
    
    1. jsp 예외 처리
    	1) try/catch/finally 사용
    	
    
  </xmp>
  
  <%
  	String name = null;

    			
    try {
    	
        name = request.getParameter("name");
        name = name.toUpperCase();
    %>
    	
    	<%-- name = <%=name %> --%>
    	
    <%
    }catch(Exception e) {
    	out.println("오류: name 파라미터 X");
    }finally {
    	
    }
  %>
  <!-- 에러페이지도 '응답' 이다. -->
  
  <br><br><br>
  <br>
  
  <a href="ex1000.jsp">ex1000.jsp (없는 페이지 - 404)</a>
  <!-- 개발자 도구- 네트워크 들어가서 확인 -->
  
</div>
</body>
</html>













