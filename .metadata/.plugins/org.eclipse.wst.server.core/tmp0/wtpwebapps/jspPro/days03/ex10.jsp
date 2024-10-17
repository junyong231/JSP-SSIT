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
  <%
  	String name = "admin";
  	int age =20;
  %>
    	포워딩 리다이렉트 개념 이해
    	
    	ex10.jsp
    	ex10_forward.jsp
    	ex10_redirect.jsp
    	ex10_finish.jsp
  </xmp>

<%--   <a href="ex10_redirect.jsp?name=<%= name %>&age=<%=age %>" >리다이렉트</a><br>
  <a href="ex10_forward.jsp">포워딩</a><br> --%>

  <a href="ex10_redirect.jsp">리다이렉트</a><br>
  <a href="ex10_forward.jsp">포워딩</a><br>
<script type="text/javascript">


/* 스크립트로 노가다 안해도 링크에 값 달고 가도록 설정 */
$("a").on("click", function() {
	$(this).attr("href" , function(index, oldHref) {
		return `\${oldHref}?name=<%=name%>&age=<%=age%>`
	})
})

</script>

</div>
</body>
</html>









