<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- 함수 추가.. -->

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
    (pdf 332) 함수
    
  </xmp>
  <%
    String message = "<h3>Hello World</h3><br>홍길동<br>";
  %>
  <c:set var="msg" value="<%= message %>" />
  
  <li>${msg }</li>
  <li>${fn:escapeXml(msg) }</li>
  <li>${fn:length(msg) }</li>
  <li>${fn:toUpperCase(msg) }</li>
  <li>${fn:trim(msg) }</li>
  <br>
  <li>${fn:substring(msg, 1 , 4) }</li>
  <li>${fn:contains(msg, "ell") }</li>
  
</div>
</body>
</html>











