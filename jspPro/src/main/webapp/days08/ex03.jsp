<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true" %>
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
   [ 필 터 ] (pdf 546)
   프로젝트할 때 꼭 사용하시오
   
   (mvc, 모듈화도 필수로 하시오)
   
   전에 나처럼 로그인 검사하면 모든 doGet()에 다 검사하는 코드 넣어야함
   근데 필터로 하면 클래스 하나로  딸깍인듯
   
   필터: 문지기
   
   
  클라이언트   -   필터( 문지기 ) * n개  -     웹컨테이너 ( 톰캣 )  객체 만드는 공장
  
  
  
  필터 소환
  web.xml에 write.do 해놓으면 
  글쓰기 들어갈때마다 필터 발동임
  필터 필요한 만큼 url패턴 매핑해놓으면 됨
   
   
   ex03_02.jsp
   ex03_02_ok.jsp
   
   wrb.xml 
  </xmp>
</div>
</body>
</html>











