<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Formatter"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
     fmt:parseDate
     fmt:formatDate
  </xmp>
  
  <%
  	String strNow = "2024년 10월 24일";
  	// String -> Date 형식 변환 ?
//1.
/*   	strNow = strNow.replace("년", "");
  	strNow = strNow.replace("월", "");
  	strNow = strNow.replace("일", ""); */
  	
/* 	String pattern = "yyyy년 MM월 dd일";
  			
  	SimpleDateFormat sd = new SimpleDateFormat (pattern);
  	Date dtNow = sd.parse(strNow);  */
  	
  	//2. 
/*   	String pattern = "yyyy년 MM월 dd일";
  	DateTimeFormatter dtf = DateTimeFormatter.ofPattern(pattern);
  	LocalDate now= LocalDate.parse(strNow, dtf); */
  %>
  
  <fmt:parseDate value="<%=strNow %>" var="now" pattern="yyyy년 MM월 dd일"/>
  <%-- Date : ${now } --%>
  now = ${now }<br>
  
  <hr>
  <li> <fmt:formatDate value="${now }"/> </li>
  <li> <fmt:formatDate value="${now }" type="Date"/> </li>
  <li> <fmt:formatDate value="${now }" type="Time"/> </li>
  <li> <fmt:formatDate value="${now }" type="Both"/> </li>
  
  <hr>
    <li> <fmt:formatDate value="${now }" pattern="yyyy년 MM. dd a h:mm" /> </li>
  
  
  
  
  <%-- Date : <%= %> --%>
</div>
</body>

</html>









