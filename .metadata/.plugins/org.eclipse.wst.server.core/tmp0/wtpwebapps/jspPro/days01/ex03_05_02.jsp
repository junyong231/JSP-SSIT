<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
// ex03_05.jsp 요청 
// request.getParameter("num") == null
// null을 형변환하라? 오류 발생 500

		

	String get = request.getParameter("num");


	int num=0;
	if( get != null ) {
		num = Integer.parseInt( get );
		
	}

	

%>

<%
	
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

	1. 가운데 커서, 포커스
	2. 숫자 유효성 검사
	3. 엔터치면 [스크립트릿- 서버에서 처리] 1+2+3 = 6 이거 뽑아내기
	4. 다시 입력창 선택됨 (셀렉트)


	쌤 풀이.. (form 태그 안쓰고)
     
     
     500번 오류 : 자바코딩 오류
     400번대 오류: 페이지 못찾음
  </xmp>


정수 : <input type="text" id="num" name="num" autofocus="autofocus"
	value="<%if(num==0) {%><%="" %><%}%><%else {%><%=num%><%}%>"><br>
<p id="demo">


<%

	if( get != null) {
		
	int sum = 0;
	for(int i = 1; i<=num ; i++ ){
		sum += i; 
		%><%=i%>+<%
	}
	%>=<%= sum %>
	<%
	}
	
%>
	
</p>


</div>

<script>
$("#num")
      .css("text-align","center")
      .on({
         "keydown":function (e){
            if ( !(e.which >= 48 && e.which <= 57
                     || e.which == 8
                     || e.which == 13
                     || e.which == 229
                 )){
               alert("숫자만 입력하세요.");
               e.preventDefault();
            } // if
         },
         "keyup":function (event){

           if( $("#num").val().length > 0  && event.which == 13){
			// js BOM 브라우저 객체..
			// location 객체
			// href 속성
			let numValue = $("#num").val();
			location.href = `ex03_05_02.jsp?num=\${numValue}`;
			
			

           } // if
         }//키업
      });
</script>
</body>
</html>












