<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<style type= "text/css">
	input {
		text-align: center;
	
	}

	#result {
		color:red;
	}
</style>

</head>
<body>
<% 
		String result = request.getParameter("result");
		
		String cal="";
		String num1="";
		String num2="";
		if(result==null){
			result="" ;
		} else{
			cal = request.getParameter("cal");
			num1 = request.getParameter("num1");
			num2 = request.getParameter("num2");
		}
	
%>
		
<form action="num_service.jsp" method ="post" >
<!--  두 수를 서버로 보내서 덧셈을 한 후 결과를 클라이언트로 전송하는 코드 작성-->
		
		
		<input type = "text" name = "num1" value= "<%=num1%>" placeholder = "숫자" size="5">
		<input type = "text" name = "cal" value= "<%=cal%>" placeholder = "연산자" size="2">
		<input type = "text" name = "num2" value= "<%=num2%>" placeholder = "숫자" size="5"> = 
		<input type = "text" name = "result" value="<%=result%>" id="result">
					<!-- jsp는 String 형태로 전송만 가능하다. 따라서 String으로 전송한 뒤 데이터를 받는 페이지에서 형변환을 해주어야한다. -->
		<input type = "submit" value = "계산">
		
</form>
</body>
</html>