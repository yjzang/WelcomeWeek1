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
		MemberVO p1 = (MemberVO)session.getAttribute("member");
		String id = request.getParameter("id"); 
		String pw = request.getParameter("pw"); 
		
		if(id.equals(p1.getId())&&pw.equals(p1.getPw())) {
			out.print("'반갑습니다.'");
			session.setAttribute("memeber",id);  // session 에서는 setAttribute가 키&밸류 지정하는 메소드. HashMap 에서 put 역할과 동일
			response.sendRedirect("../day2/poll.jsp");
		}
		else {
			
			response.sendRedirect("./login.jsp?code=0");
			
		}
		

%>
</body>
</html>