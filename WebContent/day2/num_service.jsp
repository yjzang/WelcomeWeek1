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
		double num1 = Double.parseDouble(request.getParameter("num1"));
		double num2 = Double.parseDouble(request.getParameter("num2"));
		String cal = request.getParameter("cal");
		double result=0;
		
		if (cal.contains("+")){
		//	out.print(num1+ " + "+ num2 +" = " + (num1 + num2));
			result = num1 + num2;
		}
			
		else if (cal.contains("-")){
		//	out.print(num1+ " - "+ num2 +" = " + (num1 - num2));
			result = num1 - num2;
		}
		else if (cal.contains("*")){
		//	out.print(num1+ " x "+ num2 +" = " + (num1 * num2));
			result = num1 * num2;
		}
		else if (cal.contains("/")){
		//	out.print(num1+ " / "+ num2 +" = " + (num1 / num2));
			result = num1 / num2;
		}
		
		
		 String r2 = String.format("%.2f",result); // %.2f --> 소수 둘째자리까지 표현.  String.format() 은 스트링형태로 포맷.
		 response.sendRedirect("num.jsp?result="+r2+"&num1="+num1+"&num2="+num2+"&cal="+cal); 
		 						// "~~" + r2 + ~~~ 꼴로쓰면 자동 스트링 변환됨
		//out.print(result);
		
		
	
	%>	
</body>
</html>