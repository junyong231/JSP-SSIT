<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
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

	1. 가운데 커서, 포커스
	2. 숫자 유효성 검사
	3. 엔터치면 [스크립트릿- 서버에서 처리] 1+2+3 = 6 이거 뽑아내기
	4. 다시 입력창 선택됨 (셀렉트)


	어떻게 서버로 가는가
	어디로 (어떤 페이지) 가는가

	풀이1 : form 태그로 감싸고 자기자신한테 서브밋.
     
  </xmp>

<form action="ex03_05.jsp" method="get" id="">
정수 : <input type="text" id="num" name="num" autofocus="autofocus"><br>
<p id="demo"></p>
</form>

</div>

<script><%-- 
$("#num").css("text-align","center");

$("#num").on("keydown", function(e) {
	if ( !(e.which >= 48 && e.which <= 57
	        || e.which == 8
	        || e.which == 13
	        || e.which == 229
	    )) {
	      alert("숫자만 입력하세요")
	      return false; // 이벤트 취소
	    }
	
	if (e.which == 13) {

		
		<%
		String num = request; 
		//int num2 = Integer.parseInt(num); 
		%>
		
		let num2 = <%=num%>;
		alert(num2);
	}
	
}); --%>
</script>
</body>
</html>













