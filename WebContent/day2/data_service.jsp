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
	String value = request.getParameter("data");
	String user = request.getParameter("user");

	
	
	String id = request.getParameter("id");
	out.print( "고갱님의 아이디는 " + id + " 입니다.");


%>

</body>
</html>