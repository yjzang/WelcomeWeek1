<%@page import="kr.co.bit.day3.MemberList"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.bit.day3.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	request.setCharacterEncoding("UTF-8"); // 한글을 받아올 때 처리해야한다.
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("fullname");
	MemberVO vo = new MemberVO(id,pw,name); // 한사람의 정보관리를 묶어서 처리하기 위해 데이터 class를 import한다.
	session.setAttribute("member",vo);
	response.sendRedirect("intro.jsp");
%>
</body>
</html>