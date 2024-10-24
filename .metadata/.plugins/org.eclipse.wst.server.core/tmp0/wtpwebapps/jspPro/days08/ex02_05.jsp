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
     ex02_05.jsp
     
     [c:forEach 문]
     	begin
     	end
     	step
     	var
     	items
     	varStatus
      	와 같은 속성들 있음
      	
      	
  </xmp>
  
<%--   <c:forEach begin="5" end="13" step="2" var="i" varStatus="vstatus">
  
  	${ i } / ${ vstatus.index } / ${ vstatus.count } / ${ vstatus.first } / ${ vstatus.last }<br>
  	<!--5 7 9 11 13  -->
  </c:forEach> --%>
  
  <!-- 문제  -->
  <!-- 1+2+3+...+10=55 -->
  <c:set value="0" var="sum"></c:set>
  <c:forEach begin="1" end="10" step="1" var="i" varStatus="vstatus">
  	<c:set value="${ sum +i }" var="sum"></c:set>
<%--   	${ i += (vstatus.last? "" : "+") }  이거 안쓰면 아래처럼..--%>
  	
  	<c:if test="${i eq 10 }">${i }</c:if>
  	<c:if test="${i ne 10 }">${i }+</c:if>
	
  </c:forEach>
 = ${ sum }
</div>
</body>
</html>











