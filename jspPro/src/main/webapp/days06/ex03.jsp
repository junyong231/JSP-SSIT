<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!-- 페이지 소스보기 할 때 어차피 공백이 되는 이 지시자 부분을 안보이게 해줌 (템플릿에 추가하면 좋은 코드) -->
<%@ page autoFlush="true" %>
<%@ page buffer="8kb" %>
<%@ page isELIgnored="false" %>
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
    ( pdf 154 ) 버퍼와 에러페이지의 관계
    
  </xmp>
  <%
  	for(int i = 1; i <= 10000 ; i++ ) {
  		out.print("["+i+"]");
  		
  		if ( i ==2 ) out.clearBuffer();// i==2 일때까지의 버퍼를 비움 (1,2 안찍히는 이유)
  		
  		
  		/*
  		if( i % 1000 == 0 ){
  			out.flush();
  		}
  		if( i == 1500 ){
  			out.print(1/0);
  		}
  		*/
  	}
  
  %>
  
  
</div>
</body>
</html>