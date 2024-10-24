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
    ex01_03.jsp 
  </xmp>
  
  > p name : <%= pageContext.getAttribute("name") %> <br>
  <!-- 페이지 바뀌면 없어짐 -->
  
  > r age : <%= request.getAttribute("age") %>	<br>
  <!-- 새http 요청하면 없어짐 ( 리다이렉트 안쓰고 포워딩썼던 이유-게시판에서)  -->
  
  > s addr : <%= session.getAttribute("addr") %><br>
  <!-- 브라우저 닫아야 없어짐 -->
  
  > a tel : <%= application.getAttribute("tel") %><br> 
  <!-- 서버 재시작해야 없어짐 -->
  
  
</div>
</body>
</html>