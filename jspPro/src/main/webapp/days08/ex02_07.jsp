<%@page import="java.text.DecimalFormat"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- fmt 추가.. -->
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
    국제화... fmt 접두어
    	ㄴ 특정 지역에 따라 알맞은 메세지를 출력할 때 사용한다
    	예) 원 / 엔 ... 처럼 자동으로 지역에 맞는 화폐단위 출력...
    		ㄴ 주로 사용: 숫자, 날짜 포맷팅 ( 세자리마다 컴마 이런거 )
    
    fmt:formatNumber
    fmt:formatDate
    
    fmt:parseNumber
    fmt:parseDate
  </xmp>
  
  	<%
  		String strPrice = "1,200.34";
  		
  		double doublePrice= Double.parseDouble(strPrice.replaceAll(",", "") ); 
  	
  	%>
  	double Price = <%= doublePrice %>
<hr>

<fmt:parseNumber value="<%= strPrice %>" pattern="0,000.00" var="doublePrice2" />
double Price = ${ doublePrice2}

<hr>
<%
	long price = 22345;
//					22,345.00 ?
%>
<c:set value="<%=price %>" var="lprice"></c:set>
 long price 는 ${ lprice }<br>
 
 <fmt:formatNumber  value="${lprice }" var="stringPrice" type="number" pattern="##,###.00"/>
 <!-- #은 공간차지 안함. 0은 공간차지. -->
 string price 는 ${stringPrice }



</div>
</body>
</html>













