<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%
//모든 페이지에 공통 선언할 변수..
	String contextPath = request.getContextPath();
%> --%>
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
<jsp:include page="/layout/top.jsp" flush="false"></jsp:include>
<div>
  <xmp class="code">
    페이징 모듈화 - jsp:include 액션태그
    			   - include 지시자
    			   		ㄴ 공통적으로 사용하는 변수 선언 ( ex . contextPath )
    			   		
    			   		WEB-INF
    			   			ㄴ inc 폴더 추가
    			   				ㄴ inlcude.jspf
  </xmp>
  
    <table>
        <tr>
        <td><jsp:include page="/days06/layout/left.jsp" flush="false"></jsp:include></td>
        <td>
        회원 관리 Content 부분<br>
        회원 관리 Content 부분<br>
        회원 관리 Content 부분<br>
        회원 관리 Content 부분<br>
        회원 관리 Content 부분<br>
        </td>
        <td><jsp:include page="/days06/layout/right.jsp" flush="false"></jsp:include></td>
        </tr>
  </table>
</div>
<!-- BOTTOM 공통 모듈 -->
<jsp:include page="/layout/bottom.jsp" flush="false">
	<jsp:param value="contextPath" name="cp"/>
</jsp:include>
 <!-- 이제 cp로 쓸 수 있음 -->
</body>
</html>