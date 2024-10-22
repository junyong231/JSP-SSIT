<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!-- 위 코드 빠뜨리면 안됨! -->
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
  <h3>viewErrorMessage.jsp - 에러 처리하는 페이지</h3>
  
  <xmp class="code">
   요청 처리 과정에서 에러가 발생했습니다.
   빠른 시간 내에 문제를 해결하도록 하겠습니다.
  </xmp>
  
  <p>
     jsp 기본 내장 객체 중 : [ exception ]
     예외 타입 : <%= exception.getClass().getName() %><br>
     예외 메시지 : <%= exception.getMessage() %><br>
  </p>
</div>
</body>
</html>