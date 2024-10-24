<%@page import="org.apache.jasper.tagplugins.jstl.core.Param"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
	//인코딩..
	//request.setCharacterEncoding("UTF-8");
%>
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
       ex03_02_ok.jsp
  </xmp>
  <%
  // jsp에서 POST 방식으로 넘기면 ISO-8859-1 로 넘겨서 한글 깨짐
  	String name = request.getParameter("name");
  	String age = request.getParameter("age");
  %>
  전달된 한글 이름: <%= name %> <br>
  전달된 나이: <%= age %><br>
  <hr>
  전달된 한글 이름(EL): ${ param.name} <br>
  전달된 나이(EL): ${param.age }<br>
</div>
</body>
</html>












