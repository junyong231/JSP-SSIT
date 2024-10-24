<%@page import="java.net.URLDecoder"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
     days07 ex01_03
     모든 쿠키 정보 얻어와서 체크박스로 만들어서 출력..
     
     JSESSIONID : 처음 요청시 배정되는 세션..
     					ex01_03만을 처음 실행하게되면 JSESSIONID 안보임 
     					=> 배정은 받았고 다시 요청하면 보임 (새로고침)
     
     라운드 트립 (기본 20분) : 세션 만들고 20분간 요청-응답 안하면 세션 없어짐
     ( 교육원 - 무단결석 비유.. )
     
  </xmp>
  
  <form action="">
  <%
  	Cookie[] cookieArr = request.getCookies();
  if( cookieArr != null) {
  	for( Cookie c : cookieArr ) {
  		String cname = c.getName();
  		// 주의 - 디코딩..
  		String cvalue = URLDecoder.decode(c.getValue(), "UTF-8");

  	%>	
  	
  	<input type="checkbox" name="ckbCookie" value="<%= cname%>">
  	<%= cname %> - <%= cvalue %><br>
  <%		
  		}//for
	}//if
  %>
  
  </form>
  <br>
  <a href="ex01.jsp">쿠키 HOME</a><br>
  <a href="ex01_02.jsp">쿠키 생성</a><br>
  <br><hr><br>
  수정 삭제할 쿠키를 체크한 후에 수정, 삭제하기<br>
  <a href="ex01_04.jsp">쿠키 삭제</a> <br>
  <a href="ex01_05.jsp">쿠키 수정</a>
</div>

<script type="text/javascript">
/* (1)
	$("div a").eq(2).on("click" , function(e){
		e.preventDefault();
		//alert("test")
		
		$("form").attr("action" , "ex01_04.jsp").submit();
		
	}); */

// (2)
	$("div a").eq(2).on("click" , function(e){
		e.preventDefault();
		let url = $(this).attr("href"); // ex01_04	
		let queryString= $("form").serialize();  // 직렬화 : 쿼리스트링 뽑아주는 메서드
		location.href=`\${ url }?\${ queryString }`;
		
	});
	

</script>


<script type="text/javascript">
//수정..
$("div a").eq(3).on("click" , function(e){
	e.preventDefault();
	let url = $(this).attr("href"); // ex01_04	
	let queryString= $("form").serialize();  // 직렬화 : 쿼리스트링 뽑아주는 메서드
	location.href=`\${ url }?\${ queryString }`;
	
});


</script>
</body>
</html>



