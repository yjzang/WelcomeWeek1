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

	String value = request.getParameter("data"); // 그냥 sendredirect만 해서 3번쨰 페이지까지 넘겨져 오면 변수값이 넘어 오지 않음 null 찍힘
	System.out.println(value);



%>
</body>
</html>