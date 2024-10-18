<%@page import="java.util.Iterator"%>
<%@page import="org.doit.domain.DeptVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
  	String contextPath = request.getContextPath();
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
    ex01_dept
    
    ArrayList가 ScottDept라는 서블릿에 있어서 이터레이터 동작 X
    JSP에서 사용하려면 어떻게 전달해주는가 ?
    
    1) 세션에 저장 ( 고객에게 할당되는 공간 - 사물함.. )
    2) 리퀘스트 객체 ?
    
    
    //days02.ex01_emp.jsp 사용..
    1) ex01_dept.jsp select 태그에서 부서를 선택
    2) /scott/emp -> ScottEmp.java 서블릿 요청 GET 방식
    						doGet() 함수 구현 {
    						// 파라미터로 넘어오는 부서번호 (deptno)
    						// 해당 부서원들을 list 안으로..
    						// ex01_emp.jsp 로 포워딩
    							
    					}
    3) ex01_emp.jsp에다가 사원정보를 출력.. 코딩.
    
  </xmp>
  
  <select id="deptno" name="deptno">
  	
  	<option>부서 선택 </option>
  	<!-- 서버에서 동적으로 옵션 만들기  -->
	<%-- <c:forEach items="<%= list %>"> --%>
	<c:forEach items="${ list }" var="vo">
  		<option value="${ vo.deptno }">${ vo.dname }</option>	
	</c:forEach>

  </select>
  <script type="text/javascript">

	  
	  $("#deptno")
	  		.wrap("<form></form>")
	  		.on("change" , function(e) {
	  			$(this)
	  				.parent() 
	  					.attr({
	  						method:"get",
	  						action:"<%=contextPath%>/scott/emp"
	  					})
	  					.submit();
	  		}) 

	  
<%-- 	// deptno 요소에 처음에만 form을 감쌉니다.
	  $("#deptno").wrap("<form></form>");

	  // change 이벤트를 deptno 요소에 바인딩합니다.
	  $("#deptno").on("change", function(e) {
	      $(this).parent().attr({
	          method: "get",
	          action: "<%=contextPath%>/scott/emp"
	      }).submit();
	  });
	   --%>
	  
	  /*
	  //alert("event")
	  deptno = $(this).val();
	  location.href= `/ex01_emp.jsp?deptno=\${deptno}`
	  
  })
  */
  </script>
  
  
</div>
</body>
</html>