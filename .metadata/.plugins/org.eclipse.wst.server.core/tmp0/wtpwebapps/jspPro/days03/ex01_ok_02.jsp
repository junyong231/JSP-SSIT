<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    	ex01_ok_02.jsp
    	
    	ex01_02.jsp?empno=1111&empno=2222....이런 형식으로 넘어옴
  </xmp>
  <p id="demo">
  	<ul>
	<%-- 1번 풀이   <%
	  	String pempnos= request.getParameter("empnos");
	  	String[] empnoArr = pempnos.split("/");
	  	for( int i = 0 ; i < empnoArr.length ; i ++) {
	  	  %>
	  	  <li><%= empnoArr[i] %></li>
	  <% 	
	  	}
	  %> --%>
	  
      <%
          String[] empnos = request.getParameterValues("empno");
         for(int i =0; i<empnos.length; i++) {
      %>   
         <li><%= empnos[i] %></li>
      <%
            }
      %>
	</ul>

  </p>
</div>
</body>
</html>