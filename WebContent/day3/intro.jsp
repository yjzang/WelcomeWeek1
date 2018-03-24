<%@page import="kr.co.bit.day3.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>첫화면</title>
</head>
<body>
<%
		
		MemberVO p1 = (MemberVO)session.getAttribute("member");
		out.print(p1.getName()+" 님 환영합니다!");
		
%>
<br>
<a href="start.jsp">첫 화면으로 이동</a>
</body>
</html>