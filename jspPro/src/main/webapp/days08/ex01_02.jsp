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
    ex01_02.jsp
  </xmp>
  
  요청 URI : <%= request.getRequestURI() %> <br>
  <!-- /jspPro/days08/ex01_02.jsp -->
  요청 URL : <%= request.getRequestURL() %> <br>
  <!--  http://localhost/jspPro/days08/ex01_02.jsp  -->
  <br><hr><br>
  EL에서 jsp 기본 9객체 사용하고자 한다면 pageContext 기본객체를 사용해서 얻어오면 된다. <br>
  요청 URI (EL) : ${ pageContext.request.requestURI } <br>
  <hr>
  <%
  	String name = "홍길동";
    request.setAttribute("name", name); // 이게 있어야 됨 (EL)
  %>
  
  이름 : <%= name %> <br>
  이름 : <%= request.getAttribute("name") %><br>
  이름 ( EL ) : ${ requestScope.name }<br> 
  이름 ( EL ) : ${ name }<br> 위 코드와 같은 코드
  
  <hr>
  ?age=20 같은 파라미터.. <br>
  나이: <%= request.getParameter("age") %><br>
  		${param.age }
  
</div>
</body>
</html>