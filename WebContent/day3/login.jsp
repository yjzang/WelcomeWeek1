<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="./login_check.jsp">
<!-- 아이디와 패스워드를 입력할 수 있도록 UI를 구성하시오 -->

		


		아이디: <Input type="text" name= "id" > 
		비밀번호: <Input type="text" name= "pw" > 
		<Input type="submit" value= "로그인">
		<br><br>
		<%		
		String code = request.getParameter("code");
		if(code==null){
			code="";
		} else {				
			code = code.equals("0")?  "해당하는 회원이 없습니다." : ""; ; 
		out.print("'해당하는 회원이 없습니다.'");
		}
%>		
<br>
<a href="resist_member.jsp">회원 가입</a>
		
</form>
</body>
</html>