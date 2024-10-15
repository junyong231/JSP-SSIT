<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//스크립트릿
	//이 안에는 Java 코딩하면 됨.. (변수, 제어문)
	Date now = new Date();
	
	// 2024-10-15 11:10:45 형식으로 출력
	String pattern = "yyyy-MM-dd hh:mm:ss";
	SimpleDateFormat sdf = new SimpleDateFormat(pattern);
	String strNow = sdf.format(now);
	//System.out.printf("> strNow : %s\n",strNow);
	
	
	
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
    
  </xmp>
  <h3>ex01.jsp(동적페이지) - <%= strNow  %></h3>
  <!-- %=  % :  표현식 -->
  <!-- 바뀌는 내용이 없다면(정적) html로 만드는 것이 좋다 -->
  
    <h3>ex01.jsp(동적페이지) - <% out.print(strNow);  %></h3>
    <h3>ex01.jsp(동적페이지) - <span id=now></span></h3>
</div>
<script>
	let now = "<%= strNow %>";
	// 문자열이니까  "" 필요함
	$("#now").html(now);
</script>
</body>
</html>







