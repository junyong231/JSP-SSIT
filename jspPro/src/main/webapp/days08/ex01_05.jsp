<%@page import="days08.FormatUtil"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true" %>


<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- jstl처럼 등록 -->

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
    	EL 객체의 메서드 호출
    		static 메서드 호출
    		
  </xmp>
  <%
  		long price = 223452313;
  %>
  price : <%= price %>
  <br>
  세 자리마다 컴마 ? ( 22,345 )
  <br>
  price : <%= String.format("%,d", price ) %> <br>
  <%
  	String pattern = "##,###";
    DecimalFormat df = new DecimalFormat(pattern);
  %>
  price : <%= df.format(price) %> <br>
  <hr>
  EL 표현 ? <br>
  <%
  	request.setAttribute("price" , price);
  %>
  price(EL) : ${ price }<br>
  <hr>
  <!-- 기억해두면 좋음.. 
  FormatUtil 클래스
  	ㄴ 인스턴스 메서드 number() -> EL 호출..
  	ㄴ static 메서드 staticNumver()-> EL 호출..
  --> 
  
  <%
  	FormatUtil fu = new FormatUtil();
  request.setAttribute("f", fu);
  %>
  price(EL) : ${ f.number(price, "#,##0") }<br>
  price(EL) : ${ FormatUtil.staticNumber(price, "#,##0") }<br>
  <hr>
<!--   
		JSTL 5가지 기능
  		c: 제어문
  		fmt:  
-->
  
  price(JSTL) : <fmt:formatNumber pattern="#,##0" value="${price }"></fmt:formatNumber>
  
  
</body>
</html>







