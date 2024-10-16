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
    
  </xmp>
  
    <form action="prac_ok.jsp">
  책 제목 : <input type="text" id="title" name="title" autofocus> <br>
  저자 : <input type="text" id="author" name="author"> <br> <!-- name 있어야됨 -->
  나이 : <input type="text" id="age" name="age"> <br>
  <button type="button">submit</button>
<!-- <input type="submit">  --> 
  <input type="reset">
  
  </form>
</div>
<script type="text/javascript">

$("button").on("click", function() {
	let title = $("#title").val();
	let author = $("#author").val();
	let age = $("#age").val();
	
	if (!title.trim() || !author.trim()) {
		alert("제목과 저자는 필수 입력사항입니다.")
		return;
	}
	
	$("form").submit();
	
})

</script>
</body>
</html>












