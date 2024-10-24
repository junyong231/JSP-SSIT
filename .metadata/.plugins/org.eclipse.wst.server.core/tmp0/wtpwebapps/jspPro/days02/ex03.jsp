<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- @가 있다면 지시자 -->
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
    1. 서블릿(servelt)
      - 자바 웹 기술
      - 로직 처리
      - MVC 패턴 개발 () : [C] 가 서블릿임
      
    2. 서블릿 구현 방법(과정)
      (1) [서블릿 규약]을 따르는 자바 클래스 선언
            ㄱ. 접근지정자 public
            ㄴ. javax.servlet.http.HttpServlet 클래스 상속
            ㄷ. serivce(), get(), post() 메서드를 오버라이딩.
      
      (2) 컴파일 -> ???.class (클래스파일)
      (3) /WEB-INF/classes 폴더 안에 반드시 클래스 파일 넣어둔다.
      
      (4) 요청 URL 정하고          URL 매핑
            ㄱ. web.xml 서블릿 등록/URL 매핑
            ㄴ. 서블릿 3.0 ~  @WebServlet 어노테이션으로 처리.
            
      (5) 브라우저 ->   요청 URL  ->    서블릿  -> 응답.1. 서블릿(servelt)
      - 자바 웹 기술
      - 로직 처리
      - MVC 패턴 개발 ()
      
    2. 서블릿 구현 방법(과정)
      (1) [서블릿 규약]을 따르는 자바 클래스 선언
            ㄱ. 접근지정자 public
            ㄴ. javax.servlet.http.HttpServlet 클래스 상속
            ㄷ. serivce(), get(), post() 메서드를 오버라이딩.
      
      (2) 컴파일 -> ???.class (클래스파일)
      (3) /WEB-INF/classes 폴더 안에 반드시 클래스 파일 넣어둔다.
      
      (4) 요청 URL 정하고          URL 매핑
            ㄱ. web.xml 서블릿 등록/URL 매핑
            ㄴ. 서블릿 3.0 ~  @WebServlet 어노테이션으로 처리.
            
      (5) 브라우저 ->   요청 URL  ->    서블릿  -> 응답.
  </xmp>
  <a href="/jspPro/hello?name=우기명">/hello</a><br>
  <a href="/jspPro/hello1?name=우기명">/hello1</a>
  
  <hr>
  <a href="sample.htm">sample.htm</a><br />
  <a href="/jspPro/days02/ex01.htm">/jspPro/days02/ex01.htm</a><br />
  <a href="/jspPro/ex01.htm">/jspPro/ex01.htm</a><br /><br />

  <a href="/jspPro/days02/now.do">/jspPro/days02/now.do</a><br />
  <a href="/days02/now.oo">/days02/now.do</a><br /><br />
  
<!-- <url-pattern>/test/*</url-pattern> -->
  <a href="/jspPro/test/days02/ex100.html">/jspPro/test/days02/ex100.html</a><br>
  <a href="/test/days02.jsp">/test/days02.jsp</a><br>						<!-- 안됨 -->
  <a href="/test/ex100.asp">/test/ex100.asp</a><br>						<!-- 안됨 -->
  <a href="/jspPro/test/ex100.asp">/jspPro/test/ex100.asp</a><br>
  
  <a href="/jspPro/sample/now.html">/sample/now.html</a><br>
  <!-- <url-pattern>/</url-pattern> -->
  <!-- <url-pattern>/*</url-pattern> -->
  <!-- 차이점? -->
  
  
</div>
</body>
</html>