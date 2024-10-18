<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%

	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String addr = request.getParameter("addr");
	String tel = request.getParameter("tel");

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
  
  		- ex03_03.jsp
  
  				[ 상 태 관 리 ]
    
    	ex03.jsp 
    	-이름
    	-나이
    	입력받아서
    	[Next] 버튼 누르면
    	
    	ex03_02.jsp 요청
    	-주소
    	-연락처 
    	입력받고
    	[Next] 누르면
    	
    	ex03_03.jsp 에서 
    	이름 나이 주소 연락처
    	출력하는 작업 ?
    	
  </xmp>
  
  <div  style=" border: 5px solid tan; border-radius: 10px; display: inline-block; padding: 20px"  >
	>>	당신은.. 	<< <br><br>
	> 이름 : <%= name %><br>
	> 나이 : <%= age %><br>
	> 주소 : <%= addr %><br>
	> 연락처 : <%= tel %><br>
  </div>
  
</div>



</body>
</html>










