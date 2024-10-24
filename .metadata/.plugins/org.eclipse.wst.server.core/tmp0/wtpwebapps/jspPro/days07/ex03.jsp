<%@page import="com.util.ConnectionProvider"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true" %>

<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
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
      <h1 class="main">
        <a href="#" style="position: absolute; top: 30px">JYP Ent</a>
      </h1>
      <ul>
        <li><a href="#">로그인</a></li>
        <li><a href="#">회원가입</a></li>
      </ul>
    </header>
    <div>
      <xmp class="code">
         ex03.jsp
         p.417
         [커넥션 풀(Connection pool)]
          ㄱ. tomcat-dbcp.jar 파일 lib에 복붙
          
         com.util.ConnectionProvider.java 추가.. 
         
       </xmp>
       
       <%
         Context initContext = new InitialContext();
         Context envContext  = (Context)initContext.lookup("java:/comp/env");
         DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
         Connection conn = ds.getConnection();
         //etc.
         %>
         
         conn = <%= conn %>
         
         <%
            conn.close(); // 커넥션 풀에 반환하겠다
         %>
         
         <%
         	Connection conn2 = ConnectionProvider.getConnection();
         %>
         conn2 = <%= conn2 %>
         
         <% 
         	conn2.close();
         
         %>
       
       
       
    </div>
    
  </body>
</html>
