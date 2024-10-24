<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- <%
//모든 페이지에 공통 선언할 변수..
	String contextPath = request.getContextPath();
%> --%>
<%@ include file="/WEB-INF/inc/include.jspf" %>


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
<!-- TOP 공통 모듈 -->
<%-- <jsp:include page="/layout/top.jsp" flush="false"></jsp:include> --%>
<%@ include file="/layout/top.jsp" %>
<div>
  <xmp class="code">
    페이징 모듈화 - jsp:include 액션태그
    	: 서블릿써서 받아온 결과를 호출 ( 템플릿 페이지 서블릿 총 2번 호출)
    	*여기선 include 지시자 사용해본다.	
    	: 해당 코드가 이 안에 복붙되는 처리임 (템플릿 페이지 서블릿 1번만 호출)
  </xmp>
  
    <table>
        <tr>
        <td>
        <%-- <jsp:include page="/days06/layout/left.jsp" flush="false"></jsp:include> --%>
        <%@ include file="/days06/layout/left.jsp" %>
        </td>
        <td>
        회원 관리 Content 부분<br>
        회원 관리 Content 부분<br>
        회원 관리 Content 부분<br>
        회원 관리 Content 부분<br>
        회원 관리 Content 부분<br>
        </td>
        <td>
        <%-- <jsp:include page="/days06/layout/right.jsp" flush="false"></jsp:include> --%>
        <%@ include file="/days06/layout/right.jsp" %>
        </td>
        </tr>
  </table>
</div>
<!-- BOTTOM 공통 모듈 -->
<%-- <jsp:include page="/layout/bottom.jsp" flush="false"></jsp:include> --%>
<%@ include file="/layout/bottom.jsp" %>
</body>
</html>