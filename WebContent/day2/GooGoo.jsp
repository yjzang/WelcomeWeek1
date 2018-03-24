<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--  데이터 처리를 위한 선언들  -->
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>구구단 작성</title>
</head>
<body>
	<%
		int i; 
		int dan=2;

	    for(dan=2;dan<=9; dan++){
	    	
	    
			for(i=1;i<=9;i++){
				
				//out.println(dan+" x "+i+"="+ dan*i+"<br>");   // <br> 이  줄바꿈 역할을 한다. 1. print("<br>"); 2. %내용% <br> %내용% 
				out.print(String.format("%dx%d = %d &nbsp;&nbsp;&nbsp;" ,dan,i,dan*i));
			}
			
			out.println("<br>");	
	    }
	
	%>
	
</body>
</html>