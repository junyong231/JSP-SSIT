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
     관리자 혹은 일반 유저로 로그인 성공 시,
     리다이렉트로 도착하는 jsp 파일 
     리다이렉트: ex08.jsp 는 ex08_ok로 가려고 서버 갔는데 서버에서 main가라고 다시 보냄 (주소창 main) (요청 2번)
     포워딩 :  ex08.jsp 는 ex08_ok로 가려고 서버 감. 거기서 main을 응답해줌( main 가는거 아니고)
      (주소창 08_ok) (요청 1번)
     
     ex08_main.jsp
  </xmp>
</div>
</body>
</html>