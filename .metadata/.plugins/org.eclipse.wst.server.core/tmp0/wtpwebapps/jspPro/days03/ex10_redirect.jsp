<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% 
	
	String name = request.getParameter("name");
	String age = request.getParameter("age");

%>


<%
	String location = "ex10_finish.jsp";
%>
<%
//현재로서는 이렇게 보낼 수밖에 없음.
	location +="?name=" + name;
	location +="&age=" + age;
%>
<%
	
	response.sendRedirect(location);
// 리다이렉트 값 안넘어오는 이유? 그리고 넘어오게 하는 법??
// null이 왔으니 진짜 아무것도 안달고옴  name= 이것도 안달고 ㅇㅇ

%>